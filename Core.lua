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
            DeathBlossom = {
                Show = true,
                Need = 0,
            },
            Nightshade = {
                Show = true,
                Need = 0,
            },
            RisingGlory = {
                Show = true,
                Need = 0,
            },
            Marrowroot = {
                Show = true,
                Need = 0,
            },
            Widowbloom = {
                Show = true,
                Need = 0,
            },
            VigilsTorch = {
                Show = true,
                Need = 0,
            },
        },
        ShowFish = true,
        Fish = {
            LostSole = {
                Show = true,
                Need = 0,
            },
            SilverPike = {
                Show = true,
                Need = 0,
            },
            PoketFish = {
                Show = true,
                Need = 0,
            },
            PocketBonefish = {
                Show = true,
                Need = 0,
            },
            Iridescent = {
                Show = true,
                Need = 0,
            },
            SpinefinPiranha = {
                Show = true,
                Need = 0,
            },
            Elysian = {
                Show = true,
                Need = 0,
            }
        },
        ShowCloth = true,
        Cloth = {
            ShroudedCloth = {
                Show = true,
                Need = 0,
            },
            LightlessSilk = {
                Show = true,
                Need = 0
            }
        },
        ShowOre = true,
        Ore = {
            Laestrite = {
                Show = true,
                Need = 0
            },
            Elethium = {
                Show = true,
                Need = 0
            },
            Solenium = {
                Show = true,
                Need = 0
            },
            Oxxein = {
                Show = true,
                Need = 0
            },
            Phaedrum = {
                Show = true,
                Need = 0
            },
            Sinvyr = {
                Show = true,
                Need = 0
            }
        },
        ShowLeather = true,
        Leather = {
            Desolate = {
                Show = true,
                Need = 0
            },
            PallidBone = {
                Show = true,
                Need = 0
            },
            Callous = {
                Show = true,
                Need = 0
            }
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
      HerbOptions={
        name = "Herbs",
        type = "group",
        args={
            Herbalism = {
                name = "Shows All Herbs",
                desc = "",
                type = "toggle",
                set = "ToggleShowHerbs",
                get = "CanShowHerbs",
                order = 0,
                width = "full"
            },      
            ShowDeathBlossom = {
                name = "Show Death Blossom",
                desc = "",
                type = "toggle",
                set = "ToggleShowDeathblossom",
                get = "CanShowDeathblossom",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 1,
            },
            DeathBlossomNeeded = {
                name = "Death Blossom Needed",
                desc = "",
                type = "input",
                set = "SetDeathblossomNeeded",
                get = "GetDeathblossomNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowDeathblossom(info) end,
                order = 2,
                validate = "CheckNumber",
                confirm = false
            },
            ShowNightShade = {
                name = "Show Night Shade",
                desc = "",
                type = "toggle",
                set = "ToggleShowNightShade",
                get = "CanShowNightShade",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 3,
            },
            NightShadeNeeded = {
                name = "Night Shade Needed",
                desc = "",
                type = "input",
                set = "SetNightShadeNeeded",
                get = "GetNightShadeNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowNightShade(info) end,
                order = 4,
                validate = "CheckNumber",
                confirm = false
            },
            ShowRisingGlory = {
                name = "Show Rising Glory",
                desc = "",
                type = "toggle",
                set = "ToggleShowRisingGlory",
                get = "CanShowRisingGlory",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 5,
            },
            RisingGloryNeeded = {
                name = "Rising Glory Needed",
                desc = "",
                type = "input",
                set = "SetRisingGloryNeeded",
                get = "GetRisingGloryNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowRisingGlory(info) end,
                order = 6,
                validate = "CheckNumber",
                confirm = false
            },
            ShowMarrowRoot = {
                name = "Show MarrowRoot",
                desc = "",
                type = "toggle",
                set = "ToggleShowMarrowRoot",
                get = "CanShowMarrowRoot",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 7,
            },
            MarrowRootNeeded = {
                name = "MarrowRoot Needed",
                desc = "",
                type = "input",
                set = "SetMarrowRootNeeded",
                get = "GetMarrowRootNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowMarrowRoot(info) end,
                order = 8,
                validate = "CheckNumber",
                confirm = false
            },
            ShowWidowbloom = {
                name = "Show Widowbloom",
                desc = "",
                type = "toggle",
                set = "ToggleShowWidowbloom",
                get = "CanShowWidowbloom",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 9,
            },
            WidowbloomNeeded = {
                name = "Widowbloom Needed",
                desc = "",
                type = "input",
                set = "SetWidowbloomNeeded",
                get = "GetWidowbloomNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowWidowbloom(info) end,
                order = 10,
                validate = "CheckNumber",
                confirm = false
            },
            ShowVigilsTorch = {
                name = "Show Vigils Torch",
                desc = "",
                type = "toggle",
                set = "ToggleShowVigilsTorch",
                get = "CanShowVigilsTorch",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) end,
                order = 11,
            },
            VigilsTorchNeeded = {
                name = "Vigils Torch Needed",
                desc = "",
                type = "input",
                set = "SetVigilsTorchNeeded",
                get = "GetVigilsTorchNeeded",
                disabled = function(info) return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowVigilsTorch(info) end,
                order = 12,
                validate = "CheckNumber",
                confirm = false
            },
        }
      },
      FishOptions={
        name = "Fish",
        type = "group",
        args={
            Fish = {
                name = "Shows All Fish",
                desc = "",
                type = "toggle",
                set = "ToggleShowFish",
                get = "CanShowFish",
                order = 0,
                width = "full"
            },            
            ShowLostSole = {
                name = "Show Lost Sole",
                desc = "",
                type = "toggle",
                set = "ToggleShowLostSole",
                get = "CanShowLostSole",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 1,
            },
            LostSoleNeeded = {
                name = "Lost Sole Needed",
                desc = "",
                type = "input",
                set = "SetLostSoleNeeded",
                get = "GetLostSoleNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowLostSole(info) end,
                order = 2,
                validate = "CheckNumber",
                confirm = false
            },
            ShowSilverPike = {
                name = "Show Silver Pike",
                desc = "",
                type = "toggle",
                set = "ToggleShowSilverPike",
                get = "CanShowSilverPike",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 3,
            },
            SilverPikeNeeded = {
                name = "Silver Pike Needed",
                desc = "",
                type = "input",
                set = "SetSilverPikeNeeded",
                get = "GetSilverPikeNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowSilverPike(info) end,
                order = 4,
                validate = "CheckNumber",
                confirm = false
            },
            ShowPocketBonefish = {
                name = "Show Pocket Bonefish",
                desc = "",
                type = "toggle",
                set = "ToggleShowPocketBonefish",
                get = "CanShowPocketBonefish",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 5,
            },
            PocketBonefishNeeded = {
                name = "Pocket Bonefish Needed",
                desc = "",
                type = "input",
                set = "SetPocketBonefishNeeded",
                get = "GetPocketBonefishNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowPocketBonefish(info) end,
                order = 6,
                validate = "CheckNumber",
                confirm = false
            },
            ShowIridescent = {
                name = "Show Iridescent Amberjack",
                desc = "",
                type = "toggle",
                set = "ToggleShowIridescent",
                get = "CanShowIridescent",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 7,
            },
            IridescentNeeded = {
                name = "Iridescent Amberjack Needed",
                desc = "",
                type = "input",
                set = "SetIridescentNeeded",
                get = "GetIridescentNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowIridescent(info) end,
                order = 8,
                validate = "CheckNumber",
                confirm = false
            },
            ShowSpinefinPiranha = {
                name = "Show Spinefin Piranha",
                desc = "",
                type = "toggle",
                set = "ToggleShowSpinefinPiranha",
                get = "CanShowSpinefinPiranha",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 9,
            },
            SpinefinPiranhaNeeded = {
                name = "Spinefin Piranha Needed",
                desc = "",
                type = "input",
                set = "SetSpinefinPiranhaNeeded",
                get = "GetSpinefinPiranhaNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowSpinefinPiranha(info) end,
                order = 10,
                validate = "CheckNumber",
                confirm = false
            },
            ShowElysian = {
                name = "Show Elysian Thade",
                desc = "",
                type = "toggle",
                set = "ToggleShowElysian",
                get = "CanShowElysian",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) end,
                order = 11,
            },
            ElysianNeeded = {
                name = "Elysian Thade Needed",
                desc = "",
                type = "input",
                set = "SetElysianNeeded",
                get = "GetElysianNeeded",
                disabled = function(info) return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowElysian(info) end,
                order = 12,
                validate = "CheckNumber",
                confirm = false
            },
        }
      },
      ClothOptions={
        name = "Cloth",
        type = "group",
        args={
            Cloth = {
                name = "Shows All Cloth",
                desc = "",
                type = "toggle",
                set = "ToggleShowCloth",
                get = "CanShowCloth",
                order = 0,
                width = "full"
            },            
            ShowShroudedCloth = {
                name = "Show Shrouded Cloth",
                desc = "",
                type = "toggle",
                set = "ToggleShowShroudedCloth",
                get = "CanShowShroudedCloth",
                disabled = function(info) return not Glockfarmer:CanShowCloth(info) end,
                order = 1,
            },
            ShroudedClothNeeded = {
                name = "Shrouded Cloth Needed",
                desc = "",
                type = "input",
                set = "SetShroudedClothNeeded",
                get = "GetShroudedClothNeeded",
                disabled = function(info) return not Glockfarmer:CanShowCloth(info) or not Glockfarmer:CanShowShroudedCloth(info) end,
                order = 2,
                validate = "CheckNumber",
                confirm = false
            },
            ShowLightlessSilk = {
                name = "Show Lightless Silk",
                desc = "",
                type = "toggle",
                set = "ToggleShowLightlessSilk",
                get = "CanShowLightlessSilk",
                disabled = function(info) return not Glockfarmer:CanShowCloth(info) end,
                order = 3,
            },
            LightlessSilkNeeded = {
                name = "Lightless Silk Needed",
                desc = "",
                type = "input",
                set = "SetLightlessSilkNeeded",
                get = "GetLightlessSilkNeeded",
                disabled = function(info) return not Glockfarmer:CanShowCloth(info) or not Glockfarmer:CanShowLightlessSilk(info) end,
                order = 4,
                validate = "CheckNumber",
                confirm = false
            },
        }
      },
      LeatherOptions={
        name = "Leather",
        type = "group",
        args={
            Leather = {
                name = "Shows All Leather",
                desc = "",
                type = "toggle",
                set = "ToggleShowLeather",
                get = "CanShowLeather",
                order = 0,
                width = "full"
            },            
            ShowDesolate = {
                name = "Show Desolate",
                desc = "",
                type = "toggle",
                set = "ToggleShowDesolate",
                get = "CanShowDesolate",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) end,
                order = 1,
            },
            DesolateNeeded = {
                name = "Desolate Needed",
                desc = "",
                type = "input",
                set = "SetDesolateNeeded",
                get = "GetDesolateNeeded",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowDesolate(info) end,
                order = 2,
                validate = "CheckNumber",
                confirm = false
            },
            ShowPallidBone = {
                name = "Show Pallid Bone",
                desc = "",
                type = "toggle",
                set = "ToggleShowPallidBone",
                get = "CanShowPallidBone",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) end,
                order = 3,
            },
            PallidBoneNeeded = {
                name = "Pallid Bone Needed",
                desc = "",
                type = "input",
                set = "SetPallidBoneNeeded",
                get = "GetPallidBoneNeeded",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowPallidBone(info) end,
                order = 4,
                validate = "CheckNumber",
                confirm = false
            },
            ShowCallous = {
                name = "Show Callous Hide",
                desc = "",
                type = "toggle",
                set = "ToggleShowCallous",
                get = "CanShowCallous",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) end,
                order = 5,
            },
            CallousNeeded = {
                name = "Callous Hide Needed",
                desc = "",
                type = "input",
                set = "SetCallousNeeded",
                get = "GetCallousNeeded",
                disabled = function(info) return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowCallous(info) end,
                order = 6,
                validate = "CheckNumber",
                confirm = false
            },
        }
      },
      OreOptions={
        name = "Ore",
        type = "group",
        args={
            Ore = {
                name = "Shows All Ore",
                desc = "",
                type = "toggle",
                set = "ToggleShowOre",
                get = "CanShowOre",
                order = 0,
                width = "full"
            },            
            ShowLaestrite = {
                name = "Show Laestrite",
                desc = "",
                type = "toggle",
                set = "ToggleShowLaestrite",
                get = "CanShowLaestrite",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 1,
            },
            LaestriteNeeded = {
                name = "Laestrite Needed",
                desc = "",
                type = "input",
                set = "SetLaestriteNeeded",
                get = "GetLaestriteNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowLaestrite(info) end,
                order = 2,
                validate = "CheckNumber",
                confirm = false
            },
            ShowElethium = {
                name = "Show Elethium",
                desc = "",
                type = "toggle",
                set = "ToggleShowElethium",
                get = "CanShowElethium",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 3,
            },
            ElethiumNeeded = {
                name = "Elethium Needed",
                desc = "",
                type = "input",
                set = "SetElethiumNeeded",
                get = "GetElethiumNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowElethium(info) end,
                order = 4,
                validate = "CheckNumber",
                confirm = false
            },
            ShowSolenium = {
                name = "Show Solenium",
                desc = "",
                type = "toggle",
                set = "ToggleShowSolenium",
                get = "CanShowSolenium",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 5,
            },
            SoleniumNeeded = {
                name = "Solenium Needed",
                desc = "",
                type = "input",
                set = "SetSoleniumNeeded",
                get = "GetSoleniumNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowSolenium(info) end,
                order = 6,
                validate = "CheckNumber",
                confirm = false
            },
            ShowOxxein = {
                name = "Show Oxxein",
                desc = "",
                type = "toggle",
                set = "ToggleShowOxxein",
                get = "CanShowOxxein",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 7,
            },
            OxxeinNeeded = {
                name = "Oxxein Needed",
                desc = "",
                type = "input",
                set = "SetOxxeinNeeded",
                get = "GetOxxeinNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowOxxein(info) end,
                order = 8,
                validate = "CheckNumber",
                confirm = false
            },
            ShowPhaedrum = {
                name = "Show Phaedrum",
                desc = "",
                type = "toggle",
                set = "ToggleShowPhaedrum",
                get = "CanShowPhaedrum",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 9,
            },
            PhaedrumNeeded = {
                name = "Phaedrum Needed",
                desc = "",
                type = "input",
                set = "SetPhaedrumNeeded",
                get = "GetPhaedrumNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowPhaedrum(info) end,
                order = 10,
                validate = "CheckNumber",
                confirm = false
            },
            ShowSinvyr = {
                name = "Show Sinvyr",
                desc = "",
                type = "toggle",
                set = "ToggleShowSinvyr",
                get = "CanShowSinvyr",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) end,
                order = 11,
            },
            SinvyrNeeded = {
                name = "Sinvyr Needed",
                desc = "",
                type = "input",
                set = "SetSinvyrNeeded",
                get = "GetSinvyrNeeded",
                disabled = function(info) return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowSinvyr(info) end,
                order = 12,
                validate = "CheckNumber",
                confirm = false
            },
        }
      }, 
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
function Glockfarmer:CreateRow(labelName, bag, reagent, bank, need)
    local group = AceGUI:Create("SimpleGroup");
    group:SetLayout("Flow");
    group:SetFullWidth(true);
    local label = AceGUI:Create("Label");
    label:SetText(labelName .. ": ");
    label:SetWidth(110);
    group:AddChild(label);

    if(need > 0)
    then
        local needLabel = AceGUI:Create("Label");
        needLabel:SetText("Need:" .. need);
        needLabel:SetWidth(60);
        group:AddChild(needLabel);
    else
        local needLabel = AceGUI:Create("Label");
        needLabel:SetText("Need: 0");
        needLabel:SetWidth(60);
        group:AddChild(needLabel);
    end

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
    herbsGroup:SetWidth(400);
    herbsGroup:SetLayout("Flow")
    
    if(Glockfarmer:CanShowDeathblossom())
    then
        local need = Glockfarmer:GetDeathblossomNeeded() - (playerHerbs.DeathBlossom.Bag + playerHerbs.DeathBlossom.ReagentBank + playerHerbs.DeathBlossom.Bank);
        local deathBlossomGroup = Glockfarmer:CreateRow("Death Blossom", playerHerbs.DeathBlossom.Bag, playerHerbs.DeathBlossom.ReagentBank, playerHerbs.DeathBlossom.Bank, need);
        herbsGroup:AddChild(deathBlossomGroup);
    end

    if(Glockfarmer:CanShowNightShade())
    then
        local need = Glockfarmer:GetNightShadeNeeded() - (playerHerbs.NightShade.Bag + playerHerbs.NightShade.ReagentBank + playerHerbs.NightShade.Bank);
        local nightshadeGroup = Glockfarmer:CreateRow("Nightshade", playerHerbs.NightShade.Bag, playerHerbs.NightShade.ReagentBank, playerHerbs.NightShade.Bank, need);
        herbsGroup:AddChild(nightshadeGroup);
    end

    if(Glockfarmer:CanShowRisingGlory())
    then
        local need = Glockfarmer:GetRisingGloryNeeded() - (playerHerbs.RisingGlory.Bag + playerHerbs.RisingGlory.ReagentBank + playerHerbs.RisingGlory.Bank);
        local risingGloryGroup = Glockfarmer:CreateRow("Rising Glory", playerHerbs.RisingGlory.Bag, playerHerbs.RisingGlory.ReagentBank, playerHerbs.RisingGlory.Bank, need);
        herbsGroup:AddChild(risingGloryGroup);
    end

    if(Glockfarmer:CanShowMarrowRoot())
    then
        local need = Glockfarmer:GetMarrowRootNeeded() - (playerHerbs.Marrowroot.Bag + playerHerbs.Marrowroot.ReagentBank + playerHerbs.Marrowroot.Bank);
        local marrowrootGroup = Glockfarmer:CreateRow("Marrowroot", playerHerbs.Marrowroot.Bag, playerHerbs.Marrowroot.ReagentBank, playerHerbs.Marrowroot.Bank, need);
        herbsGroup:AddChild(marrowrootGroup);
    end

    if(Glockfarmer:CanShowWidowbloom())
    then
        local need = Glockfarmer:GetWidowbloomNeeded() - (playerHerbs.Widowbloom.Bag + playerHerbs.Widowbloom.ReagentBank + playerHerbs.Widowbloom.Bank);
        local widowbloomGroup = Glockfarmer:CreateRow("Widowbloom", playerHerbs.Widowbloom.Bag, playerHerbs.Widowbloom.ReagentBank, playerHerbs.Widowbloom.Bank, need);
        herbsGroup:AddChild(widowbloomGroup);
    end

    if(Glockfarmer:CanShowVigilsTorch())
    then
        local need = Glockfarmer:GetWidowbloomNeeded() - (playerHerbs.VigilsTorch.Bag + playerHerbs.VigilsTorch.ReagentBank + playerHerbs.VigilsTorch.Bank);
        local vigilsTorchGroup = Glockfarmer:CreateRow("Vigils Torch", playerHerbs.VigilsTorch.Bag, playerHerbs.VigilsTorch.ReagentBank, playerHerbs.VigilsTorch.Bank, need);
        herbsGroup:AddChild(vigilsTorchGroup);
    end

    itemFrame:AddChild(herbsGroup);
