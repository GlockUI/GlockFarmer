Glockfarmer = LibStub("AceAddon-3.0"):NewAddon("Glockfarmer", "AceConsole-3.0", "AceEvent-3.0");
local AceGUI = LibStub("AceGUI-3.0");
local playerName = UnitName("player");
local frame = AceGUI:Create("Frame")
frame:SetLayout("Fill")
frame:SetTitle("Glock Farmer") 

local Defaults = {
    profile = {
        ShowHerbalism = true,
        ShowFish = true,
        ShowCloth = true,
        ShowOre = true,
        ShowLeather = true,
        ShowAllCharacters = false,
    },
    global = {
        ["**"] = {
            Herbs = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                DeathBlossom = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                NightShade = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                RisingGlory = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                Marrowroot = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                VigilsTorch = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                RisingGlory = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            },
            Fish = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                LostSole = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                SilverPike = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                PoketBoneFish = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                Iridescent = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                SpinefinPiranha = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                Elysian = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            },
            Cloth = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                ShroudedCloth = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                LightlessSilk = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            },
            Ore = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                LaestriteOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                ElethiumOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                SoleniumOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                OxxeinOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                PhaedrumOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                SinvyrOre = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            },
            Leather = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                DesolateLeather = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                PallidBone = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                CallousHide = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            },
        }
    }
}
local itemsGroup;


SLASH_GLOCKFARMER1 = "/Glockfarmer"
SlashCmdList["GLOCKFARMER"] = function(msg, ...)
    if(msg == "show")
    then
        frame:Show();
    elseif(msg == "hide")
    then
        frame:Hide();
    elseif(msg == "scan")
    then
        GlockFarmer:PrintBags();        
    else
        print("Proper argument not given! please provide show, hide, or scan")
    end
end
function Glockfarmer:PrintHerbs(playerHerbs, itemFrame)
    local herbsGroup = AceGUI:Create("InlineGroup");
    herbsGroup:SetTitle("Herbs");
    herbsGroup:SetLayout("Flow")
    

    local deathBlossomLabel = AceGUI:Create("Label")
    deathBlossomLabel:SetText("Death Blossom: Bag:" .. playerHerbs.DeathBlossom.Bag .. " Reagent: " .. playerHerbs.DeathBlossom.ReagentBank)
    herbsGroup:AddChild(deathBlossomLabel)

    local nightshadeLabel = AceGUI:Create("Label")
    nightshadeLabel:SetText("Nightshade: Bag:" .. playerHerbs.NightShade.Bag .. " Reagent: " .. playerHerbs.NightShade.ReagentBank)
    herbsGroup:AddChild(nightshadeLabel)

    local risingGloryLabel = AceGUI:Create("Label")
    risingGloryLabel:SetText("Rising Glory: Bag:" .. playerHerbs.RisingGlory.Bag .. " Reagent: " .. playerHerbs.RisingGlory.ReagentBank)
    herbsGroup:AddChild(risingGloryLabel)

    local marrowrootLabel = AceGUI:Create("Label")
    marrowrootLabel:SetText("Marrowroot: Bag: " .. playerHerbs.Marrowroot.Bag .. " Reagent: " .. playerHerbs.Marrowroot.ReagentBank)
    herbsGroup:AddChild(marrowrootLabel)

    local widowbloomLabel = AceGUI:Create("Label")
    widowbloomLabel:SetText("Widowbloom: Bag:" .. playerHerbs.Widowbloom.Bag  .. " Reagent: " .. playerHerbs.Widowbloom.ReagentBank)
    herbsGroup:AddChild(widowbloomLabel)

    local vigilsTorchLabel = AceGUI:Create("Label")
    vigilsTorchLabel:SetText("Vigils Torch: Bag:" .. playerHerbs.VigilsTorch.Bag .. " Reagent: " .. playerHerbs.VigilsTorch.ReagentBank)
    herbsGroup:AddChild(vigilsTorchLabel)

    itemFrame:AddChild(herbsGroup);
