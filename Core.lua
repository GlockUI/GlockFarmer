Glockfarmer = LibStub("AceAddon-3.0"):NewAddon("Glockfarmer", "AceConsole-3.0", "AceEvent-3.0");
local AceGUI = LibStub("AceGUI-3.0");
local playerN = UnitName("player");
local realm = GetRealmName();
local playerName = playerN .. "-" .. realm;
local frame = AceGUI:Create("Frame");
frame:SetLayout("Fill");
frame:SetTitle("Glock Farmer");

local Defaults = {
    profile = {
        SchemaVersion = 0.2,
        ShowHerbalism = true,
        Herbs = {
            ShowDeathBlossom = true,
            ShowNightShade = true,
            ShowRisingGlory = true,
            ShowMarrowRoot = true,
            ShowWidowbloom = true,
            ShowVigilsTorch = true,
        },
        ShowFish = true,
        Fish = {
            ShowLostSole = true,
            ShowSilverPike = true,
            ShowPocketBonefish = true,
            ShowIridescent = true,
            ShowSpinefinPiranha = true,
            ShowElysian = true
        },
        ShowCloth = true,
        Cloth = {
            ShowShroudedCloth = true,
            ShowLightlessSilk = true
        },
        ShowOre = true,
        Ore = {
            ShowLaestrite = true,
            ShowElethium = true,
            ShowSolenium = true,
            ShowOxxein = true,
            ShowPhaedrum = true,
            ShowSinvyr = true
        },
        ShowLeather = true,
        Leather = {
            ShowDesolate = true,
            ShowPallidBone = true,
            ShowCallous = true,
        },
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

local myOptionsTable = {
    name = "Glock Farmer",
    handler = Glockfarmer,
    type = "group",
    args = {
      moreoptions={
        name = "Herbs",
        type = "group",
        args={
            Herbalism = {
                name = "Shows All Herbs",
                desc = "",
                type = "toggle",
                set = "ToggleShowHerbs",
                get = "CanShowHerbs"
            },            
            ShowDeathBlossom = {
                name = "Show Death Blossom",
                desc = "",
                type = "toggle",
                set = "ToggleShowDeathblossom",
                get = "CanShowDeathblossom",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
            ShowNightShade = {
                name = "Show Night Shade",
                desc = "",
                type = "toggle",
                set = "ToggleShowNightShade",
                get = "CanShowNightShade",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
            ShowRisingGlory = {
                name = "Show Rising Glory",
                desc = "",
                type = "toggle",
                set = "ToggleShowRisingGlory",
                get = "CanShowRisingGlory",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
            ShowMarrowRoot = {
                name = "Show Marrowroot",
                desc = "",
                type = "toggle",
                set = "ToggleShowMarrowRoot",
                get = "CanShowMarrowRoot",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
            ShowWidowbloom = {
                name = "Show Widowbloom",
                desc = "",
                type = "toggle",
                set = "ToggleShowWidowbloom",
                get = "CanShowWidowbloom",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
            ShowVigilsTorch = {
                name = "Show Vigils Torch",
                desc = "",
                type = "toggle",
                set = "ToggleShowVigilsTorch",
                get = "CanShowVigilsTorch",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end
            },
        }
      }
    }
  }

local itemsGroup;
local herbCheckbox;
local fishingCheckbox;
local clothCheckbox;
local oreCheckbox;
local leatherCheckbox;
local allCharsCheckbox;

local optionDialog;

local IsBankOpen = false;


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
        Glockfarmer:PrintBags();        
    else
        print("Proper argument not given! please provide show, hide, or scan")
    end
end
function Glockfarmer:CreateRow(labelName, bag, reagent, bank)
    local group = AceGUI:Create("SimpleGroup");
    group:SetLayout("Flow");
    group:SetFullWidth(true);
    local label = AceGUI:Create("Label");
    label:SetText(labelName .. ": ");
    label:SetWidth(110);
    group:AddChild(label);

    local bagLabel = AceGUI:Create("Label");
    bagLabel:SetText("Bag:" .. bag);
    bagLabel:SetWidth(60);
    group:AddChild(bagLabel);

    local reagentLabel = AceGUI:Create("Label");
    reagentLabel:SetText("Reagent:" .. reagent);
    reagentLabel:SetWidth(80);
    group:AddChild(reagentLabel);

    local bankLabel = AceGUI:Create("Label");
    bankLabel:SetText("Bank:" .. bank);
    bankLabel:SetWidth(60);
    group:AddChild(bankLabel);    
    return group;
end
function Glockfarmer:PrintHerbs(playerHerbs, itemFrame)
    local herbsGroup = AceGUI:Create("InlineGroup");
    herbsGroup:SetTitle("Herbs");
    herbsGroup:SetWidth(340);
    herbsGroup:SetLayout("Flow")
    
    if(Glockfarmer:CanShowDeathblossom())
    then
        local deathBlossomGroup = Glockfarmer:CreateRow("Death Blossom", playerHerbs.DeathBlossom.Bag, playerHerbs.DeathBlossom.ReagentBank, playerHerbs.DeathBlossom.Bank);
        herbsGroup:AddChild(deathBlossomGroup);
    end

    if(Glockfarmer:CanShowNightShade())
    then
        local nightshadeGroup = Glockfarmer:CreateRow("Nightshade", playerHerbs.NightShade.Bag, playerHerbs.NightShade.ReagentBank, playerHerbs.NightShade.Bank);
        herbsGroup:AddChild(nightshadeGroup);
    end

    if(Glockfarmer:CanShowRisingGlory())
    then
        local risingGloryGroup = Glockfarmer:CreateRow("Rising Glory", playerHerbs.RisingGlory.Bag, playerHerbs.RisingGlory.ReagentBank, playerHerbs.RisingGlory.Bank);
        herbsGroup:AddChild(risingGloryGroup);
    end

    if(Glockfarmer:CanShowMarrowRoot())
    then
        local marrowrootGroup = Glockfarmer:CreateRow("Marrowroot", playerHerbs.Marrowroot.Bag, playerHerbs.Marrowroot.ReagentBank, playerHerbs.Marrowroot.Bank);
        herbsGroup:AddChild(marrowrootGroup);
    end

    if(Glockfarmer:CanShowWidowbloom())
    then
        local widowbloomGroup = Glockfarmer:CreateRow("Widowbloom", playerHerbs.Widowbloom.Bag, playerHerbs.Widowbloom.ReagentBank, playerHerbs.Widowbloom.Bank);
        herbsGroup:AddChild(widowbloomGroup);
    end

    if(Glockfarmer:CanShowVigilsTorch())
    then
        local vigilsTorchGroup = Glockfarmer:CreateRow("Vigils Torch", playerHerbs.VigilsTorch.Bag, playerHerbs.VigilsTorch.ReagentBank, playerHerbs.VigilsTorch.Bank);
        herbsGroup:AddChild(vigilsTorchGroup);
    end

    itemFrame:AddChild(herbsGroup);
end
function Glockfarmer:PrintFish(playerFish, itemFrame)
    local fishGroup = AceGUI:Create("InlineGroup");
    fishGroup:SetTitle("Fish");
    fishGroup:SetWidth(340);
    fishGroup:SetLayout("Flow");   
    
    local lostSoleGroup = Glockfarmer:CreateRow("Lost Sole", playerFish.LostSole.Bag, playerFish.LostSole.ReagentBank, playerFish.LostSole.Bank);
    fishGroup:AddChild(lostSoleGroup);

    local silvergillGroup = Glockfarmer:CreateRow("Silvergill Pike", playerFish.SilverPike.Bag, playerFish.SilverPike.ReagentBank, playerFish.SilverPike.Bank);
    fishGroup:AddChild(silvergillGroup);

    local poketGroup = Glockfarmer:CreateRow("Pocked Bonefish", playerFish.PoketBoneFish.Bag, playerFish.PoketBoneFish.ReagentBank, playerFish.PoketBoneFish.Bank);
    fishGroup:AddChild(poketGroup);

    local iridenscentGroup = Glockfarmer:CreateRow("Iridescent Amberjack", playerFish.Iridescent.Bag, playerFish.Iridescent.ReagentBank, playerFish.Iridescent.Bank);
    fishGroup:AddChild(iridenscentGroup);

    local spinefishroup = Glockfarmer:CreateRow("Spinefin Piranha", playerFish.SpinefinPiranha.Bag, playerFish.SpinefinPiranha.ReagentBank, playerFish.SpinefinPiranha.Bank);
    fishGroup:AddChild(spinefishroup);

    local elysianGroup = Glockfarmer:CreateRow("Elysian Thade", playerFish.Elysian.Bag, playerFish.Elysian.ReagentBank, playerFish.Elysian.Bank);
    fishGroup:AddChild(elysianGroup);

    itemFrame:AddChild(fishGroup);
end
function Glockfarmer:PrintCloth(playerCloth, itemFrame)    
    local clothGroup = AceGUI:Create("InlineGroup");
    clothGroup:SetTitle("Cloth");
    clothGroup:SetWidth(340);
    clothGroup:SetLayout("Flow");

    local shroudedClothGroup = Glockfarmer:CreateRow("Shrouded Cloth", playerCloth.ShroudedCloth.Bag, playerCloth.ShroudedCloth.ReagentBank, playerCloth.ShroudedCloth.Bank);
    clothGroup:AddChild(shroudedClothGroup);

    local lightlessClothGroup = Glockfarmer:CreateRow("Lightless Silk", playerCloth.LightlessSilk.Bag, playerCloth.LightlessSilk.ReagentBank, playerCloth.LightlessSilk.Bank);
    clothGroup:AddChild(lightlessClothGroup);

    itemFrame:AddChild(clothGroup);
end
function Glockfarmer:PrintOre(playerOre, itemFrame)
    local oreGroup = AceGUI:Create("InlineGroup");
    oreGroup:SetTitle("Ore");
    oreGroup:SetWidth(340);
    oreGroup:SetLayout("Flow");    

    local laestriteGroup = Glockfarmer:CreateRow("Laestrite Ore", playerOre.LaestriteOre.Bag, playerOre.LaestriteOre.ReagentBank, playerOre.LaestriteOre.Bank);
    oreGroup:AddChild(laestriteGroup);

    local elethiumGroup = Glockfarmer:CreateRow("Elethium Ore", playerOre.ElethiumOre.Bag, playerOre.ElethiumOre.ReagentBank, playerOre.ElethiumOre.Bank);
    oreGroup:AddChild(elethiumGroup);

    local soleniumGroup = Glockfarmer:CreateRow("Solenium Ore", playerOre.SoleniumOre.Bag, playerOre.SoleniumOre.ReagentBank, playerOre.SoleniumOre.Bank);
    oreGroup:AddChild(soleniumGroup);

    local oxxeinGroup = Glockfarmer:CreateRow("Oxxein Ore", playerOre.OxxeinOre.Bag, playerOre.OxxeinOre.ReagentBank, playerOre.OxxeinOre.Bank);
    oreGroup:AddChild(oxxeinGroup);

    local phaedrumGroup = Glockfarmer:CreateRow("Phaedrum Ore", playerOre.PhaedrumOre.Bag, playerOre.PhaedrumOre.ReagentBank, playerOre.PhaedrumOre.Bank);
    oreGroup:AddChild(phaedrumGroup);

    local sinvyrGroup = Glockfarmer:CreateRow("Sinvyr Ore", playerOre.SinvyrOre.Bag, playerOre.SinvyrOre.ReagentBank, playerOre.SinvyrOre.Bank);
    oreGroup:AddChild(sinvyrGroup);

    itemFrame:AddChild(oreGroup);
end
function Glockfarmer:PrintLeather(playerLeather, itemFrame)
    local leatherGroup = AceGUI:Create("InlineGroup");
    leatherGroup:SetTitle("Leather");
    leatherGroup:SetWidth(340);
    leatherGroup:SetLayout("Flow");


    local desolateGroup = Glockfarmer:CreateRow("Desolate Leather", playerLeather.DesolateLeather.Bag, playerLeather.DesolateLeather.ReagentBank, playerLeather.DesolateLeather.Bank);
    leatherGroup:AddChild(desolateGroup);

    local pallidBoneGroup = Glockfarmer:CreateRow("Pallid Bone", playerLeather.PallidBone.Bag, playerLeather.PallidBone.ReagentBank, playerLeather.PallidBone.Bank);
    leatherGroup:AddChild(pallidBoneGroup);

    local callousHideGroup = Glockfarmer:CreateRow("Callous Hide", playerLeather.CallousHide.Bag, playerLeather.CallousHide.ReagentBank, playerLeather.CallousHide.Bank);
    leatherGroup:AddChild(callousHideGroup);

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


    for i=0,4 do
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
function Glockfarmer:GetBank()
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


    for i=5,11 do
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

    self.db.global[playerName].Herbs.DeathBlossom.Bank = herbDBCount;
    self.db.global[playerName].Herbs.NightShade.Bank = herbNSCount;
    self.db.global[playerName].Herbs.RisingGlory.Bank = herbRGCount;
    self.db.global[playerName].Herbs.Marrowroot.Bank = herbMTCount;
    self.db.global[playerName].Herbs.VigilsTorch.Bank = herbWTCount;
    self.db.global[playerName].Herbs.VigilsTorch.Bank = herbVTCount;

    self.db.global[playerName].Fish.LostSole.Bank = fishingLSCount;
    self.db.global[playerName].Fish.SilverPike.Bank = fishingSPCount;
    self.db.global[playerName].Fish.PoketBoneFish.Bank = fishingPBCount;
    self.db.global[playerName].Fish.Iridescent.Bank = fishingIACount;
    self.db.global[playerName].Fish.SpinefinPiranha.Bank = fishingSpineCount;
    self.db.global[playerName].Fish.Elysian.Bank = fishingETCount;

    self.db.global[playerName].Cloth.LightlessSilk.Bank = clothLSCount;
    self.db.global[playerName].Cloth.ShroudedCloth.Bank = clothSCCount;

    self.db.global[playerName].Ore.LaestriteOre.Bank = laestriteOreCount;
    self.db.global[playerName].Ore.ElethiumOre.Bank = elethiumOreCount;
    self.db.global[playerName].Ore.SoleniumOre.Bank = soleniumOreCount;
    self.db.global[playerName].Ore.OxxeinOre.Bank = oxxeinOreCount;
    self.db.global[playerName].Ore.PhaedrumOre.Bank = phaedrumOreCount;
    self.db.global[playerName].Ore.SinvyrOre.Bank = sinvyrOreCount;

    self.db.global[playerName].Leather.DesolateLeather.Bank = desolateLeatherCount;
    self.db.global[playerName].Leather.PallidBone.Bank = pallidBoneCount;
    self.db.global[playerName].Leather.CallousHide.Bank = callousHideCount;

end
function Glockfarmer:ReloadLabel()
    itemsGroup:ReleaseChildren();
    if(self.db.profile.ShowAllCharacters)
    then
        for i, playerTable in pairs(self.db.global) do
            local playerGroup = AceGUI:Create("InlineGroup");
            playerGroup:SetTitle(i);
            playerGroup:SetWidth(360);
            playerGroup:SetLayout("Flow");
            

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
        playerGroup:SetFullWidth(true);
        playerGroup:SetLayout("Flow");
        

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
    if(IsBankOpen)
    then
        Glockfarmer:GetBank();
    end
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("FarmDB", Defaults, true)
    LibStub("AceConfig-3.0"):RegisterOptionsTable("GlockFarmer", myOptionsTable, {"gfopts"})
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("GlockFarmer", "GlockFarmer")

    local scroll = AceGUI:Create("ScrollFrame")
    scroll:SetLayout("List")
    frame:AddChild(scroll)

    local optsGroup = AceGUI:Create("InlineGroup");
    optsGroup:SetTitle("Professions");
    optsGroup:SetLayout("Flow")
    optsGroup:SetFullWidth(true)
    scroll:AddChild(optsGroup);

    herbCheckbox = AceGUI:Create("CheckBox");
    herbCheckbox:SetType("checkbox");
    herbCheckbox:SetLabel("Show Herbs");
    herbCheckbox:SetValue(self.db.profile.ShowHerbalism);
    herbCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowHerbalism = herbCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(herbCheckbox);

    fishingCheckbox = AceGUI:Create("CheckBox");
    fishingCheckbox:SetType("checkbox");
    fishingCheckbox:SetLabel("Show Fish");
    fishingCheckbox:SetValue(self.db.profile.ShowFish);
    fishingCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowFish = fishingCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(fishingCheckbox);

    clothCheckbox = AceGUI:Create("CheckBox");
    clothCheckbox:SetType("checkbox");
    clothCheckbox:SetLabel("Show Cloth");
    clothCheckbox:SetValue(self.db.profile.ShowCloth);
    clothCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowCloth = clothCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(clothCheckbox);

    oreCheckbox = AceGUI:Create("CheckBox");
    oreCheckbox:SetType("checkbox");
    oreCheckbox:SetLabel("Show Ore");
    oreCheckbox:SetValue(self.db.profile.ShowOre);
    oreCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowOre = oreCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(oreCheckbox);

    leatherCheckbox = AceGUI:Create("CheckBox");
    leatherCheckbox:SetType("checkbox");
    leatherCheckbox:SetLabel("Show Leather");
    leatherCheckbox:SetValue(self.db.profile.ShowLeather);
    leatherCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowLeather = leatherCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(leatherCheckbox);

    allCharsCheckbox = AceGUI:Create("CheckBox");
    allCharsCheckbox:SetType("checkbox");
    allCharsCheckbox:SetLabel("Show All Characters");
    allCharsCheckbox:SetValue(self.db.profile.ShowAllCharacters);
    allCharsCheckbox:SetCallback("OnValueChanged", function(widget) 
        self.db.profile.ShowAllCharacters = allCharsCheckbox:GetValue();
        Glockfarmer:PrintBags();
    end);
    optsGroup:AddChild(allCharsCheckbox);

    local button = AceGUI:Create("Button")
    button:SetText("More Options")
    button:SetWidth(100)
    button:SetCallback("OnClick", function() 
        InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
    end)
    optsGroup:AddChild(button)

    itemsGroup = AceGUI:Create("InlineGroup");
    itemsGroup:SetTitle("Items");
    itemsGroup:SetFullWidth(true)
    itemsGroup:SetLayout("Flow")
    scroll:AddChild(itemsGroup);
    frame:Show()
    Glockfarmer:PrintBags();
end  
function Glockfarmer:OnEnable()
    -- Called when the addon is enabled
    self:RegisterEvent("BAG_UPDATE")
    self:RegisterEvent("BANKFRAME_OPENED");
    self:RegisterEvent("BANKFRAME_CLOSED");
end
function Glockfarmer:BAG_UPDATE()
    Glockfarmer:PrintBags();
end
function Glockfarmer:BANKFRAME_OPENED()
    IsBankOpen = true;
    Glockfarmer:GetBank();
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:BANKFRAME_CLOSED()
    IsBankOpen = false;
end
function Glockfarmer:ToggleShowHerbs(info,val)
    self.db.profile.ShowHerbalism = val;
    herbCheckbox:SetValue(self.db.profile.ShowHerbalism);
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowHerbs(info)
    return self.db.profile.ShowHerbalism;
end
function Glockfarmer:ToggleShowDeathblossom(info,val)
    self.db.profile.Herbs.ShowDeathBlossom = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowDeathblossom(info)
    return self.db.profile.Herbs.ShowDeathBlossom;
end
function Glockfarmer:ToggleShowNightShade(info,val)
    self.db.profile.Herbs.ShowNightShade = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowNightShade(info)
    return self.db.profile.Herbs.ShowNightShade;
end
function Glockfarmer:ToggleShowRisingGlory(info,val)
    self.db.profile.Herbs.ShowRisingGlory = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowRisingGlory(info)
    return self.db.profile.Herbs.ShowRisingGlory;
end
function Glockfarmer:ToggleShowMarrowRoot(info,val)
    self.db.profile.Herbs.ShowMarrowRoot = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowMarrowRoot(info)
    return self.db.profile.Herbs.ShowMarrowRoot;
end
function Glockfarmer:ToggleShowWidowbloom(info,val)
    self.db.profile.Herbs.ShowWidowbloom = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowWidowbloom(info)
    return self.db.profile.Herbs.ShowWidowbloom;
end
function Glockfarmer:ToggleShowVigilsTorch(info,val)
    self.db.profile.Herbs.ShowVigilsTorch = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowVigilsTorch(info)
    return self.db.profile.Herbs.ShowVigilsTorch;
end