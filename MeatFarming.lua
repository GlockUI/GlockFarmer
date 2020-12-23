local meatCheckbox;

function Glockfarmer:PrintMeat(playerMeat, itemFrame)
    local meatGroup = AceGUI:Create("InlineGroup")
    meatGroup:SetTitle("Meat")
    meatGroup:SetWidth(400)
    meatGroup:SetLayout("Flow")

    if (Glockfarmer:CanShowAethereal()) then
        local need =
        Glockfarmer:GetAetherealNeeded() -
            (playerMeat.Athereal.Bag + playerMeat.Athereal.ReagentBank + playerMeat.Athereal.Bank)
        local atherealGroup =
            Glockfarmer:CreateRow(
            "Aethereal Meat",
            playerMeat.Athereal.Bag,
            playerMeat.Athereal.ReagentBank,
            playerMeat.Athereal.Bank,
            need
        )
        meatGroup:AddChild(atherealGroup)
    end

    if (Glockfarmer:CanShowCreepingCrawlerMeat()) then
        local need =
        Glockfarmer:GetCreepingCrawlerMeatNeeded() -
            (playerMeat.CreepingCrawler.Bag + playerMeat.CreepingCrawler.ReagentBank + playerMeat.CreepingCrawler.Bank)
        local screepingGroup =
            Glockfarmer:CreateRow(
            "Creeping Crawler Meat ",
            playerMeat.CreepingCrawler.Bag,
            playerMeat.CreepingCrawler.ReagentBank,
            playerMeat.CreepingCrawler.Bank,
            need
        )
        meatGroup:AddChild(screepingGroup)
    end

    if (Glockfarmer:CanShowPhantasmalHaunch()) then
        local need =
        Glockfarmer:GetPhantasmalHaunchNeeded() -
            (playerMeat.PhantasmalHaunch.Bag + playerMeat.PhantasmalHaunch.ReagentBank +
                playerMeat.PhantasmalHaunch.Bank)
        local phantasmalGroup =
            Glockfarmer:CreateRow(
            "Phantasmal Haunch",
            playerMeat.PhantasmalHaunch.Bag,
            playerMeat.PhantasmalHaunch.ReagentBank,
            playerMeat.PhantasmalHaunch.Bank,
            need
        )
        meatGroup:AddChild(phantasmalGroup)
    end

    if (Glockfarmer:CanShowRawSeraphicWing()) then
        local need =
        Glockfarmer:GetRawSeraphicWingNeeded() -
            (playerMeat.RawSeraphicWing.Bag + playerMeat.RawSeraphicWing.ReagentBank + playerMeat.RawSeraphicWing.Bank)
        local rawGroup =
            Glockfarmer:CreateRow(
            "Raw Seraphic Wing",
            playerMeat.RawSeraphicWing.Bag,
            playerMeat.RawSeraphicWing.ReagentBank,
            playerMeat.RawSeraphicWing.Bank,
            need
        )
        meatGroup:AddChild(rawGroup)
    end

    if (Glockfarmer:CanShowShadowyShank()) then
        local need =
        Glockfarmer:GetShadowyShankNeeded() -
            (playerMeat.ShadowyShank.Bag + playerMeat.ShadowyShank.ReagentBank + playerMeat.ShadowyShank.Bank)
        local shadowyGroup =
            Glockfarmer:CreateRow(
            "Shadowy Shank",
            playerMeat.ShadowyShank.Bag,
            playerMeat.ShadowyShank.ReagentBank,
            playerMeat.ShadowyShank.Bank,
            need
        )
        meatGroup:AddChild(shadowyGroup)
    end

    if (Glockfarmer:CanShowTenebrousRibs()) then
        local need =
        Glockfarmer:GetTenebrousRibsNeeded() -
            (playerMeat.TenebrousRibs.Bag + playerMeat.TenebrousRibs.ReagentBank + playerMeat.TenebrousRibs.Bank)
        local tenebrousRibsGroup =
            Glockfarmer:CreateRow(
            "Tenebrous Ribs",
            playerMeat.TenebrousRibs.Bag,
            playerMeat.TenebrousRibs.ReagentBank,
            playerMeat.TenebrousRibs.Bank,
            need
        )
        meatGroup:AddChild(tenebrousRibsGroup)
    end

    itemFrame:AddChild(meatGroup)