end
function Glockfarmer:PrintFish(playerFish, itemFrame)
    local fishGroup = AceGUI:Create("InlineGroup");
    fishGroup:SetTitle("Fish");
    fishGroup:SetLayout("Flow")    

    local lostSoleLabel = AceGUI:Create("Label")
    lostSoleLabel:SetText("Lost Sole: Bag:" .. playerFish.LostSole.Bag .. " Reagent: " .. playerFish.LostSole.ReagentBank)
    fishGroup:AddChild(lostSoleLabel)

    local silvergillLabel = AceGUI:Create("Label")
    silvergillLabel:SetText("Silvergill Pike: Bag:" .. playerFish.SilverPike.Bag .. " Reagent: " .. playerFish.SilverPike.ReagentBank)
    fishGroup:AddChild(silvergillLabel)

    local poketLabel = AceGUI:Create("Label")
    poketLabel:SetText("Pocked Bonefish: Bag:" .. playerFish.PoketBoneFish.Bag .. " Reagent: " .. playerFish.PoketBoneFish.ReagentBank)
    fishGroup:AddChild(poketLabel)

    local iridenscentLabel = AceGUI:Create("Label")
    iridenscentLabel:SetText("Iridescent Amberjack: Bag: " .. playerFish.Iridescent.Bag .. " Reagent: " .. playerFish.Iridescent.ReagentBank)
    fishGroup:AddChild(iridenscentLabel)

    local spinefishLabel = AceGUI:Create("Label")
    spinefishLabel:SetText("Spinefin Piranha: Bag:" .. playerFish.SpinefinPiranha.Bag .. " Reagent: " .. playerFish.SpinefinPiranha.ReagentBank)
    fishGroup:AddChild(spinefishLabel)

    local elysianLabel = AceGUI:Create("Label")
    elysianLabel:SetText("Elysian Thade: Bag:" .. playerFish.Elysian.Bag .. " Reagent: " .. playerFish.Elysian.ReagentBank)
    fishGroup:AddChild(elysianLabel)

    itemFrame:AddChild(fishGroup);
end
function Glockfarmer:PrintCloth(playerCloth, itemFrame)
    local clothGroup = AceGUI:Create("InlineGroup");
    clothGroup:SetTitle("Cloth");
    clothGroup:SetLayout("Flow")
    

    local ShroudedLabel = AceGUI:Create("Label")
    ShroudedLabel:SetText("Shrouded Cloth: Bag:" .. playerCloth.ShroudedCloth.Bag .. " Reagent: " .. playerCloth.ShroudedCloth.ReagentBank)
    clothGroup:AddChild(ShroudedLabel)

    local LightlessLabel = AceGUI:Create("Label")
    LightlessLabel:SetText("Lightless Silk: Bag:" .. playerCloth.LightlessSilk.Bag .. " Reagent: " .. playerCloth.LightlessSilk.ReagentBank)
    clothGroup:AddChild(LightlessLabel)

    itemFrame:AddChild(clothGroup);
end
function Glockfarmer:PrintOre(playerOre, itemFrame)
    local oreGroup = AceGUI:Create("InlineGroup");
    oreGroup:SetTitle("Ore");
    oreGroup:SetLayout("Flow");    

    local laestriteOreLabel = AceGUI:Create("Label")
    laestriteOreLabel:SetText("Laestrite Ore: Bag:" .. playerOre.LaestriteOre.Bag .. " Reagent: " .. playerOre.LaestriteOre.ReagentBank)
    oreGroup:AddChild(laestriteOreLabel)

    local ElethiumLabel = AceGUI:Create("Label")
    ElethiumLabel:SetText("Elethium Ore: Bag:" .. playerOre.ElethiumOre.Bag .. " Reagent: " .. playerOre.ElethiumOre.ReagentBank)
    oreGroup:AddChild(ElethiumLabel)

    local SoleniumLabel = AceGUI:Create("Label")
    SoleniumLabel:SetText("Solenium Ore: Bag:" .. playerOre.SoleniumOre.Bag .. " Reagent: " .. playerOre.SoleniumOre.ReagentBank)
    oreGroup:AddChild(SoleniumLabel)

    local OxxeinOreLabel = AceGUI:Create("Label")
    OxxeinOreLabel:SetText("Oxxein Ore: Bag:" .. playerOre.OxxeinOre.Bag .. " Reagent: " .. playerOre.OxxeinOre.ReagentBank)
    oreGroup:AddChild(OxxeinOreLabel)

    local PhaedrumOreLabel = AceGUI:Create("Label")
    PhaedrumOreLabel:SetText("Phaedrum Ore: Bag:" .. playerOre.PhaedrumOre.Bag .. " Reagent: " .. playerOre.PhaedrumOre.ReagentBank)
    oreGroup:AddChild(PhaedrumOreLabel)

    local SinvyrOreLabel = AceGUI:Create("Label")
    SinvyrOreLabel:SetText("Sinvyr Ore: Bag:" .. playerOre.SinvyrOre.Bag .. " Reagent: " .. playerOre.SinvyrOre.ReagentBank)
    oreGroup:AddChild(SinvyrOreLabel)

    itemFrame:AddChild(oreGroup);
