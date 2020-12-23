local leatherCheckbox;

function Glockfarmer:PrintLeather(playerLeather, itemFrame)
    local leatherGroup = AceGUI:Create("InlineGroup")
    leatherGroup:SetTitle("Leather")
    leatherGroup:SetWidth(400)
    leatherGroup:SetLayout("Flow")

    if (Glockfarmer:CanShowDesolate()) then
        local need =
            Glockfarmer:GetDesolateNeeded() -
            (playerLeather.DesolateLeather.Bag + playerLeather.DesolateLeather.ReagentBank +
                playerLeather.DesolateLeather.Bank)
        local desolateGroup =
            Glockfarmer:CreateRow(
            "Desolate Leather",
            playerLeather.DesolateLeather.Bag,
            playerLeather.DesolateLeather.ReagentBank,
            playerLeather.DesolateLeather.Bank,
            need
        )
        leatherGroup:AddChild(desolateGroup)
    end

    if (Glockfarmer:CanShowPallidBone()) then
        local need =
            Glockfarmer:GetPallidBoneNeeded() -
            (playerLeather.PallidBone.Bag + playerLeather.PallidBone.ReagentBank + playerLeather.PallidBone.Bank)
        local pallidBoneGroup =
            Glockfarmer:CreateRow(
            "Pallid Bone",
            playerLeather.PallidBone.Bag,
            playerLeather.PallidBone.ReagentBank,
            playerLeather.PallidBone.Bank,
            need
        )
        leatherGroup:AddChild(pallidBoneGroup)
    end

    if (Glockfarmer:CanShowCallous()) then
        local need =
            Glockfarmer:GetCallousNeeded() -
            (playerLeather.CallousHide.Bag + playerLeather.CallousHide.ReagentBank + playerLeather.CallousHide.Bank)
        local callousHideGroup =
            Glockfarmer:CreateRow(
            "Callous Hide",
            playerLeather.CallousHide.Bag,
            playerLeather.CallousHide.ReagentBank,
            playerLeather.CallousHide.Bank,
            need
        )
        leatherGroup:AddChild(callousHideGroup)
    end

    itemFrame:AddChild(leatherGroup)
end
function Glockfarmer:GetLeatherCheckbox()
    if not leatherCheckbox then
        leatherCheckbox = AceGUI:Create("CheckBox");
        leatherCheckbox:SetType("checkbox");
        leatherCheckbox:SetLabel("Show Leather");
        leatherCheckbox:SetValue(self.db.profile.ShowLeather);
        leatherCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowLeather = leatherCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        );
        return leatherCheckbox;
    else        
        return leatherCheckbox;
    end
end
function Glockfarmer:ReleaseLeatherCheckbox()
    leatherCheckbox = nil;
end
function Glockfarmer:UpdateLeatherCheckbox()
    leatherCheckbox:SetValue(self.db.profile.ShowLeather);
end
function Glockfarmer:ToggleShowLeather(info, val)
    self.db.profile.ShowLeather = val;
    if leatherCheckbox then
        Glockfarmer:UpdateLeatherCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLeather(info)
    return self.db.profile.ShowLeather;
end
function Glockfarmer:ToggleShowDesolate(info, val)
    self.db.profile.Leather.Desolate.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowDesolate(info)
    return self.db.profile.Leather.Desolate.Show;
end
function Glockfarmer:SetDesolateNeeded(info, val)
    self.db.profile.Leather.Desolate.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetDesolateNeeded(info)
    return self.db.profile.Leather.Desolate.Need;
end
function Glockfarmer:ToggleShowPallidBone(info, val)
    self.db.profile.Leather.PallidBone.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPallidBone(info)
    return self.db.profile.Leather.PallidBone.Show;
end
function Glockfarmer:SetPallidBoneNeeded(info, val)
    self.db.profile.Leather.PallidBone.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPallidBoneNeeded(info)
    return self.db.profile.Leather.PallidBone.Need;
end
function Glockfarmer:ToggleShowCallous(info, val)
    self.db.profile.Leather.Callous.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowCallous(info)
    return self.db.profile.Leather.Callous.Show;
end
function Glockfarmer:SetCallousNeeded(info, val)
    self.db.profile.Leather.Callous.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetCallousNeeded(info)
    return self.db.profile.Leather.Callous.Need;
end