end
function Glockfarmer:PrintFish(playerFish, itemFrame)
    local fishGroup = AceGUI:Create("InlineGroup");
    fishGroup:SetTitle("Fish");
    fishGroup:SetWidth(400);
    fishGroup:SetLayout("Flow");   
    
    if(Glockfarmer:CanShowLostSole())
    then
        local need = Glockfarmer:GetLostSoleNeeded() - (playerFish.LostSole.Bag + playerFish.LostSole.ReagentBank + playerFish.LostSole.Bank);
        local lostSoleGroup = Glockfarmer:CreateRow("Lost Sole", playerFish.LostSole.Bag, playerFish.LostSole.ReagentBank, playerFish.LostSole.Bank, need);
        fishGroup:AddChild(lostSoleGroup);
    end

    if(Glockfarmer:CanShowSilverPike())
    then
        local need = Glockfarmer:GetSilverPikeNeeded() - (playerFish.SilverPike.Bag + playerFish.SilverPike.ReagentBank + playerFish.SilverPike.Bank);
        local silvergillGroup = Glockfarmer:CreateRow("Silvergill Pike", playerFish.SilverPike.Bag, playerFish.SilverPike.ReagentBank, playerFish.SilverPike.Bank, need);
        fishGroup:AddChild(silvergillGroup);
    end

    if(Glockfarmer:CanShowPocketBonefish())
    then
        local need = Glockfarmer:GetPocketBonefishNeeded() - (playerFish.PoketBoneFish.Bag + playerFish.PoketBoneFish.ReagentBank + playerFish.PoketBoneFish.Bank);
        local poketGroup = Glockfarmer:CreateRow("Pocked Bonefish", playerFish.PoketBoneFish.Bag, playerFish.PoketBoneFish.ReagentBank, playerFish.PoketBoneFish.Bank, need);
        fishGroup:AddChild(poketGroup);
    end

    if(Glockfarmer:CanShowIridescent())
    then
        local need = Glockfarmer:GetIridescentNeeded() - (playerFish.Iridescent.Bag + playerFish.Iridescent.ReagentBank + playerFish.Iridescent.Bank);
        local iridenscentGroup = Glockfarmer:CreateRow("Iridescent Amberjack", playerFish.Iridescent.Bag, playerFish.Iridescent.ReagentBank, playerFish.Iridescent.Bank, need);
        fishGroup:AddChild(iridenscentGroup);
    end

    if(Glockfarmer:CanShowSpinefinPiranha())
    then
        local need = Glockfarmer:GetSpinefinPiranhaNeeded() - (playerFish.SpinefinPiranha.Bag + playerFish.SpinefinPiranha.ReagentBank + playerFish.SpinefinPiranha.Bank);
        local spinefishroup = Glockfarmer:CreateRow("Spinefin Piranha", playerFish.SpinefinPiranha.Bag, playerFish.SpinefinPiranha.ReagentBank, playerFish.SpinefinPiranha.Bank, need);
        fishGroup:AddChild(spinefishroup);
    end

    if(Glockfarmer:CanShowElysian())
    then
        local need = Glockfarmer:GetElysianNeeded() - (playerFish.Elysian.Bag + playerFish.Elysian.ReagentBank + playerFish.Elysian.Bank);
        local elysianGroup = Glockfarmer:CreateRow("Elysian Thade", playerFish.Elysian.Bag, playerFish.Elysian.ReagentBank, playerFish.Elysian.Bank, need);
        fishGroup:AddChild(elysianGroup);
    end

    itemFrame:AddChild(fishGroup);
