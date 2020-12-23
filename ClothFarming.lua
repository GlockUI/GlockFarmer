local clothCheckbox;

function Glockfarmer:PrintCloth(playerCloth, itemFrame)
    local clothGroup = AceGUI:Create("InlineGroup");
    clothGroup:SetTitle("Cloth");
    clothGroup:SetWidth(400);
    clothGroup:SetLayout("Flow");

    if (Glockfarmer:CanShowShroudedCloth()) then
        local need =
        Glockfarmer:GetShroudedClothNeeded() -
            (playerCloth.ShroudedCloth.Bag + playerCloth.ShroudedCloth.ReagentBank + playerCloth.ShroudedCloth.Bank);
        local shroudedClothGroup =
            Glockfarmer:CreateRow(
            "Shrouded Cloth",
            playerCloth.ShroudedCloth.Bag,
            playerCloth.ShroudedCloth.ReagentBank,
            playerCloth.ShroudedCloth.Bank,
            need
        );
        clothGroup:AddChild(shroudedClothGroup);
    end

    if (Glockfarmer:CanShowLightlessSilk()) then
        local need =
        Glockfarmer:GetLightlessSilkNeeded() -
            (playerCloth.LightlessSilk.Bag + playerCloth.LightlessSilk.ReagentBank + playerCloth.LightlessSilk.Bank);
        local lightlessClothGroup =
            Glockfarmer:CreateRow(
            "Lightless Silk",
            playerCloth.LightlessSilk.Bag,
            playerCloth.LightlessSilk.ReagentBank,
            playerCloth.LightlessSilk.Bank,
            need
        );
        clothGroup:AddChild(lightlessClothGroup);
    end

    itemFrame:AddChild(clothGroup);
end
function Glockfarmer:PrintClothLine(playerCloth, toolTip)
    toolTip:AddLine("Cloth: ");
    if (Glockfarmer:CanShowShroudedCloth()) then
        local need =
        Glockfarmer:GetShroudedClothNeeded() -
            (playerCloth.ShroudedCloth.Bag + playerCloth.ShroudedCloth.ReagentBank + playerCloth.ShroudedCloth.Bank);
        Glockfarmer:CreateLine(
            "Shrouded Cloth",
            playerCloth.ShroudedCloth.Bag,
            playerCloth.ShroudedCloth.ReagentBank,
            playerCloth.ShroudedCloth.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowLightlessSilk()) then
        local need =
        Glockfarmer:GetLightlessSilkNeeded() -
            (playerCloth.LightlessSilk.Bag + playerCloth.LightlessSilk.ReagentBank + playerCloth.LightlessSilk.Bank);
        Glockfarmer:CreateLine(
            "Lightless Silk",
            playerCloth.LightlessSilk.Bag,
            playerCloth.LightlessSilk.ReagentBank,
            playerCloth.LightlessSilk.Bank,
            need,
            toolTip
        );
    end
end
function Glockfarmer:GetClothCheckbox()
    if not clothCheckbox then
        clothCheckbox = AceGUI:Create("CheckBox");
        clothCheckbox:SetType("checkbox");
        clothCheckbox:SetLabel("Show Cloth");
        clothCheckbox:SetValue(self.db.profile.ShowCloth);
        clothCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowCloth = clothCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        )
        return clothCheckbox;
    else        
        return clothCheckbox;
    end
end
function Glockfarmer:ReleaseClothCheckbox()
    clothCheckbox = nil;
end
function Glockfarmer:UpdateClothCheckbox()
    clothCheckbox:SetValue(self.db.profile.ShowCloth);
end
function Glockfarmer:ToggleShowCloth(info, val)
    self.db.profile.ShowCloth = val;
    if clothCheckbox then
        Glockfarmer:UpdateClothCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowCloth(info)
    return self.db.profile.ShowCloth;
end
function Glockfarmer:ToggleShowLightlessSilk(info, val)
    self.db.profile.Cloth.LightlessSilk.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLightlessSilk(info)
    return self.db.profile.Cloth.LightlessSilk.Show;
end
function Glockfarmer:SetLightlessSilkNeeded(info, val)
    self.db.profile.Cloth.LightlessSilk.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLightlessSilkNeeded(info)
    return self.db.profile.Cloth.LightlessSilk.Need;
end
function Glockfarmer:ToggleShowShroudedCloth(info, val)
    self.db.profile.Cloth.ShroudedCloth.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowShroudedCloth(info)
    return self.db.profile.Cloth.ShroudedCloth.Show;
end
function Glockfarmer:SetShroudedClothNeeded(info, val)
    self.db.profile.Cloth.ShroudedCloth.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetShroudedClothNeeded(info)
    return self.db.profile.Cloth.ShroudedCloth.Need;
end