end
function Glockfarmer:PrintLeather(playerLeather, itemFrame)
    local leatherGroup = AceGUI:Create("InlineGroup");
    leatherGroup:SetTitle("Leather");
    leatherGroup:SetLayout("Flow")
    

    local DesolateLeatherLabel = AceGUI:Create("Label")
    DesolateLeatherLabel:SetText("Desolate Leather: Bag:" .. playerLeather.DesolateLeather.Bag .. " Reagent: " .. playerLeather.DesolateLeather.ReagentBank)
    leatherGroup:AddChild(DesolateLeatherLabel)

    local PallidBoneLabel = AceGUI:Create("Label")
    PallidBoneLabel:SetText("Pallid Bone: Bag:" .. playerLeather.PallidBone.Bag .. " Reagent: " .. playerLeather.PallidBone.ReagentBank)
    leatherGroup:AddChild(PallidBoneLabel)

    local CallousHideLabel = AceGUI:Create("Label")
    CallousHideLabel:SetText("Callous Hide: Bag:" .. playerLeather.CallousHide.Bag .. " Reagent: " .. playerLeather.CallousHide.ReagentBank)
    leatherGroup:AddChild(CallousHideLabel)

    itemFrame:AddChild(leatherGroup);
end
function Glockfarmer:GetPersonalBags()
    herbDBCount = 0;
    herbNSCount = 0;
    herbRGCount = 0;
    herbMTCount = 0;
    herbWTCount = 0;
    herbVTCount = 0;
    fishingLSCount = 0;
    fishingSPCount = 0;
    fishingPBCount = 0;
    fishingIACount = 0;
    fishingSpineCount = 0;
    fishingETCount = 0;
    clothSCCount = 0;
    clothLSCount = 0;
    laestriteOreCount = 0;
    elethiumOreCount = 0;
    soleniumOreCount = 0;
    oxxeinOreCount = 0;
    phaedrumOreCount = 0;
    sinvyrOreCount = 0;
    desolateLeatherCount = 0;
    pallidBoneCount = 0;
    callousHideCount = 0;


    for i=0,5 do
        local slots = GetContainerNumSlots(i);
        for s=0,slots do
            icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(i, s)  
            --Herbs     
            if(itemID == 171315)
            then
                herbNSCount = herbNSCount + itemCount;
            elseif(itemID == 169701)
            then
                herbDBCount = herbDBCount + itemCount;
            elseif(itemID == 168586)
            then
                herbRGCount = herbRGCount + itemCount;
            elseif(itemID == 168589)
            then
                herbMTCount = herbMTCount + itemCount;
            elseif(itemID == 168583)
            then
                herbWTCount = herbWTCount + itemCount;
            elseif(itemID == 170554)
            then
                herbVTCount = herbVTCount + itemCount;
            --Fishing
            elseif(itemID == 173032)
            then
                fishingLSCount = fishingLSCount + itemCount;
            elseif(itemID == 173034)
            then
                fishingSPCount = fishingSPCount + itemCount;
            elseif(itemID == 173035)
            then
                fishingPBCount = fishingPBCount + itemCount;
            elseif(itemID == 173033)
            then
                fishingIACount = fishingIACount + itemCount;
            elseif(itemID == 173036)
            then
                fishingSpineCount = fishingSpineCount + itemCount;
            elseif(itemID == 173037)
            then
                fishingETCount = fishingETCount + itemCount;
            --Cloth
            elseif(itemID == 173202)
            then
                clothSCCount = clothSCCount + itemCount;
            elseif(itemID == 173204)
            then
                clothLSCount = clothLSCount + itemCount;
            --Ore
            elseif(itemID == 171828)
            then
                laestriteOreCount = laestriteOreCount + itemCount;
            elseif(itemID == 171833)
            then
                elethiumOreCount = elethiumOreCount + itemCount;
            elseif(itemID == 171829)
            then
                soleniumOreCount = soleniumOreCount + itemCount;
            elseif(itemID == 171830)
            then
                oxxeinOreCount = oxxeinOreCount + itemCount;
            elseif(itemID == 171831)
            then
                phaedrumOreCount = phaedrumOreCount + itemCount;
            elseif(itemID == 171832)
            then
                sinvyrOreCount = sinvyrOreCount + itemCount;
            --leather
            elseif(itemID == 172089)
            then
                desolateLeatherCount = desolateLeatherCount + itemCount;
            elseif(itemID == 172092)
            then
                pallidBoneCount = pallidBoneCount + itemCount;
            elseif(itemID == 172094)
            then
                callousHideCount = callousHideCount + itemCount;
            end
        end
    end

    self.db.global[playerName].Herbs.DeathBlossom.Bag = herbDBCount;
    self.db.global[playerName].Herbs.NightShade.Bag = herbNSCount;
    self.db.global[playerName].Herbs.RisingGlory.Bag = herbRGCount;
    self.db.global[playerName].Herbs.Marrowroot.Bag = herbMTCount;
    self.db.global[playerName].Herbs.VigilsTorch.Bag = herbWTCount;
    self.db.global[playerName].Herbs.VigilsTorch.Bag = herbVTCount;

    self.db.global[playerName].Fish.LostSole.Bag = fishingLSCount;
    self.db.global[playerName].Fish.SilverPike.Bag = fishingSPCount;
    self.db.global[playerName].Fish.PoketBoneFish.Bag = fishingPBCount;
    self.db.global[playerName].Fish.Iridescent.Bag = fishingIACount;
    self.db.global[playerName].Fish.SpinefinPiranha.Bag = fishingSpineCount;
    self.db.global[playerName].Fish.Elysian.Bag = fishingETCount;

    self.db.global[playerName].Cloth.LightlessSilk.Bag = clothLSCount;
    self.db.global[playerName].Cloth.ShroudedCloth.Bag = clothSCCount;

    self.db.global[playerName].Ore.LaestriteOre.Bag = laestriteOreCount;
    self.db.global[playerName].Ore.ElethiumOre.Bag = elethiumOreCount;
    self.db.global[playerName].Ore.SoleniumOre.Bag = soleniumOreCount;
    self.db.global[playerName].Ore.OxxeinOre.Bag = oxxeinOreCount;
    self.db.global[playerName].Ore.PhaedrumOre.Bag = phaedrumOreCount;
    self.db.global[playerName].Ore.SinvyrOre.Bag = sinvyrOreCount;

    self.db.global[playerName].Leather.DesolateLeather.Bag = desolateLeatherCount;
    self.db.global[playerName].Leather.PallidBone.Bag = pallidBoneCount;
    self.db.global[playerName].Leather.CallousHide.Bag = callousHideCount;