end
function Glockfarmer:PrintMeatLine(playerMeat, toolTip)
    toolTip:AddLine("Meat: ");
    if (Glockfarmer:CanShowAethereal()) then
        local need =
        Glockfarmer:GetAetherealNeeded() -
            (playerMeat.Athereal.Bag + playerMeat.Athereal.ReagentBank + playerMeat.Athereal.Bank);
        Glockfarmer:CreateLine(
            "Aethereal Meat",
            playerMeat.Athereal.Bag,
            playerMeat.Athereal.ReagentBank,
            playerMeat.Athereal.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowCreepingCrawlerMeat()) then
        local need =
        Glockfarmer:GetCreepingCrawlerMeatNeeded() -
            (playerMeat.CreepingCrawler.Bag + playerMeat.CreepingCrawler.ReagentBank + playerMeat.CreepingCrawler.Bank);
        Glockfarmer:CreateLine(
            "Creeping Crawler Meat ",
            playerMeat.CreepingCrawler.Bag,
            playerMeat.CreepingCrawler.ReagentBank,
            playerMeat.CreepingCrawler.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowPhantasmalHaunch()) then
        local need =
        Glockfarmer:GetPhantasmalHaunchNeeded() -
            (playerMeat.PhantasmalHaunch.Bag + playerMeat.PhantasmalHaunch.ReagentBank +
                playerMeat.PhantasmalHaunch.Bank);
        Glockfarmer:CreateLine(
            "Phantasmal Haunch",
            playerMeat.PhantasmalHaunch.Bag,
            playerMeat.PhantasmalHaunch.ReagentBank,
            playerMeat.PhantasmalHaunch.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowRawSeraphicWing()) then
        local need =
        Glockfarmer:GetRawSeraphicWingNeeded() -
            (playerMeat.RawSeraphicWing.Bag + playerMeat.RawSeraphicWing.ReagentBank + playerMeat.RawSeraphicWing.Bank);
        Glockfarmer:CreateLine(
            "Raw Seraphic Wing",
            playerMeat.RawSeraphicWing.Bag,
            playerMeat.RawSeraphicWing.ReagentBank,
            playerMeat.RawSeraphicWing.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowShadowyShank()) then
        local need =
        Glockfarmer:GetShadowyShankNeeded() -
            (playerMeat.ShadowyShank.Bag + playerMeat.ShadowyShank.ReagentBank + playerMeat.ShadowyShank.Bank);
        Glockfarmer:CreateLine(
            "Shadowy Shank",
            playerMeat.ShadowyShank.Bag,
            playerMeat.ShadowyShank.ReagentBank,
            playerMeat.ShadowyShank.Bank,
            need,
            toolTip
        );
    end

    if (Glockfarmer:CanShowTenebrousRibs()) then
        local need =
        Glockfarmer:GetTenebrousRibsNeeded() -
            (playerMeat.TenebrousRibs.Bag + playerMeat.TenebrousRibs.ReagentBank + playerMeat.TenebrousRibs.Bank);
        Glockfarmer:CreateLine(
            "Tenebrous Ribs",
            playerMeat.TenebrousRibs.Bag,
            playerMeat.TenebrousRibs.ReagentBank,
            playerMeat.TenebrousRibs.Bank,
            need,
            toolTip
        );
    end
end
function Glockfarmer:GetMeatCheckbox()
    if not meatCheckbox then
        meatCheckbox = AceGUI:Create("CheckBox");
        meatCheckbox:SetType("checkbox");
        meatCheckbox:SetLabel("Show Meat");
        meatCheckbox:SetValue(self.db.profile.ShowFish);
        meatCheckbox:SetCallback(
            "OnValueChanged",
            function(widget)
                self.db.profile.ShowMeat = meatCheckbox:GetValue();
                Glockfarmer:PrintBags();
            end
        );
        return meatCheckbox;
    else        
        return meatCheckbox;
    end
end
function Glockfarmer:ReleaseMeatCheckbox()
    meatCheckbox = nil;
end
function Glockfarmer:UpdateMeatCheckbox()
    meatCheckbox:SetValue(self.db.profile.ShowMeat);
end
function Glockfarmer:ToggleShowMeat(info, val)
    self.db.profile.ShowMeat = val;
    if meatCheckbox then
        Glockfarmer:UpdateMeatCheckbox();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowMeat(info)
    return self.db.profile.ShowMeat;
end
function Glockfarmer:ToggleShowAethereal(info, val)
    self.db.profile.Meat.Aethereal.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowAethereal(info)
    return self.db.profile.Meat.Aethereal.Show;
end
function Glockfarmer:SetAetherealNeeded(info, val)
    self.db.profile.Meat.Aethereal.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetAetherealNeeded(info)
    return self.db.profile.Meat.Aethereal.Need;
end
function Glockfarmer:ToggleShowCreepingCrawlerMeat(info, val)
    self.db.profile.Meat.CreepingCrawler.Show = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:CanShowCreepingCrawlerMeat(info)
    return self.db.profile.Meat.CreepingCrawler.Show;
end
function Glockfarmer:SetCreepingCrawlerMeatNeeded(info, val)
    self.db.profile.Meat.CreepingCrawler.Need = val;
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:GetCreepingCrawlerMeatNeeded(info)
    return self.db.profile.Meat.CreepingCrawler.Need;
end
function Glockfarmer:ToggleShowPhantasmalHaunch(info, val)
    self.db.profile.Meat.PhantasmalHaunch.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPhantasmalHaunch(info)
    return self.db.profile.Meat.PhantasmalHaunch.Show;
end
function Glockfarmer:SetPhantasmalHaunchNeeded(info, val)
    self.db.profile.Meat.PhantasmalHaunch.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPhantasmalHaunchNeeded(info)
    return self.db.profile.Meat.PhantasmalHaunch.Need;
end
function Glockfarmer:ToggleShowRawSeraphicWing(info, val)
    self.db.profile.Meat.RawSeraphicWing.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowRawSeraphicWing(info)
    return self.db.profile.Meat.RawSeraphicWing.Show;
end
function Glockfarmer:SetRawSeraphicWingNeeded(info, val)
    self.db.profile.Meat.RawSeraphicWing.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetRawSeraphicWingNeeded(info)
    return self.db.profile.Meat.RawSeraphicWing.Need;
end
function Glockfarmer:ToggleShowShadowyShank(info, val)
    self.db.profile.Meat.ShadowyShank.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowShadowyShank(info)
    return self.db.profile.Meat.ShadowyShank.Show;
end
function Glockfarmer:SetShadowyShankNeeded(info, val)
    self.db.profile.Meat.ShadowyShank.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetShadowyShankNeeded(info)
    return self.db.profile.Meat.ShadowyShank.Need;
end
function Glockfarmer:ToggleShowTenebrousRibs(info, val)
    self.db.profile.Meat.TenebrousRibs.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowTenebrousRibs(info)
    return self.db.profile.Meat.TenebrousRibs.Show;
end
function Glockfarmer:SetTenebrousRibsNeeded(info, val)
    self.db.profile.Meat.TenebrousRibs.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetTenebrousRibsNeeded(info)
    return self.db.profile.Meat.TenebrousRibs.Need;
end