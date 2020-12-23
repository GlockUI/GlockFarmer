local fishingCheckbox;

function Glockfarmer:PrintFish(playerFish, itemFrame)
    local fishGroup = AceGUI:Create("InlineGroup")
    fishGroup:SetTitle("Fish")
    fishGroup:SetWidth(400)
    fishGroup:SetLayout("Flow")

    if (Glockfarmer:CanShowLostSole()) then
        local need =
        Glockfarmer:GetLostSoleNeeded() -
            (playerFish.LostSole.Bag + playerFish.LostSole.ReagentBank + playerFish.LostSole.Bank)
        local lostSoleGroup =
            Glockfarmer:CreateRow(
            "Lost Sole",
            playerFish.LostSole.Bag,
            playerFish.LostSole.ReagentBank,
            playerFish.LostSole.Bank,
            need
        )
        fishGroup:AddChild(lostSoleGroup)
    end

    if (Glockfarmer:CanShowSilverPike()) then
        local need =
        Glockfarmer:GetSilverPikeNeeded() -
            (playerFish.SilverPike.Bag + playerFish.SilverPike.ReagentBank + playerFish.SilverPike.Bank)
        local silvergillGroup =
            Glockfarmer:CreateRow(
            "Silvergill Pike",
            playerFish.SilverPike.Bag,
            playerFish.SilverPike.ReagentBank,
            playerFish.SilverPike.Bank,
            need
        )
        fishGroup:AddChild(silvergillGroup)
    end

    if (Glockfarmer:CanShowPocketBonefish()) then
        local need =
        Glockfarmer:GetPocketBonefishNeeded() -
            (playerFish.PoketBoneFish.Bag + playerFish.PoketBoneFish.ReagentBank + playerFish.PoketBoneFish.Bank)
        local poketGroup =
            Glockfarmer:CreateRow(
            "Pocked Bonefish",
            playerFish.PoketBoneFish.Bag,
            playerFish.PoketBoneFish.ReagentBank,
            playerFish.PoketBoneFish.Bank,
            need
        )
        fishGroup:AddChild(poketGroup)
    end

    if (Glockfarmer:CanShowIridescent()) then
        local need =
        Glockfarmer:GetIridescentNeeded() -
            (playerFish.Iridescent.Bag + playerFish.Iridescent.ReagentBank + playerFish.Iridescent.Bank)
        local iridenscentGroup =
            Glockfarmer:CreateRow(
            "Iridescent Amberjack",
            playerFish.Iridescent.Bag,
            playerFish.Iridescent.ReagentBank,
            playerFish.Iridescent.Bank,
            need
        )
        fishGroup:AddChild(iridenscentGroup)
    end

    if (Glockfarmer:CanShowSpinefinPiranha()) then
        local need =
        Glockfarmer:GetSpinefinPiranhaNeeded() -
            (playerFish.SpinefinPiranha.Bag + playerFish.SpinefinPiranha.ReagentBank + playerFish.SpinefinPiranha.Bank)
        local spinefishroup =
            Glockfarmer:CreateRow(
            "Spinefin Piranha",
            playerFish.SpinefinPiranha.Bag,
            playerFish.SpinefinPiranha.ReagentBank,
            playerFish.SpinefinPiranha.Bank,
            need
        )
        fishGroup:AddChild(spinefishroup)
    end

    if (Glockfarmer:CanShowElysian()) then
        local need =
        Glockfarmer:GetElysianNeeded() -
            (playerFish.Elysian.Bag + playerFish.Elysian.ReagentBank + playerFish.Elysian.Bank)
        local elysianGroup =
            Glockfarmer:CreateRow(
            "Elysian Thade",
            playerFish.Elysian.Bag,
            playerFish.Elysian.ReagentBank,
            playerFish.Elysian.Bank,
            need
        )
        fishGroup:AddChild(elysianGroup)
    end

    itemFrame:AddChild(fishGroup)