end
function Glockfarmer:GetReagentBank()
    herbDBCount = 0;
    herbNSCount = 0;
    herbRGCount = 0;
    herbMTCount = 0;
    herbWTCount = 0;
    herbVTCount = 0;
    fishingLSCount = 0;
    fishingSPCount = 0;
    fishingPBCount = 0;
    fishingIACount = 0;
    fishingSpineCount = 0;
    fishingETCount = 0;
    clothSCCount = 0;
    clothLSCount = 0;
    laestriteOreCount = 0;
    elethiumOreCount = 0;
    soleniumOreCount = 0;
    oxxeinOreCount = 0;
    phaedrumOreCount = 0;
    sinvyrOreCount = 0;
    desolateLeatherCount = 0;
    pallidBoneCount = 0;
    callousHideCount = 0;

    local slots = GetContainerNumSlots(-3);
    for s=0,slots do
        icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(-3, s)  
        --Herbs     
        if(itemID == 171315)
        then
            herbNSCount = herbNSCount + itemCount;
        elseif(itemID == 169701)
        then
            herbDBCount = herbDBCount + itemCount;
        elseif(itemID == 168586)
        then
            herbRGCount = herbRGCount + itemCount;
        elseif(itemID == 168589)
        then
            herbMTCount = herbMTCount + itemCount;
        elseif(itemID == 168583)
        then
            herbWTCount = herbWTCount + itemCount;
        elseif(itemID == 170554)
        then
            herbVTCount = herbVTCount + itemCount;
        --Fishing
        elseif(itemID == 173032)
        then
            fishingLSCount = fishingLSCount + itemCount;
        elseif(itemID == 173034)
        then
            fishingSPCount = fishingSPCount + itemCount;
        elseif(itemID == 173035)
        then
            fishingPBCount = fishingPBCount + itemCount;
        elseif(itemID == 173033)
        then
            fishingIACount = fishingIACount + itemCount;
        elseif(itemID == 173036)
        then
            fishingSpineCount = fishingSpineCount + itemCount;
        elseif(itemID == 173037)
        then
            fishingETCount = fishingETCount + itemCount;
        --Cloth
        elseif(itemID == 173202)
        then
            clothSCCount = clothSCCount + itemCount;
        elseif(itemID == 173204)
        then
            clothLSCount = clothLSCount + itemCount;
        --Ore
        elseif(itemID == 171828)
        then
            laestriteOreCount = laestriteOreCount + itemCount;
        elseif(itemID == 171833)
        then
            elethiumOreCount = elethiumOreCount + itemCount;
        elseif(itemID == 171829)
        then
            soleniumOreCount = soleniumOreCount + itemCount;
        elseif(itemID == 171830)
        then
            oxxeinOreCount = oxxeinOreCount + itemCount;
        elseif(itemID == 171831)
        then
            phaedrumOreCount = phaedrumOreCount + itemCount;
        elseif(itemID == 171832)
        then
            sinvyrOreCount = sinvyrOreCount + itemCount;
        --leather
        elseif(itemID == 172089)
        then
            desolateLeatherCount = desolateLeatherCount + itemCount;
        elseif(itemID == 172092)
        then
            pallidBoneCount = pallidBoneCount + itemCount;
        elseif(itemID == 172094)
        then
        end
    end

    self.db.global[playerName].Herbs.DeathBlossom.ReagentBank = herbDBCount;
    self.db.global[playerName].Herbs.NightShade.ReagentBank = herbNSCount;
    self.db.global[playerName].Herbs.RisingGlory.ReagentBank = herbRGCount;
    self.db.global[playerName].Herbs.Marrowroot.ReagentBank = herbMTCount;
    self.db.global[playerName].Herbs.VigilsTorch.ReagentBank = herbWTCount;
    self.db.global[playerName].Herbs.VigilsTorch.ReagentBank = herbVTCount;

    self.db.global[playerName].Fish.LostSole.ReagentBank = fishingLSCount;
    self.db.global[playerName].Fish.SilverPike.ReagentBank = fishingSPCount;
    self.db.global[playerName].Fish.PoketBoneFish.ReagentBank = fishingPBCount;
    self.db.global[playerName].Fish.Iridescent.ReagentBank = fishingIACount;
    self.db.global[playerName].Fish.SpinefinPiranha.ReagentBank = fishingSpineCount;
    self.db.global[playerName].Fish.Elysian.ReagentBank = fishingETCount;

    self.db.global[playerName].Cloth.LightlessSilk.ReagentBank = clothLSCount;
    self.db.global[playerName].Cloth.ShroudedCloth.ReagentBank = clothSCCount;

    self.db.global[playerName].Ore.LaestriteOre.ReagentBank = laestriteOreCount;
    self.db.global[playerName].Ore.ElethiumOre.ReagentBank = elethiumOreCount;
    self.db.global[playerName].Ore.SoleniumOre.ReagentBank = soleniumOreCount;
    self.db.global[playerName].Ore.OxxeinOre.ReagentBank = oxxeinOreCount;
    self.db.global[playerName].Ore.PhaedrumOre.ReagentBank = phaedrumOreCount;
    self.db.global[playerName].Ore.SinvyrOre.ReagentBank = sinvyrOreCount;

    self.db.global[playerName].Leather.DesolateLeather.ReagentBank = desolateLeatherCount;
    self.db.global[playerName].Leather.PallidBone.ReagentBank = pallidBoneCount;
    self.db.global[playerName].Leather.CallousHide.ReagentBank = callousHideCount;

