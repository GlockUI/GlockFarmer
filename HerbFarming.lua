local herbCheckbox;

function Glockfarmer:PrintHerbs(playerHerbs, itemFrame)
    local herbsGroup = AceGUI:Create("InlineGroup")
    herbsGroup:SetTitle("Herbs")
    herbsGroup:SetWidth(400)
    herbsGroup:SetLayout("Flow")

    if (Glockfarmer:CanShowDeathblossom()) then
        local need =
        Glockfarmer:GetDeathblossomNeeded() -
            (playerHerbs.DeathBlossom.Bag + playerHerbs.DeathBlossom.ReagentBank + playerHerbs.DeathBlossom.Bank)
        local deathBlossomGroup =
            Glockfarmer:CreateRow(
            "Death Blossom",
            playerHerbs.DeathBlossom.Bag,
            playerHerbs.DeathBlossom.ReagentBank,
            playerHerbs.DeathBlossom.Bank,
            need
        )
        herbsGroup:AddChild(deathBlossomGroup)
    end

    if (Glockfarmer:CanShowNightShade()) then
        local need =
        Glockfarmer:GetNightShadeNeeded() -
            (playerHerbs.NightShade.Bag + playerHerbs.NightShade.ReagentBank + playerHerbs.NightShade.Bank)
        local nightshadeGroup =
            Glockfarmer:CreateRow(
            "Nightshade",
            playerHerbs.NightShade.Bag,
            playerHerbs.NightShade.ReagentBank,
            playerHerbs.NightShade.Bank,
            need
        )
        herbsGroup:AddChild(nightshadeGroup)
    end

    if (Glockfarmer:CanShowRisingGlory()) then
        local need =
        Glockfarmer:GetRisingGloryNeeded() -
            (playerHerbs.RisingGlory.Bag + playerHerbs.RisingGlory.ReagentBank + playerHerbs.RisingGlory.Bank)
        local risingGloryGroup =
            Glockfarmer:CreateRow(
            "Rising Glory",
            playerHerbs.RisingGlory.Bag,
            playerHerbs.RisingGlory.ReagentBank,
            playerHerbs.RisingGlory.Bank,
            need
        )
        herbsGroup:AddChild(risingGloryGroup)
    end

    if (Glockfarmer:CanShowMarrowRoot()) then
        local need =
        Glockfarmer:GetMarrowRootNeeded() -
            (playerHerbs.Marrowroot.Bag + playerHerbs.Marrowroot.ReagentBank + playerHerbs.Marrowroot.Bank)
        local marrowrootGroup =
            Glockfarmer:CreateRow(
            "Marrowroot",
            playerHerbs.Marrowroot.Bag,
            playerHerbs.Marrowroot.ReagentBank,
            playerHerbs.Marrowroot.Bank,
            need
        )
        herbsGroup:AddChild(marrowrootGroup)
    end

    if (Glockfarmer:CanShowWidowbloom()) then
        local need =
        Glockfarmer:GetWidowbloomNeeded() -
            (playerHerbs.Widowbloom.Bag + playerHerbs.Widowbloom.ReagentBank + playerHerbs.Widowbloom.Bank)
        local widowbloomGroup =
            Glockfarmer:CreateRow(
            "Widowbloom",
            playerHerbs.Widowbloom.Bag,
            playerHerbs.Widowbloom.ReagentBank,
            playerHerbs.Widowbloom.Bank,
            need
        )
        herbsGroup:AddChild(widowbloomGroup)
    end

    if (Glockfarmer:CanShowVigilsTorch()) then
        local need =
        Glockfarmer:GetWidowbloomNeeded() -
            (playerHerbs.VigilsTorch.Bag + playerHerbs.VigilsTorch.ReagentBank + playerHerbs.VigilsTorch.Bank)
        local vigilsTorchGroup =
            Glockfarmer:CreateRow(
            "Vigils Torch",
            playerHerbs.VigilsTorch.Bag,
            playerHerbs.VigilsTorch.ReagentBank,
            playerHerbs.VigilsTorch.Bank,
            need
        )
        herbsGroup:AddChild(vigilsTorchGroup)
    end

    itemFrame:AddChild(herbsGroup)