end
function Glockfarmer:PrintFishLine(playerFish, toolTip)
    toolTip:AddLine("Fish: ");
    if (Glockfarmer:CanShowLostSole()) then
        local need =
        Glockfarmer:GetLostSoleNeeded() -
            (playerFish.LostSole.Bag + playerFish.LostSole.ReagentBank + playerFish.LostSole.Bank);
        Glockfarmer:CreateLine(
            "Lost Sole",
            playerFish.LostSole.Bag,
            playerFish.LostSole.ReagentBank,
            playerFish.LostSole.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowSilverPike()) then
        local need =
        Glockfarmer:GetSilverPikeNeeded() -
            (playerFish.SilverPike.Bag + playerFish.SilverPike.ReagentBank + playerFish.SilverPike.Bank);
        Glockfarmer:CreateLine(
            "Silvergill Pike",
            playerFish.SilverPike.Bag,
            playerFish.SilverPike.ReagentBank,
            playerFish.SilverPike.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowPocketBonefish()) then
        local need =
        Glockfarmer:GetPocketBonefishNeeded() -
            (playerFish.PoketBoneFish.Bag + playerFish.PoketBoneFish.ReagentBank + playerFish.PoketBoneFish.Bank);
        Glockfarmer:CreateLine(
            "Pocked Bonefish",
            playerFish.PoketBoneFish.Bag,
            playerFish.PoketBoneFish.ReagentBank,
            playerFish.PoketBoneFish.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowIridescent()) then
        local need =
        Glockfarmer:GetIridescentNeeded() -
            (playerFish.Iridescent.Bag + playerFish.Iridescent.ReagentBank + playerFish.Iridescent.Bank);
        Glockfarmer:CreateLine(
            "Iridescent Amberjack",
            playerFish.Iridescent.Bag,
            playerFish.Iridescent.ReagentBank,
            playerFish.Iridescent.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowSpinefinPiranha()) then
        local need =
        Glockfarmer:GetSpinefinPiranhaNeeded() -
            (playerFish.SpinefinPiranha.Bag + playerFish.SpinefinPiranha.ReagentBank + playerFish.SpinefinPiranha.Bank);
        Glockfarmer:CreateLine(
            "Spinefin Piranha",
            playerFish.SpinefinPiranha.Bag,
            playerFish.SpinefinPiranha.ReagentBank,
            playerFish.SpinefinPiranha.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowElysian()) then
        local need =
        Glockfarmer:GetElysianNeeded() -
            (playerFish.Elysian.Bag + playerFish.Elysian.ReagentBank + playerFish.Elysian.Bank);
        Glockfarmer:CreateLine(
            "Elysian Thade",
            playerFish.Elysian.Bag,
            playerFish.Elysian.ReagentBank,
            playerFish.Elysian.Bank,
            need,
            toolTip
        );
    end
end
function Glockfarmer:GetFishingCheckbox()
    if not fishingCheckbox then
        fishingCheckbox = AceGUI:Create("CheckBox");
        fishingCheckbox:SetType("checkbox");
        fishingCheckbox:SetLabel("Show Fish");
        fishingCheckbox:SetValue(self.db.profile.ShowFish);
        fishingCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowFish = fishingCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        )
        return fishingCheckbox;
    else        
        return fishingCheckbox;
    end
end
function Glockfarmer:ReleaseFishingCheckbox()
    fishingCheckbox = nil;
end
function Glockfarmer:UpdateFishingCheckbox()
    fishingCheckbox:SetValue(self.db.profile.ShowFish);
end
function Glockfarmer:ToggleShowFish(info, val)
    self.db.profile.ShowFish = val;
    if fishingCheckbox then
        Glockfarmer:UpdateFishingCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowFish(info)
    return self.db.profile.ShowFish;
end
function Glockfarmer:ToggleShowLostSole(info, val)
    self.db.profile.Fish.LostSole.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLostSole(info)
    return self.db.profile.Fish.LostSole.Show;
end
function Glockfarmer:SetLostSoleNeeded(info, val)
    self.db.profile.Fish.LostSole.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLostSoleNeeded(info)
    return self.db.profile.Fish.LostSole.Need;
end
function Glockfarmer:ToggleShowSilverPike(info, val)
    self.db.profile.Fish.SilverPike.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSilverPike(info)
    return self.db.profile.Fish.SilverPike.Show;
end
function Glockfarmer:SetSilverPikeNeeded(info, val)
    self.db.profile.Fish.SilverPike.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSilverPikeNeeded(info)
    return self.db.profile.Fish.SilverPike.Need;
end
function Glockfarmer:ToggleShowPocketBonefish(info, val)
    self.db.profile.Fish.PocketBonefish.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPocketBonefish(info)
    return self.db.profile.Fish.PocketBonefish.Show;
end
function Glockfarmer:SetPocketBonefishNeeded(info, val)
    self.db.profile.Fish.PocketBonefish.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPocketBonefishNeeded(info)
    return self.db.profile.Fish.PocketBonefish.Need;
end
function Glockfarmer:ToggleShowIridescent(info, val)
    self.db.profile.Fish.Iridescent.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowIridescent(info)
    return self.db.profile.Fish.Iridescent.Show;
end
function Glockfarmer:SetIridescentNeeded(info, val)
    self.db.profile.Fish.Iridescent.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetIridescentNeeded(info)
    return self.db.profile.Fish.Iridescent.Need;
end
function Glockfarmer:ToggleShowSpinefinPiranha(info, val)
    self.db.profile.Fish.SpinefinPiranha.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSpinefinPiranha(info)
    return self.db.profile.Fish.SpinefinPiranha.Show;
end
function Glockfarmer:SetSpinefinPiranhaNeeded(info, val)
    self.db.profile.Fish.SpinefinPiranha.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSpinefinPiranhaNeeded(info)
    return self.db.profile.Fish.SpinefinPiranha.Need;
end
function Glockfarmer:ToggleShowElysian(info, val)
    self.db.profile.Fish.Elysian.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowElysian(info)
    return self.db.profile.Fish.Elysian.Show;
end
function Glockfarmer:SetElysianNeeded(info, val)
    self.db.profile.Fish.Elysian.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetElysianNeeded(info)
    return self.db.profile.Fish.Elysian.Need;
end