end
function Glockfarmer:PrintCloth(playerCloth, itemFrame)    
    local clothGroup = AceGUI:Create("InlineGroup");
    clothGroup:SetTitle("Cloth");
    clothGroup:SetWidth(400);
    clothGroup:SetLayout("Flow");

    if(Glockfarmer:CanShowShroudedCloth())
    then
        local need = Glockfarmer:GetShroudedClothNeeded() - (playerCloth.ShroudedCloth.Bag + playerCloth.ShroudedCloth.ReagentBank + playerCloth.ShroudedCloth.Bank);
        local shroudedClothGroup = Glockfarmer:CreateRow("Shrouded Cloth", playerCloth.ShroudedCloth.Bag, playerCloth.ShroudedCloth.ReagentBank, playerCloth.ShroudedCloth.Bank, need);
        clothGroup:AddChild(shroudedClothGroup);
    end

    if(Glockfarmer:CanShowLightlessSilk())
    then
        local need = Glockfarmer:GetLightlessSilkNeeded() - (playerCloth.LightlessSilk.Bag + playerCloth.LightlessSilk.ReagentBank + playerCloth.LightlessSilk.Bank);
        local lightlessClothGroup = Glockfarmer:CreateRow("Lightless Silk", playerCloth.LightlessSilk.Bag, playerCloth.LightlessSilk.ReagentBank, playerCloth.LightlessSilk.Bank, need);
        clothGroup:AddChild(lightlessClothGroup);
    end   

    itemFrame:AddChild(clothGroup);