end
function Glockfarmer:PrintHerbsLine(playerHerbs, toolTip)
    toolTip:AddLine("Herbs: ");
    if (Glockfarmer:CanShowDeathblossom()) then
        local need =
        Glockfarmer:GetDeathblossomNeeded() -
            (playerHerbs.DeathBlossom.Bag + playerHerbs.DeathBlossom.ReagentBank + playerHerbs.DeathBlossom.Bank);
        Glockfarmer:CreateLine(
            "Death Blossom",
            playerHerbs.DeathBlossom.Bag,
            playerHerbs.DeathBlossom.ReagentBank,
            playerHerbs.DeathBlossom.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowNightShade()) then
        local need =
        Glockfarmer:GetNightShadeNeeded() -
            (playerHerbs.NightShade.Bag + playerHerbs.NightShade.ReagentBank + playerHerbs.NightShade.Bank);
        Glockfarmer:CreateLine(
            "Nightshade",
            playerHerbs.NightShade.Bag,
            playerHerbs.NightShade.ReagentBank,
            playerHerbs.NightShade.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowRisingGlory()) then
        local need =
        Glockfarmer:GetRisingGloryNeeded() -
            (playerHerbs.RisingGlory.Bag + playerHerbs.RisingGlory.ReagentBank + playerHerbs.RisingGlory.Bank);
        Glockfarmer:CreateLine(
            "Rising Glory",
            playerHerbs.RisingGlory.Bag,
            playerHerbs.RisingGlory.ReagentBank,
            playerHerbs.RisingGlory.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowMarrowRoot()) then
        local need =
        Glockfarmer:GetMarrowRootNeeded() -
            (playerHerbs.Marrowroot.Bag + playerHerbs.Marrowroot.ReagentBank + playerHerbs.Marrowroot.Bank);
        Glockfarmer:CreateLine(
            "Marrowroot",
            playerHerbs.Marrowroot.Bag,
            playerHerbs.Marrowroot.ReagentBank,
            playerHerbs.Marrowroot.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowWidowbloom()) then
        local need =
        Glockfarmer:GetWidowbloomNeeded() -
            (playerHerbs.Widowbloom.Bag + playerHerbs.Widowbloom.ReagentBank + playerHerbs.Widowbloom.Bank);
        Glockfarmer:CreateLine(
            "Widowbloom",
            playerHerbs.Widowbloom.Bag,
            playerHerbs.Widowbloom.ReagentBank,
            playerHerbs.Widowbloom.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowVigilsTorch()) then
        local need =
        Glockfarmer:GetWidowbloomNeeded() -
            (playerHerbs.VigilsTorch.Bag + playerHerbs.VigilsTorch.ReagentBank + playerHerbs.VigilsTorch.Bank);
        Glockfarmer:CreateLine(
            "Vigils Torch",
            playerHerbs.VigilsTorch.Bag,
            playerHerbs.VigilsTorch.ReagentBank,
            playerHerbs.VigilsTorch.Bank,
            need,
            toolTip
        );
    end
end
function Glockfarmer:GetHerbCheckbox()
    if not herbCheckbox then
        herbCheckbox = AceGUI:Create("CheckBox");
        herbCheckbox:SetType("checkbox");
        herbCheckbox:SetLabel("Show Herbs");
        herbCheckbox:SetValue(self.db.profile.ShowHerbalism);
        herbCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowHerbalism = herbCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        )
        return herbCheckbox;
    else        
        return herbCheckbox;
    end
end
function Glockfarmer:ReleaseHerbCheckbox()
    herbCheckbox = nil;
end
function Glockfarmer:UpdateHerbCheckbox()
    herbCheckbox:SetValue(self.db.profile.ShowHerbalism);
end
function Glockfarmer:ToggleShowHerbs(info, val)
    self.db.profile.ShowHerbalism = val;   
    if herbCheckbox then
        Glockfarmer:UpdateHerbCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowHerbs(info)
    return self.db.profile.ShowHerbalism;
end
function Glockfarmer:ToggleShowDeathblossom(info, val)
    self.db.profile.Herbs.DeathBlossom.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowDeathblossom(info)
    return self.db.profile.Herbs.DeathBlossom.Show;
end
function Glockfarmer:SetDeathblossomNeeded(info, val)
    self.db.profile.Herbs.DeathBlossom.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetDeathblossomNeeded(info)
    return self.db.profile.Herbs.DeathBlossom.Need;
end
function Glockfarmer:ToggleShowNightShade(info, val)
    self.db.profile.Herbs.Nightshade.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowNightShade(info)
    return self.db.profile.Herbs.Nightshade.Show;
end
function Glockfarmer:SetNightShadeNeeded(info, val)
    self.db.profile.Herbs.Nightshade.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetNightShadeNeeded(info)
    return self.db.profile.Herbs.Nightshade.Need;
end
function Glockfarmer:ToggleShowRisingGlory(info, val)
    self.db.profile.Herbs.RisingGlory.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowRisingGlory(info)
    return self.db.profile.Herbs.RisingGlory.Show;
end
function Glockfarmer:SetRisingGloryNeeded(info, val)
    self.db.profile.Herbs.RisingGlory.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetRisingGloryNeeded(info)
    return self.db.profile.Herbs.RisingGlory.Need;
end
function Glockfarmer:ToggleShowMarrowRoot(info, val)
    self.db.profile.Herbs.Marrowroot.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowMarrowRoot(info)
    return self.db.profile.Herbs.Marrowroot.Show;
end
function Glockfarmer:SetMarrowRootNeeded(info, val)
    self.db.profile.Herbs.Marrowroot.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetMarrowRootNeeded(info)
    return self.db.profile.Herbs.Marrowroot.Need;
end
function Glockfarmer:ToggleShowWidowbloom(info, val)
    self.db.profile.Herbs.Widowbloom.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowWidowbloom(info)
    return self.db.profile.Herbs.Widowbloom.Show;
end
function Glockfarmer:SetWidowbloomNeeded(info, val)
    self.db.profile.Herbs.Widowbloom.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetWidowbloomNeeded(info)
    return self.db.profile.Herbs.Widowbloom.Need;
end
function Glockfarmer:ToggleShowVigilsTorch(info, val)
    self.db.profile.Herbs.VigilsTorch.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowVigilsTorch(info)
    return self.db.profile.Herbs.VigilsTorch.Show;
end
function Glockfarmer:SetVigilsTorchNeeded(info, val)
    self.db.profile.Herbs.VigilsTorch.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetVigilsTorchNeeded(info)
    return self.db.profile.Herbs.VigilsTorch.Need;
end