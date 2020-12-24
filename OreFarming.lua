local L = LibStub("AceLocale-3.0"):GetLocale("GlockFarmer");
local oreCheckbox;

function Glockfarmer:PrintOre(playerOre, itemFrame)
    local oreGroup = AceGUI:Create("InlineGroup");
    oreGroup:SetTitle("Ore");
    oreGroup:SetWidth(400);
    oreGroup:SetLayout("Flow");

    if (Glockfarmer:CanShowLaestrite()) then
        local need =
        Glockfarmer:GetLaestriteNeeded() -
            (playerOre.LaestriteOre.Bag + playerOre.LaestriteOre.ReagentBank + playerOre.LaestriteOre.Bank);
        local laestriteGroup =
            Glockfarmer:CreateRow(
                L["Laestrite"],
                playerOre.LaestriteOre.Bag,
                playerOre.LaestriteOre.ReagentBank,
                playerOre.LaestriteOre.Bank,
                need
            );
        oreGroup:AddChild(laestriteGroup);
    end

    if (Glockfarmer:CanShowElethium()) then
        local need =
        Glockfarmer:GetElethiumNeeded() -
            (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        local elethiumGroup =
            Glockfarmer:CreateRow(
                L["Elethium"],
                playerOre.ElethiumOre.Bag,
                playerOre.ElethiumOre.ReagentBank,
                playerOre.ElethiumOre.Bank,
                need
            );
        oreGroup:AddChild(elethiumGroup);
    end

    if (Glockfarmer:CanShowSolenium()) then
        local need =
        Glockfarmer:GetSoleniumNeeded() -
            (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        local soleniumGroup =
            Glockfarmer:CreateRow(
                L["Solenium"],
                playerOre.SoleniumOre.Bag,
                playerOre.SoleniumOre.ReagentBank,
                playerOre.ElethiumOre.Bank,
                need
            );
        oreGroup:AddChild(soleniumGroup);
    end

    if (Glockfarmer:CanShowOxxein()) then
        local need =
        Glockfarmer:GetOxxeinNeeded() -
            (playerOre.OxxeinOre.Bag + playerOre.OxxeinOre.ReagentBank + playerOre.OxxeinOre.Bank);
        local oxxeinGroup =
            Glockfarmer:CreateRow(
                L["Oxxein"],
                playerOre.OxxeinOre.Bag,
                playerOre.OxxeinOre.ReagentBank,
                playerOre.OxxeinOre.Bank,
                need
            );
        oreGroup:AddChild(oxxeinGroup);
    end

    if (Glockfarmer:CanShowPhaedrum()) then
        local need =
        Glockfarmer:GetPhaedrumNeeded() -
            (playerOre.PhaedrumOre.Bag + playerOre.PhaedrumOre.ReagentBank + playerOre.PhaedrumOre.Bank);
        local phaedrumGroup =
            Glockfarmer:CreateRow(
                L["Phaedrum"],
                playerOre.PhaedrumOre.Bag,
                playerOre.PhaedrumOre.ReagentBank,
                playerOre.PhaedrumOre.Bank,
                need
            );
        oreGroup:AddChild(phaedrumGroup);
    end

    if (Glockfarmer:CanShowSinvyr()) then
        local need =
        Glockfarmer:GetSinvyrNeeded() -
            (playerOre.SinvyrOre.Bag + playerOre.SinvyrOre.ReagentBank + playerOre.SinvyrOre.Bank);
        local sinvyrGroup =
            Glockfarmer:CreateRow(
                L["Sinvyr"],
                playerOre.SinvyrOre.Bag,
                playerOre.SinvyrOre.ReagentBank,
                playerOre.SinvyrOre.Bank,
                need
            );
        oreGroup:AddChild(sinvyrGroup);
    end
    itemFrame:AddChild(oreGroup);
end
function Glockfarmer:PrintOreLine(playerOre, toolTip)
    toolTip:AddLine("Ore: ");
    if (Glockfarmer:CanShowLaestrite()) then
        local need =
        Glockfarmer:GetLaestriteNeeded() -
            (playerOre.LaestriteOre.Bag + playerOre.LaestriteOre.ReagentBank + playerOre.LaestriteOre.Bank);
        Glockfarmer:CreateLine(
            L["Laestrite"],
            playerOre.LaestriteOre.Bag,
            playerOre.LaestriteOre.ReagentBank,
            playerOre.LaestriteOre.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowElethium()) then
        local need =
        Glockfarmer:GetElethiumNeeded() -
            (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        Glockfarmer:CreateLine(
            L["Elethium"],
            playerOre.ElethiumOre.Bag,
            playerOre.ElethiumOre.ReagentBank,
            playerOre.ElethiumOre.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowSolenium()) then
        local need =
        Glockfarmer:GetSoleniumNeeded() -
            (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        Glockfarmer:CreateLine(
            L["Solenium"],
            playerOre.SoleniumOre.Bag,
            playerOre.SoleniumOre.ReagentBank,
            playerOre.ElethiumOre.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowOxxein()) then
        local need =
        Glockfarmer:GetOxxeinNeeded() -
            (playerOre.OxxeinOre.Bag + playerOre.OxxeinOre.ReagentBank + playerOre.OxxeinOre.Bank);
        Glockfarmer:CreateLine(
            L["Oxxein"],
            playerOre.OxxeinOre.Bag,
            playerOre.OxxeinOre.ReagentBank,
            playerOre.OxxeinOre.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowPhaedrum()) then
        local need =
        Glockfarmer:GetPhaedrumNeeded() -
            (playerOre.PhaedrumOre.Bag + playerOre.PhaedrumOre.ReagentBank + playerOre.PhaedrumOre.Bank);
        Glockfarmer:CreateLine(
            L["Phaedrum"],
            playerOre.PhaedrumOre.Bag,
            playerOre.PhaedrumOre.ReagentBank,
            playerOre.PhaedrumOre.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowSinvyr()) then
        local need =
        Glockfarmer:GetSinvyrNeeded() -
            (playerOre.SinvyrOre.Bag + playerOre.SinvyrOre.ReagentBank + playerOre.SinvyrOre.Bank);
        Glockfarmer:CreateLine(
            L["Sinvyr"],
            playerOre.SinvyrOre.Bag,
            playerOre.SinvyrOre.ReagentBank,
            playerOre.SinvyrOre.Bank,
            need,
            toolTip
        );
    end
end
function Glockfarmer:GetOreCheckbox()
    if not oreCheckbox then
        oreCheckbox = AceGUI:Create("CheckBox");
        oreCheckbox:SetType("checkbox");
        oreCheckbox:SetLabel(L["ShowsAllOre"]);
        oreCheckbox:SetValue(self.db.profile.ShowOre);
        oreCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowOre = oreCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        );
        return oreCheckbox;
    else        
        return oreCheckbox;
    end
end
function Glockfarmer:ReleaseOreCheckbox()
    oreCheckbox = nil;
end
function Glockfarmer:UpdateOreCheckbox()
    oreCheckbox:SetValue(self.db.profile.ShowOre);
end
function Glockfarmer:ToggleShowOre(info, val)
    self.db.profile.ShowOre = val;
    if oreCheckbox then
        Glockfarmer:UpdateOreCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowOre(info)
    return self.db.profile.ShowOre;
end
function Glockfarmer:ToggleShowLaestrite(info, val)
    self.db.profile.Ore.Laestrite.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLaestrite(info)
    return self.db.profile.Ore.Laestrite.Show;
end
function Glockfarmer:SetLaestriteNeeded(info, val)
    self.db.profile.Ore.Laestrite.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLaestriteNeeded(info)
    return self.db.profile.Ore.Laestrite.Need;
end
function Glockfarmer:ToggleShowElethium(info, val)
    self.db.profile.Ore.Elethium.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowElethium(info)
    return self.db.profile.Ore.Elethium.Show;
end
function Glockfarmer:SetElethiumNeeded(info, val)
    self.db.profile.Ore.Elethium.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetElethiumNeeded(info)
    return self.db.profile.Ore.Elethium.Need;
end
function Glockfarmer:ToggleShowSolenium(info, val)
    self.db.profile.Ore.Solenium.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSolenium(info)
    return self.db.profile.Ore.Solenium.Show;
end
function Glockfarmer:SetSoleniumNeeded(info, val)
    self.db.profile.Ore.Solenium.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSoleniumNeeded(info)
    return self.db.profile.Ore.Solenium.Need;
end
function Glockfarmer:ToggleShowOxxein(info, val)
    self.db.profile.Ore.Oxxein.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowOxxein(info)
    return self.db.profile.Ore.Oxxein.Show;
end
function Glockfarmer:SetOxxeinNeeded(info, val)
    self.db.profile.Ore.Oxxein.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetOxxeinNeeded(info)
    return self.db.profile.Ore.Oxxein.Need;
end
function Glockfarmer:ToggleShowPhaedrum(info, val)
    self.db.profile.Ore.Phaedrum.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPhaedrum(info)
    return self.db.profile.Ore.Phaedrum.Show;
end
function Glockfarmer:SetPhaedrumNeeded(info, val)
    self.db.profile.Ore.Phaedrum.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPhaedrumNeeded(info)
    return self.db.profile.Ore.Phaedrum.Need;
end
function Glockfarmer:ToggleShowSinvyr(info, val)
    self.db.profile.Ore.Sinvyr.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSinvyr(info)
    return self.db.profile.Ore.Sinvyr.Show;
end
function Glockfarmer:SetSinvyrNeeded(info, val)
    self.db.profile.Ore.Sinvyr.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSinvyrNeeded(info)
    return self.db.profile.Ore.Sinvyr.Need;
end