end
function Glockfarmer:PrintOre(playerOre, itemFrame)
    local oreGroup = AceGUI:Create("InlineGroup");
    oreGroup:SetTitle("Ore");
    oreGroup:SetWidth(400);
    oreGroup:SetLayout("Flow");    

    if(Glockfarmer:CanShowLaestrite())
    then
        local need = Glockfarmer:GetLaestriteNeeded() - (playerOre.LaestriteOre.Bag + playerOre.LaestriteOre.ReagentBank + playerOre.LaestriteOre.Bank);
        local laestriteGroup = Glockfarmer:CreateRow("Laestrite Ore", playerOre.LaestriteOre.Bag, playerOre.LaestriteOre.ReagentBank, playerOre.LaestriteOre.Bank, need);
        oreGroup:AddChild(laestriteGroup);
    end

    if(Glockfarmer:CanShowElethium())
    then
        local need = Glockfarmer:GetElethiumNeeded() - (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        local elethiumGroup = Glockfarmer:CreateRow("Elethium Ore", playerOre.ElethiumOre.Bag, playerOre.ElethiumOre.ReagentBank, playerOre.ElethiumOre.Bank, need);
        oreGroup:AddChild(elethiumGroup);
    end

    if(Glockfarmer:CanShowSolenium())
    then
        local need = Glockfarmer:GetSoleniumNeeded() - (playerOre.ElethiumOre.Bag + playerOre.ElethiumOre.ReagentBank + playerOre.ElethiumOre.Bank);
        local soleniumGroup = Glockfarmer:CreateRow("Solenium Ore", playerOre.SoleniumOre.Bag, playerOre.SoleniumOre.ReagentBank, playerOre.ElethiumOre.Bank, need);
        oreGroup:AddChild(soleniumGroup);
    end

    if(Glockfarmer:CanShowOxxein())
    then
        local need = Glockfarmer:GetOxxeinNeeded() - (playerOre.OxxeinOre.Bag + playerOre.OxxeinOre.ReagentBank + playerOre.OxxeinOre.Bank);
        local oxxeinGroup = Glockfarmer:CreateRow("Oxxein Ore", playerOre.OxxeinOre.Bag, playerOre.OxxeinOre.ReagentBank, playerOre.OxxeinOre.Bank, need);
        oreGroup:AddChild(oxxeinGroup);
    end

    if(Glockfarmer:CanShowPhaedrum())
    then
        local need = Glockfarmer:GetPhaedrumNeeded() - (playerOre.PhaedrumOre.Bag + playerOre.PhaedrumOre.ReagentBank + playerOre.PhaedrumOre.Bank);
        local phaedrumGroup = Glockfarmer:CreateRow("Phaedrum Ore", playerOre.PhaedrumOre.Bag, playerOre.PhaedrumOre.ReagentBank, playerOre.PhaedrumOre.Bank, need);
        oreGroup:AddChild(phaedrumGroup);
    end

    if(Glockfarmer:CanShowSinvyr())
    then
        local need = Glockfarmer:GetSinvyrNeeded() - (playerOre.SinvyrOre.Bag + playerOre.SinvyrOre.ReagentBank + playerOre.SinvyrOre.Bank);
        local sinvyrGroup = Glockfarmer:CreateRow("Sinvyr Ore", playerOre.SinvyrOre.Bag, playerOre.SinvyrOre.ReagentBank, playerOre.SinvyrOre.Bank, need);
        oreGroup:AddChild(sinvyrGroup);
    end
    itemFrame:AddChild(oreGroup);
end
function Glockfarmer:PrintLeather(playerLeather, itemFrame)
    local leatherGroup = AceGUI:Create("InlineGroup");
    leatherGroup:SetTitle("Leather");
    leatherGroup:SetWidth(400);
    leatherGroup:SetLayout("Flow");


    if(Glockfarmer:CanShowDesolate())
    then
        local need = Glockfarmer:GetDesolateNeeded() - (playerLeather.DesolateLeather.Bag + playerLeather.DesolateLeather.ReagentBank + playerLeather.DesolateLeather.Bank);
        local desolateGroup = Glockfarmer:CreateRow("Desolate Leather", playerLeather.DesolateLeather.Bag, playerLeather.DesolateLeather.ReagentBank, playerLeather.DesolateLeather.Bank, need);
        leatherGroup:AddChild(desolateGroup);
    end

    if(Glockfarmer:CanShowPallidBone())
    then
        local need = Glockfarmer:GetPallidBoneNeeded() - (playerLeather.PallidBone.Bag + playerLeather.PallidBone.ReagentBank + playerLeather.PallidBone.Bank);
        local pallidBoneGroup = Glockfarmer:CreateRow("Pallid Bone", playerLeather.PallidBone.Bag, playerLeather.PallidBone.ReagentBank, playerLeather.PallidBone.Bank, need);
        leatherGroup:AddChild(pallidBoneGroup);
    end

    if(Glockfarmer:CanShowCallous())
    then
        local need = Glockfarmer:GetCallousNeeded() - (playerLeather.CallousHide.Bag + playerLeather.CallousHide.ReagentBank + playerLeather.CallousHide.Bank);
        local callousHideGroup = Glockfarmer:CreateRow("Callous Hide", playerLeather.CallousHide.Bag, playerLeather.CallousHide.ReagentBank, playerLeather.CallousHide.Bank, need);
        leatherGroup:AddChild(callousHideGroup);
    end

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
            playerGroup:SetWidth(420);
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
    self.db.profile.Herbs.DeathBlossom.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowDeathblossom(info)
    return self.db.profile.Herbs.DeathBlossom.Show;
end
function Glockfarmer:SetDeathblossomNeeded(info,val)
    self.db.profile.Herbs.DeathBlossom.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetDeathblossomNeeded(info)
    return self.db.profile.Herbs.DeathBlossom.Need;
end
function Glockfarmer:ToggleShowNightShade(info,val)
    self.db.profile.Herbs.Nightshade.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowNightShade(info)
    return self.db.profile.Herbs.Nightshade.Show;
end
function Glockfarmer:SetNightShadeNeeded(info,val)
    self.db.profile.Herbs.Nightshade.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetNightShadeNeeded(info)
    return self.db.profile.Herbs.Nightshade.Need;
end
function Glockfarmer:ToggleShowRisingGlory(info,val)
    self.db.profile.Herbs.RisingGlory.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowRisingGlory(info)
    return self.db.profile.Herbs.RisingGlory.Show;
end
function Glockfarmer:SetRisingGloryNeeded(info,val)
    self.db.profile.Herbs.RisingGlory.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetRisingGloryNeeded(info)
    return self.db.profile.Herbs.RisingGlory.Need;
end
function Glockfarmer:ToggleShowMarrowRoot(info,val)
    self.db.profile.Herbs.Marrowroot.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowMarrowRoot(info)
    return self.db.profile.Herbs.Marrowroot.Show;
end
function Glockfarmer:SetMarrowRootNeeded(info,val)
    self.db.profile.Herbs.Marrowroot.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetMarrowRootNeeded(info)
    return self.db.profile.Herbs.Marrowroot.Need;
end
function Glockfarmer:ToggleShowWidowbloom(info,val)
    self.db.profile.Herbs.Widowbloom.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowWidowbloom(info)
    return self.db.profile.Herbs.Widowbloom.Show;
end
function Glockfarmer:SetWidowbloomNeeded(info,val)
    self.db.profile.Herbs.Widowbloom.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetWidowbloomNeeded(info)
    return self.db.profile.Herbs.Widowbloom.Need;
end
function Glockfarmer:ToggleShowVigilsTorch(info,val)
    self.db.profile.Herbs.VigilsTorch.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowVigilsTorch(info)
    return self.db.profile.Herbs.VigilsTorch.Show;
end
function Glockfarmer:SetVigilsTorchNeeded(info,val)
    self.db.profile.Herbs.VigilsTorch.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetVigilsTorchNeeded(info)
    return self.db.profile.Herbs.VigilsTorch.Need;
end

function Glockfarmer:ToggleShowFish(info,val)
    self.db.profile.ShowFish = val;
    fishingCheckbox:SetValue(self.db.profile.ShowFish);
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowFish(info)
    return self.db.profile.ShowFish;
end
function Glockfarmer:ToggleShowLostSole(info,val)
    self.db.profile.Fish.LostSole.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLostSole(info)
    return self.db.profile.Fish.LostSole.Show;
end
function Glockfarmer:SetLostSoleNeeded(info,val)
    self.db.profile.Fish.LostSole.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLostSoleNeeded(info)
    return self.db.profile.Fish.LostSole.Need;
end
function Glockfarmer:ToggleShowSilverPike(info,val)
    self.db.profile.Fish.SilverPike.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSilverPike(info)
    return self.db.profile.Fish.SilverPike.Show;
end
function Glockfarmer:SetSilverPikeNeeded(info,val)
    self.db.profile.Fish.SilverPike.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSilverPikeNeeded(info)
    return self.db.profile.Fish.SilverPike.Need;
end
function Glockfarmer:ToggleShowPocketBonefish(info,val)
    self.db.profile.Fish.PocketBonefish.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPocketBonefish(info)
    return self.db.profile.Fish.PocketBonefish.Show;
end
function Glockfarmer:SetPocketBonefishNeeded(info,val)
    self.db.profile.Fish.PocketBonefish.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPocketBonefishNeeded(info)
    return self.db.profile.Fish.PocketBonefish.Need;
end
function Glockfarmer:ToggleShowIridescent(info,val)
    self.db.profile.Fish.Iridescent.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowIridescent(info)
    return self.db.profile.Fish.Iridescent.Show;
end
function Glockfarmer:SetIridescentNeeded(info,val)
    self.db.profile.Fish.Iridescent.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetIridescentNeeded(info)
    return self.db.profile.Fish.Iridescent.Need;
end
function Glockfarmer:ToggleShowSpinefinPiranha(info,val)
    self.db.profile.Fish.SpinefinPiranha.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSpinefinPiranha(info)
    return self.db.profile.Fish.SpinefinPiranha.Show;
end
function Glockfarmer:SetSpinefinPiranhaNeeded(info,val)
    self.db.profile.Fish.SpinefinPiranha.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSpinefinPiranhaNeeded(info)
    return self.db.profile.Fish.SpinefinPiranha.Need;
end
function Glockfarmer:ToggleShowElysian(info,val)
    self.db.profile.Fish.Elysian.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowElysian(info)
    return self.db.profile.Fish.Elysian.Show;
end
function Glockfarmer:SetElysianNeeded(info,val)
    self.db.profile.Fish.Elysian.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetElysianNeeded(info)
    return self.db.profile.Fish.Elysian.Need;
end

function Glockfarmer:ToggleShowCloth(info,val)
    self.db.profile.ShowCloth = val;
    clothCheckbox:SetValue(self.db.profile.ShowCloth);
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowCloth(info)
    return self.db.profile.ShowCloth;
end
function Glockfarmer:ToggleShowLightlessSilk(info,val)
    self.db.profile.Cloth.LightlessSilk.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLightlessSilk(info)
    return self.db.profile.Cloth.LightlessSilk.Show;
end
function Glockfarmer:SetLightlessSilkNeeded(info,val)
    self.db.profile.Cloth.LightlessSilk.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLightlessSilkNeeded(info)
    return self.db.profile.Cloth.LightlessSilk.Need;
end
function Glockfarmer:ToggleShowShroudedCloth(info,val)
    self.db.profile.Cloth.ShroudedCloth.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowShroudedCloth(info)
    return self.db.profile.Cloth.ShroudedCloth.Show;
end
function Glockfarmer:SetShroudedClothNeeded(info,val)
    self.db.profile.Cloth.ShroudedCloth.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetShroudedClothNeeded(info)
    return self.db.profile.Cloth.ShroudedCloth.Need;
end

function Glockfarmer:ToggleShowLeather(info,val)
    self.db.profile.ShowLeather = val;
    leatherCheckbox:SetValue(self.db.profile.ShowLeather);
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLeather(info)
    return self.db.profile.ShowLeather;
end
function Glockfarmer:ToggleShowDesolate(info,val)
    self.db.profile.Leather.Desolate.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowDesolate(info)
    return self.db.profile.Leather.Desolate.Show;
end
function Glockfarmer:SetDesolateNeeded(info,val)
    self.db.profile.Leather.Desolate.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetDesolateNeeded(info)
    return self.db.profile.Leather.Desolate.Need;
end
function Glockfarmer:ToggleShowPallidBone(info,val)
    self.db.profile.Leather.PallidBone.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPallidBone(info)
    return self.db.profile.Leather.PallidBone.Show;
end
function Glockfarmer:SetPallidBoneNeeded(info,val)
    self.db.profile.Leather.PallidBone.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPallidBoneNeeded(info)
    return self.db.profile.Leather.PallidBone.Need;
end
function Glockfarmer:ToggleShowCallous(info,val)
    self.db.profile.Leather.Callous.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowCallous(info)
    return self.db.profile.Leather.Callous.Show;
end
function Glockfarmer:SetCallousNeeded(info,val)
    self.db.profile.Leather.Callous.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetCallousNeeded(info)
    return self.db.profile.Leather.Callous.Need;
end

function Glockfarmer:ToggleShowOre(info,val)
    self.db.profile.ShowOre = val;
    oreCheckbox:SetValue(self.db.profile.ShowOre);
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowOre(info)
    return self.db.profile.ShowOre;
end
function Glockfarmer:ToggleShowLaestrite(info,val)
    self.db.profile.Ore.Laestrite.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowLaestrite(info)
    return self.db.profile.Ore.Laestrite.Show;
end
function Glockfarmer:SetLaestriteNeeded(info,val)
    self.db.profile.Ore.Laestrite.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetLaestriteNeeded(info)
    return self.db.profile.Ore.Laestrite.Need;
end
function Glockfarmer:ToggleShowElethium(info,val)
    self.db.profile.Ore.Elethium.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowElethium(info)
    return self.db.profile.Ore.Elethium.Show;
end
function Glockfarmer:SetElethiumNeeded(info,val)
    self.db.profile.Ore.Elethium.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetElethiumNeeded(info)
    return self.db.profile.Ore.Elethium.Need;
end
function Glockfarmer:ToggleShowSolenium(info,val)
    self.db.profile.Ore.Solenium.Show  = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSolenium(info)
    return self.db.profile.Ore.Solenium.Show;
end
function Glockfarmer:SetSoleniumNeeded(info,val)
    self.db.profile.Ore.Solenium.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSoleniumNeeded(info)
    return self.db.profile.Ore.Solenium.Need;
end
function Glockfarmer:ToggleShowOxxein(info,val)
    self.db.profile.Ore.Oxxein.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowOxxein(info)
    return self.db.profile.Ore.Oxxein.Show;
end
function Glockfarmer:SetOxxeinNeeded(info,val)
    self.db.profile.Ore.Oxxein.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetOxxeinNeeded(info)
    return self.db.profile.Ore.Oxxein.Need;
end
function Glockfarmer:ToggleShowPhaedrum(info,val)
    self.db.profile.Ore.Phaedrum.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowPhaedrum(info)
    return self.db.profile.Ore.Phaedrum.Show;
end
function Glockfarmer:SetPhaedrumNeeded(info,val)
    self.db.profile.Ore.Phaedrum.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetPhaedrumNeeded(info)
    return self.db.profile.Ore.Phaedrum.Need;
end
function Glockfarmer:ToggleShowSinvyr(info,val)
    self.db.profile.Ore.Sinvyr.Show = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:CanShowSinvyr(info)
    return self.db.profile.Ore.Sinvyr.Show;
end
function Glockfarmer:SetSinvyrNeeded(info,val)
    self.db.profile.Ore.Sinvyr.Need = val;
    Glockfarmer:ReloadLabel();
end
function Glockfarmer:GetSinvyrNeeded(info)
    return self.db.profile.Ore.Sinvyr.Need;
end

function Glockfarmer:CheckNumber(info, num)
    a = tonumber(num)
    if (type(a) == "number")
    then
        return true
    else
        return "This entry must be a number"
    end
end