end
function Glockfarmer:ReloadLabel()
    itemsGroup:ReleaseChildren();
    if(self.db.profile.ShowAllCharacters)
    then
        for i, playerTable in pairs(self.db.global) do
            local playerGroup = AceGUI:Create("InlineGroup");
            playerGroup:SetTitle(i);
            playerGroup:SetLayout("Flow")
            

            if(self.db.profile.ShowHerbalism)
            then
                Glockfarmer:PrintHerbs(self.db.global[i].Herbs,playerGroup);
            end

            if(self.db.profile.ShowFish)
            then
                Glockfarmer:PrintFish(self.db.global[i].Fish,playerGroup);
            end

            if(self.db.profile.ShowCloth)
            then
                Glockfarmer:PrintCloth(self.db.global[i].Cloth,playerGroup);
            end

            if(self.db.profile.ShowOre)
            then
                Glockfarmer:PrintOre(self.db.global[i].Ore,playerGroup);
            end

            if(self.db.profile.ShowLeather)
            then
                Glockfarmer:PrintLeather(self.db.global[i].Leather,playerGroup);
            end

            itemsGroup:AddChild(playerGroup);
        end
    else
        local playerGroup = AceGUI:Create("InlineGroup");
        playerGroup:SetTitle(playerName);
        playerGroup:SetLayout("Flow")
        

        if(self.db.profile.ShowHerbalism)
        then
            Glockfarmer:PrintHerbs(self.db.global[playerName].Herbs,playerGroup);
        end

        if(self.db.profile.ShowFish)
        then
            Glockfarmer:PrintFish(self.db.global[playerName].Fish,playerGroup);
        end

        if(self.db.profile.ShowCloth)
        then
            Glockfarmer:PrintCloth(self.db.global[playerName].Cloth,playerGroup);
        end

        if(self.db.profile.ShowOre)
        then
            Glockfarmer:PrintOre(self.db.global[playerName].Ore,playerGroup);
        end
    
        if(self.db.profile.ShowLeather)
        then
            Glockfarmer:PrintLeather(self.db.global[playerName].Leather,playerGroup);
        end

        itemsGroup:AddChild(playerGroup);
    end
end
function Glockfarmer:PrintBags()
    Glockfarmer:GetPersonalBags();

    if(IsReagentBankUnlocked())
    then
        Glockfarmer:GetReagentBank();
    end
    Glockfarmer:ReloadLabel(self);
end
function Glockfarmer:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("GlockFarmerDB", Defaults, true)
    local scroll = AceGUI:Create("ScrollFrame")
    scroll:SetLayout("List")
    frame:AddChild(scroll)

    local optsGroup = AceGUI:Create("InlineGroup");
    optsGroup:SetTitle("Professions");
    optsGroup:SetLayout("Flow")
    optsGroup:SetFullWidth(true)
    scroll:AddChild(optsGroup);

    local herbCheckbox = AceGUI:Create("CheckBox");
    herbCheckbox:SetType("checkbox");
    herbCheckbox:SetLabel("Show Herbs");
    herbCheckbox:SetValue(self.db.profile.ShowHerbalism);
    herbCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowHerbalism = herbCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(herbCheckbox);

    local fishingCheckbox = AceGUI:Create("CheckBox");
    fishingCheckbox:SetType("checkbox");
    fishingCheckbox:SetLabel("Show Fish");
    fishingCheckbox:SetValue(self.db.profile.ShowFish);
    fishingCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowFish = fishingCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(fishingCheckbox);

    local clothCheckbox = AceGUI:Create("CheckBox");
    clothCheckbox:SetType("checkbox");
    clothCheckbox:SetLabel("Show Cloth");
    clothCheckbox:SetValue(self.db.profile.ShowCloth);
    clothCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowCloth = clothCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(clothCheckbox);

    local oreCheckbox = AceGUI:Create("CheckBox");
    oreCheckbox:SetType("checkbox");
    oreCheckbox:SetLabel("Show Ore");
    oreCheckbox:SetValue(self.db.profile.ShowOre);
    oreCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowOre = oreCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(oreCheckbox);

    local leatherCheckbox = AceGUI:Create("CheckBox");
    leatherCheckbox:SetType("checkbox");
    leatherCheckbox:SetLabel("Show Leather");
    leatherCheckbox:SetValue(self.db.profile.ShowLeather);
    leatherCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowLeather = leatherCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(leatherCheckbox);

    local allCharsCheckbox = AceGUI:Create("CheckBox");
    allCharsCheckbox:SetType("checkbox");
    allCharsCheckbox:SetLabel("Show All Characters");
    allCharsCheckbox:SetValue(self.db.profile.ShowAllCharacters);
    allCharsCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowAllCharacters = allCharsCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(allCharsCheckbox);

    itemsGroup = AceGUI:Create("InlineGroup");
    itemsGroup:SetTitle("Items");
    itemsGroup:SetFullWidth(true)
    scroll:AddChild(itemsGroup);
    frame:Show()
    Glockfarmer:PrintBags();
end  
function Glockfarmer:OnEnable()
    -- Called when the addon is enabled
    self:RegisterEvent("BAG_UPDATE")
end
function Glockfarmer:BAG_UPDATE()
    Glockfarmer:PrintBags();
end