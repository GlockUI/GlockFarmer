Glockfarmer = LibStub("AceAddon-3.0"):NewAddon("Glockfarmer", "AceConsole-3.0", "AceEvent-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("GlockFarmer");
AceGUI = LibStub("AceGUI-3.0");
LibQTip = LibStub('LibQTip-1.0');
local playerN = UnitName("player");
local realm = GetRealmName();
local playerName = playerN .. "-" .. realm;

local Defaults = {
    profile = {
        SchemaVersion = 0.2,
        ShowHerbalism = true,
        Herbs = {
            DeathBlossom = {
                Show = true,
                Need = 0
            },
            Nightshade = {
                Show = true,
                Need = 0
            },
            RisingGlory = {
                Show = true,
                Need = 0
            },
            Marrowroot = {
                Show = true,
                Need = 0
            },
            Widowbloom = {
                Show = true,
                Need = 0
            },
            VigilsTorch = {
                Show = true,
                Need = 0
            }
        },
        ShowFish = true,
        Fish = {
            LostSole = {
                Show = true,
                Need = 0
            },
            SilverPike = {
                Show = true,
                Need = 0
            },
            PoketFish = {
                Show = true,
                Need = 0
            },
            PocketBonefish = {
                Show = true,
                Need = 0
            },
            Iridescent = {
                Show = true,
                Need = 0
            },
            SpinefinPiranha = {
                Show = true,
                Need = 0
            },
            Elysian = {
                Show = true,
                Need = 0
            }
        },
        ShowCloth = true,
        Cloth = {
            ShroudedCloth = {
                Show = true,
                Need = 0
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
        ShowMeat = true,
        Meat = {
            Aethereal = {
                Show = true,
                Need = 0
            },
            CreepingCrawler = {
                Show = true,
                Need = 0
            },
            PhantasmalHaunch = {
                Show = true,
                Need = 0
            },
            RawSeraphicWing = {
                Show = true,
                Need = 0
            },
            ShadowyShank = {
                Show = true,
                Need = 0
            },
            TenebrousRibs = {
                Show = true,
                Need = 0
            }
        },
        ShowAllCharacters = false,
        FramePoint = nil,
        FrameHeight = 500,
        FrameWidth = 700
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
            Meat = {
                ["**"] = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                Aethereal = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                CreepingCrawler = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                PhantasmalHaunch = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                RawSeraphicWing = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                ShadowyShank = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                },
                TenebrousRibs = {
                    Bag = 0,
                    ReagentBank = 0,
                    Bank = 0
                }
            }
        }
    }
}

local myOptionsTable = {
    name = L["AddonTitle"],
    handler = Glockfarmer,
    type = "group",
    args = {
        HerbOptions = {
            name = "Herbs",
            type = "group",
            args = {
                Herbalism = {
                    name = L["ShowAllHerbs"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowHerbs",
                    get = "CanShowHerbs",
                    order = 0,
                    width = "full"
                },
                ShowDeathBlossom = {
                    name = L["ShowDeathBlossom"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowDeathblossom",
                    get = "CanShowDeathblossom",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 1
                },
                DeathBlossomNeeded = {
                    name = L["NeedDeathBlossom"],
                    desc = "",
                    type = "input",
                    set = "SetDeathblossomNeeded",
                    get = "GetDeathblossomNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowDeathblossom(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowNightShade = {
                    name = L["ShowNightshade"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowNightShade",
                    get = "CanShowNightShade",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 3
                },
                NightShadeNeeded = {
                    name = L["NeedNightshade"],
                    desc = "",
                    type = "input",
                    set = "SetNightShadeNeeded",
                    get = "GetNightShadeNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowNightShade(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowRisingGlory = {
                    name = L["ShowRisingGlory"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowRisingGlory",
                    get = "CanShowRisingGlory",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 5
                },
                RisingGloryNeeded = {
                    name = L["NeedRisingGlory"],
                    desc = "",
                    type = "input",
                    set = "SetRisingGloryNeeded",
                    get = "GetRisingGloryNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowRisingGlory(info)
                    end,
                    order = 6,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowMarrowRoot = {
                    name = L["ShowMarrowRoot"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowMarrowRoot",
                    get = "CanShowMarrowRoot",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 7
                },
                MarrowRootNeeded = {
                    name = L["NeedMarrowRoot"],
                    desc = "",
                    type = "input",
                    set = "SetMarrowRootNeeded",
                    get = "GetMarrowRootNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowMarrowRoot(info)
                    end,
                    order = 8,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowWidowbloom = {
                    name = L["ShowWidowbloom"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowWidowbloom",
                    get = "CanShowWidowbloom",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 9
                },
                WidowbloomNeeded = {
                    name = L["NeedWidowbloom"],
                    desc = "",
                    type = "input",
                    set = "SetWidowbloomNeeded",
                    get = "GetWidowbloomNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowWidowbloom(info)
                    end,
                    order = 10,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowVigilsTorch = {
                    name = L["ShowVigilsTorch"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowVigilsTorch",
                    get = "CanShowVigilsTorch",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info)
                    end,
                    order = 11
                },
                VigilsTorchNeeded = {
                    name = L["NeedVigilsTorch"],
                    desc = "",
                    type = "input",
                    set = "SetVigilsTorchNeeded",
                    get = "GetVigilsTorchNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowHerbs(info) or not Glockfarmer:CanShowVigilsTorch(info)
                    end,
                    order = 12,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        },
        FishOptions = {
            name = "Fish",
            type = "group",
            args = {
                Fish = {
                    name = L["ShowsAllFish"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowFish",
                    get = "CanShowFish",
                    order = 0,
                    width = "full"
                },
                ShowLostSole = {
                    name = L["ShowLostSole"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowLostSole",
                    get = "CanShowLostSole",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 1
                },
                LostSoleNeeded = {
                    name = L["NeedLostSole"],
                    desc = "",
                    type = "input",
                    set = "SetLostSoleNeeded",
                    get = "GetLostSoleNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowLostSole(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowSilverPike = {
                    name = L["ShowSilverPike"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowSilverPike",
                    get = "CanShowSilverPike",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 3
                },
                SilverPikeNeeded = {
                    name = L["NeedSilverPike"],
                    desc = "",
                    type = "input",
                    set = "SetSilverPikeNeeded",
                    get = "GetSilverPikeNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowSilverPike(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowPocketBonefish = {
                    name = L["ShowPocketBonefish"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowPocketBonefish",
                    get = "CanShowPocketBonefish",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 5
                },
                PocketBonefishNeeded = {
                    name = L["NeedPocketBonefish"],
                    desc = "",
                    type = "input",
                    set = "SetPocketBonefishNeeded",
                    get = "GetPocketBonefishNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowPocketBonefish(info)
                    end,
                    order = 6,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowIridescent = {
                    name = L["ShowIridescent"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowIridescent",
                    get = "CanShowIridescent",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 7
                },
                IridescentNeeded = {
                    name = L["NeedIridescent"],
                    desc = "",
                    type = "input",
                    set = "SetIridescentNeeded",
                    get = "GetIridescentNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowIridescent(info)
                    end,
                    order = 8,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowSpinefinPiranha = {
                    name = L["ShowSpinefinPiranha"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowSpinefinPiranha",
                    get = "CanShowSpinefinPiranha",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 9
                },
                SpinefinPiranhaNeeded = {
                    name = L["NeedSpinefinPiranha"],
                    desc = "",
                    type = "input",
                    set = "SetSpinefinPiranhaNeeded",
                    get = "GetSpinefinPiranhaNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowSpinefinPiranha(info)
                    end,
                    order = 10,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowElysian = {
                    name = L["ShowElysian"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowElysian",
                    get = "CanShowElysian",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info)
                    end,
                    order = 11
                },
                ElysianNeeded = {
                    name = L["NeedElysian"],
                    desc = "",
                    type = "input",
                    set = "SetElysianNeeded",
                    get = "GetElysianNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowFish(info) or not Glockfarmer:CanShowElysian(info)
                    end,
                    order = 12,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        },
        MeatOptions = {
            name = "Meat",
            type = "group",
            args = {
                Fish = {
                    name = "Shows All Meat",
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowMeat",
                    get = "CanShowMeat",
                    order = 0,
                    width = "full"
                },
                ShowAethereal = {
                    name = L["ShowAethereal"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowAethereal",
                    get = "CanShowAethereal",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 1
                },
                AetherealNeeded = {
                    name = L["NeedAethereal"],
                    desc = "",
                    type = "input",
                    set = "SetAetherealNeeded",
                    get = "GetAetherealNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowAethereal(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowCreepingCrawlerMeat = {
                    name = L["ShowCreepingCrawler"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowCreepingCrawlerMeat",
                    get = "CanShowCreepingCrawlerMeat",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 3
                },
                CreepingCrawlerMeatNeeded = {
                    name = L["NeedCreepingCrawler"],
                    desc = "",
                    type = "input",
                    set = "SetCreepingCrawlerMeatNeeded",
                    get = "GetCreepingCrawlerMeatNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowCreepingCrawlerMeat(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowRawSeraphicWing = {
                    name = L["ShowRawSeraphicWing"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowRawSeraphicWing",
                    get = "CanShowRawSeraphicWing",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 5
                },
                RawSeraphicWingNeeded = {
                    name = L["NeedRawSeraphicWing"],
                    desc = "",
                    type = "input",
                    set = "SetRawSeraphicWingNeeded",
                    get = "GetRawSeraphicWingNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowRawSeraphicWing(info)
                    end,
                    order = 6,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowPhantasmalHaunch = {
                    name = L["ShowPhantasmalHaunch"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowPhantasmalHaunch",
                    get = "CanShowPhantasmalHaunch",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 7
                },
                PhantasmalHaunchNeeded = {
                    name = L["NeedPhantasmalHaunch"],
                    desc = "",
                    type = "input",
                    set = "SetPhantasmalHaunchNeeded",
                    get = "GetPhantasmalHaunchNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowPhantasmalHaunch(info)
                    end,
                    order = 8,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowShadowyShank = {
                    name = L["ShowShadowyShank"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowShadowyShank",
                    get = "CanShowShadowyShank",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 9
                },
                ShadowyShankNeeded = {
                    name = L["NeedShadowyShank"],
                    desc = "",
                    type = "input",
                    set = "SetShadowyShankNeeded",
                    get = "GetShadowyShankNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowShadowyShank(info)
                    end,
                    order = 10,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowTenebrousRibs = {
                    name = L["ShowTenebrousRibs"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowTenebrousRibs",
                    get = "CanShowTenebrousRibs",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info)
                    end,
                    order = 11
                },
                TenebrousRibsNeeded = {
                    name = L["NeedTenebrousRibs"],
                    desc = "",
                    type = "input",
                    set = "SetTenebrousRibsNeeded",
                    get = "GetTenebrousRibsNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowMeat(info) or not Glockfarmer:CanShowTenebrousRibs(info)
                    end,
                    order = 12,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        },
        ClothOptions = {
            name = "Cloth",
            type = "group",
            args = {
                Cloth = {
                    name = L["ShowsAllCloth"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowCloth",
                    get = "CanShowCloth",
                    order = 0,
                    width = "full"
                },
                ShowShroudedCloth = {
                    name = L["ShowShroudedCloth"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowShroudedCloth",
                    get = "CanShowShroudedCloth",
                    disabled = function(info)
                        return not Glockfarmer:CanShowCloth(info)
                    end,
                    order = 1
                },
                ShroudedClothNeeded = {
                    name = L["NeedShroudedCloth"],
                    desc = "",
                    type = "input",
                    set = "SetShroudedClothNeeded",
                    get = "GetShroudedClothNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowCloth(info) or not Glockfarmer:CanShowShroudedCloth(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowLightlessSilk = {
                    name = L["ShowLightlessSilk"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowLightlessSilk",
                    get = "CanShowLightlessSilk",
                    disabled = function(info)
                        return not Glockfarmer:CanShowCloth(info)
                    end,
                    order = 3
                },
                LightlessSilkNeeded = {
                    name = L["NeedLightlessSilk"],
                    desc = "",
                    type = "input",
                    set = "SetLightlessSilkNeeded",
                    get = "GetLightlessSilkNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowCloth(info) or not Glockfarmer:CanShowLightlessSilk(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        },
        LeatherOptions = {
            name = "Leather",
            type = "group",
            args = {
                Leather = {
                    name = L["ShowsAllLeather"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowLeather",
                    get = "CanShowLeather",
                    order = 0,
                    width = "full"
                },
                ShowDesolate = {
                    name = L["ShowDesolate"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowDesolate",
                    get = "CanShowDesolate",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info)
                    end,
                    order = 1
                },
                DesolateNeeded = {
                    name = L["NeedDesolate"],
                    desc = "",
                    type = "input",
                    set = "SetDesolateNeeded",
                    get = "GetDesolateNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowDesolate(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowPallidBone = {
                    name = L["ShowPallidBone"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowPallidBone",
                    get = "CanShowPallidBone",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info)
                    end,
                    order = 3
                },
                PallidBoneNeeded = {
                    name = L["NeedPallidBone"],
                    desc = "",
                    type = "input",
                    set = "SetPallidBoneNeeded",
                    get = "GetPallidBoneNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowPallidBone(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowCallous = {
                    name = L["ShowCallousHide"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowCallous",
                    get = "CanShowCallous",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info)
                    end,
                    order = 5
                },
                CallousNeeded = {
                    name = L["NeedCallousHide"],
                    desc = "",
                    type = "input",
                    set = "SetCallousNeeded",
                    get = "GetCallousNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowLeather(info) or not Glockfarmer:CanShowCallous(info)
                    end,
                    order = 6,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        },
        OreOptions = {
            name = "Ore",
            type = "group",
            args = {
                Ore = {
                    name = L["ShowsAllOre"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowOre",
                    get = "CanShowOre",
                    order = 0,
                    width = "full"
                },
                ShowLaestrite = {
                    name = L["ShowLaestrite"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowLaestrite",
                    get = "CanShowLaestrite",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 1
                },
                LaestriteNeeded = {
                    name = L["NeedLaestrite"],
                    desc = "",
                    type = "input",
                    set = "SetLaestriteNeeded",
                    get = "GetLaestriteNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowLaestrite(info)
                    end,
                    order = 2,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowElethium = {
                    name = L["ShowElethium"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowElethium",
                    get = "CanShowElethium",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 3
                },
                ElethiumNeeded = {
                    name = L["NeedElethium"],
                    desc = "",
                    type = "input",
                    set = "SetElethiumNeeded",
                    get = "GetElethiumNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowElethium(info)
                    end,
                    order = 4,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowSolenium = {
                    name = L["ShowSolenium"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowSolenium",
                    get = "CanShowSolenium",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 5
                },
                SoleniumNeeded = {
                    name = L["NeedSolenium"],
                    desc = "",
                    type = "input",
                    set = "SetSoleniumNeeded",
                    get = "GetSoleniumNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowSolenium(info)
                    end,
                    order = 6,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowOxxein = {
                    name = L["ShowOxxein"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowOxxein",
                    get = "CanShowOxxein",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 7
                },
                OxxeinNeeded = {
                    name = L["NeedOxxein"],
                    desc = "",
                    type = "input",
                    set = "SetOxxeinNeeded",
                    get = "GetOxxeinNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowOxxein(info)
                    end,
                    order = 8,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowPhaedrum = {
                    name = L["ShowPhaedrum"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowPhaedrum",
                    get = "CanShowPhaedrum",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 9
                },
                PhaedrumNeeded = {
                    name = L["NeedPhaedrum"] ,
                    desc = "",
                    type = "input",
                    set = "SetPhaedrumNeeded",
                    get = "GetPhaedrumNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowPhaedrum(info)
                    end,
                    order = 10,
                    validate = "CheckNumber",
                    confirm = false
                },
                ShowSinvyr = {
                    name = L["ShowSinvyr"],
                    desc = "",
                    type = "toggle",
                    set = "ToggleShowSinvyr",
                    get = "CanShowSinvyr",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info)
                    end,
                    order = 11
                },
                SinvyrNeeded = {
                    name = L["NeedSinvyr"],
                    desc = "",
                    type = "input",
                    set = "SetSinvyrNeeded",
                    get = "GetSinvyrNeeded",
                    disabled = function(info)
                        return not Glockfarmer:CanShowOre(info) or not Glockfarmer:CanShowSinvyr(info)
                    end,
                    order = 12,
                    validate = "CheckNumber",
                    confirm = false
                }
            }
        }
    }
}

local frame, 
itemsGroup,
allCharsCheckbox, 
scroll, 
optionDialog, 
optionsTabGroup, 
enableMoveCheckbox, 
upperGroup;
local IsBankOpen = false;

SLASH_GLOCKFARMER1 = "/Glockfarmer";
SlashCmdList["GLOCKFARMER"] = function(msg, ...)
    if (msg == "show") then
        frame:Show();
    elseif (msg == "hide") then
        frame:Hide();
    elseif (msg == "scan") then
        Glockfarmer:PrintBags();
    else
        print("Proper argument not given! please provide show, hide, or scan");
    end
end
function Glockfarmer:CreateRow(labelName, bag, reagent, bank, need)
    local group = AceGUI:Create("SimpleGroup");
    group:SetLayout("Flow");
    group:SetFullWidth(true);
    local label = AceGUI:Create("GlockLabel");
    label:SetText(labelName .. ": ");
    label:SetWidth(110);
    label:SetCallback("OnEnter", LabelTooltipOnEnter);
    label:SetCallback("OnLeave", LabelTooltipLeave);
    group:AddChild(label);

    if (need > 0) then
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
function LabelTooltipOnEnter(self)
    local tooltip = LibQTip:Acquire("GlockFarmerTooltip", 1, "LEFT");
    self.tooltip = tooltip;   
    -- Use smart anchoring code to anchor the tooltip to our frame
    tooltip:SmartAnchorTo(self.frame);
    local labelText = self.label:GetText();
    if labelText == L["Nightshade"] .. ": " then
        tooltip:AddLine(L["NightshadeLocation"]);
    elseif labelText == L["DeathBlossom"] .. ": " then
        tooltip:AddLine(L["DeathBlossomLocation"]);
    elseif labelText == L["RisingGlory"] .. ": " then
        tooltip:AddLine(L["RisingGloryLocation"] );
    elseif labelText == L["MarrowRoot"] .. ": " then
        tooltip:AddLine(L["MarrowRootLocation"] );
    elseif labelText == L["Widowbloom"] .. ": " then
        tooltip:AddLine(L["WidowbloomLocation"] );
    elseif labelText == L["VigilsTorch"] .. ": " then
        tooltip:AddLine(L["VigilsTorchLocation"] );
    --Fish
    elseif labelText == L["LostSole"] .. ": " then
        tooltip:AddLine(L["LostSoleLocation"]);
    elseif labelText == L["SilverPike"] .. ": " then
        tooltip:AddLine(L["SilverPikeLocation"]);
    elseif labelText == L["PocketBonefish"] .. ": " then
        tooltip:AddLine(L["PocketBonefishLocation"]);
    elseif labelText == L["Iridescent"] .. ": " then
        tooltip:AddLine(L["IridescentLocation"]);
    elseif labelText == L["SpinefinPiranha"] .. ": " then
        tooltip:AddLine(L["SpinefinPiranhaLocation"]);
    elseif labelText == L["Elysian"] .. ": " then
        tooltip:AddLine(L["ElysianLocation"]);
    --Fish
    elseif labelText == L["ShroudedCloth"] .. ": " then
        tooltip:AddLine(L["ShroudedClothLocation"]);
    elseif labelText == L["LightlessSilk"] .. ": " then
        tooltip:AddLine(L["LightlessSilkLocation"]);
    --Leather
    elseif labelText == L["Desolate"] .. ": " then
        tooltip:AddLine(L["DesolateLocation"]);
    elseif labelText == L["PallidBone"] .. ": " then
        tooltip:AddLine(L["PallidBoneLocation"]);
    elseif labelText == L["CallousHide"] .. ": " then
        tooltip:AddLine(L["CallousHideLocation"]);
    --Ore
    elseif labelText == L["Laestrite"] .. ": " then
        tooltip:AddLine(L["LaestriteLocation"]);
    elseif labelText == L["Elethium"] .. ": " then
        tooltip:AddLine(L["ElethiumLocation"]);
    elseif labelText == L["Solenium"] .. ": " then
        tooltip:AddLine(L["SoleniumLocation"]);
    elseif labelText == L["Oxxein"] .. ": " then
        tooltip:AddLine(L["OxxeinLocation"]);
    elseif labelText == L["Phaedrum"] .. ": " then
        tooltip:AddLine(L["PhaedrumLocation"]);
    elseif labelText == L["Sinvyr"] .. ": " then
        tooltip:AddLine(L["SinvyrLocation"]);
    --Meat
    elseif labelText == L["Aethereal"] .. ": " then
        tooltip:AddLine(L["AetherealLocation"]);
    elseif labelText == L["CreepingCrawler"] .. ": " then
        tooltip:AddLine(L["CreepingCrawlerLocation"]);
    elseif labelText == L["RawSeraphicWing"] .. ": " then
        tooltip:AddLine(L["RawSeraphicWingLocation"]);
    elseif labelText == L["PhantasmalHaunch"] .. ": " then
        tooltip:AddLine(L["PhantasmalHaunchLocation"]);
    elseif labelText == L["ShadowyShank"] .. ": " then
        tooltip:AddLine(L["ShadowyShankLocation"]);
    elseif labelText == L["TenebrousRibs"] .. ": " then
        tooltip:AddLine(L["TenebrousRibsLocation"]);
    else
        tooltip:AddLine("A tooltip has not been added for this item.");
    end
    -- Show it, et voilà !
    tooltip:Show();
    --print(self.label:GetText());
end
function LabelTooltipLeave(self)
    self.tooltip:Hide();
    LibQTip:Release(self.tooltip);
    self.tooltip = nil;
end
function Glockfarmer:CreateLine(labelName, bag, reagent, bank, need, toolTip)
     if (need > 0) then
        toolTip:AddLine(labelName, "Need:" .. need, "Bag:" .. bag, "Reagent:" .. reagent, "Bank:" .. bank);
    else
        toolTip:AddLine(labelName, "Need: 0", "Bag:" .. bag, "Reagent:" .. reagent, "Bank:" .. bank);
    end
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
    meatAetheral = 0;
    meatCreepyCrawler = 0;
    meatPhantasmal = 0;
    meatRawSeraphic = 0;
    meatShadowy = 0;
    meatTenebrous = 0;

    for i = 0, 4 do
        local slots = GetContainerNumSlots(i);
        for s = 0, slots do
            icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID =
                GetContainerItemInfo(i, s);
            --Herbs
            if (itemID == 171315) then
                herbNSCount = herbNSCount + itemCount;
            elseif (itemID == 169701) then
                herbDBCount = herbDBCount + itemCount;
            elseif (itemID == 168586) then
                herbRGCount = herbRGCount + itemCount;
            elseif (itemID == 168589) then
                herbMTCount = herbMTCount + itemCount;
            elseif (itemID == 168583) then
                herbWTCount = herbWTCount + itemCount;
            elseif (itemID == 170554) then
            --Fishing
                herbVTCount = herbVTCount + itemCount;
            elseif (itemID == 173032) then
                fishingLSCount = fishingLSCount + itemCount;
            elseif (itemID == 173034) then
                fishingSPCount = fishingSPCount + itemCount;
            elseif (itemID == 173035) then
                fishingPBCount = fishingPBCount + itemCount;
            elseif (itemID == 173033) then
                fishingIACount = fishingIACount + itemCount;
            elseif (itemID == 173036) then
                fishingSpineCount = fishingSpineCount + itemCount;
            elseif (itemID == 173037) then
                --Cloth
                fishingETCount = fishingETCount + itemCount;
            elseif (itemID == 173202) then
                clothSCCount = clothSCCount + itemCount;
            elseif (itemID == 173204) then
                --Ore
                clothLSCount = clothLSCount + itemCount;
            elseif (itemID == 171828) then
                laestriteOreCount = laestriteOreCount + itemCount;
            elseif (itemID == 171833) then
                elethiumOreCount = elethiumOreCount + itemCount;
            elseif (itemID == 171829) then
                soleniumOreCount = soleniumOreCount + itemCount;
            elseif (itemID == 171830) then
                oxxeinOreCount = oxxeinOreCount + itemCount;
            elseif (itemID == 171831) then
                phaedrumOreCount = phaedrumOreCount + itemCount;
            elseif (itemID == 171832) then
                --leather
                sinvyrOreCount = sinvyrOreCount + itemCount;
            elseif (itemID == 172089) then
                desolateLeatherCount = desolateLeatherCount + itemCount;
            elseif (itemID == 172092) then
                pallidBoneCount = pallidBoneCount + itemCount;
            elseif (itemID == 172094) then
                --meat
                callousHideCount = callousHideCount + itemCount;
            elseif (itemID == 172052) then
                meatAetheral = meatAetheral + itemCount;
            elseif (itemID == 179314) then
                meatCreepyCrawler = meatCreepyCrawler + itemCount;
            elseif (itemID == 172055) then
                meatPhantasmal = meatPhantasmal + itemCount;
            elseif (itemID == 172054) then
                meatRawSeraphic = meatRawSeraphic + itemCount;
            elseif (itemID == 179315) then
                meatShadowy = meatShadowy + itemCount;
            elseif (itemID == 172053) then
                meatTenebrous = meatTenebrous + itemCount;
            end
        end
    end

    self.db.global[playerName].Herbs.DeathBlossom.Bag = herbDBCount;
    self.db.global[playerName].Herbs.NightShade.Bag = herbNSCount;
    self.db.global[playerName].Herbs.RisingGlory.Bag = herbRGCount;
    self.db.global[playerName].Herbs.Marrowroot.Bag = herbMTCount;
    self.db.global[playerName].Herbs.Widowbloom.Bag = herbWTCount;
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

    self.db.global[playerName].Meat.Athereal.Bag = meatAetheral;
    self.db.global[playerName].Meat.CreepingCrawler.Bag = meatCreepyCrawler;
    self.db.global[playerName].Meat.PhantasmalHaunch.Bag = meatPhantasmal;
    self.db.global[playerName].Meat.RawSeraphicWing.Bag = meatRawSeraphic;
    self.db.global[playerName].Meat.ShadowyShank.Bag = meatShadowy;
    self.db.global[playerName].Meat.TenebrousRibs.Bag = meatTenebrous;
end
function Glockfarmer:GetReagentBank()
    herbDBCount = 0
    herbNSCount = 0
    herbRGCount = 0
    herbMTCount = 0
    herbWTCount = 0
    herbVTCount = 0
    fishingLSCount = 0
    fishingSPCount = 0
    fishingPBCount = 0
    fishingIACount = 0
    fishingSpineCount = 0
    fishingETCount = 0
    clothSCCount = 0
    clothLSCount = 0
    laestriteOreCount = 0
    elethiumOreCount = 0
    soleniumOreCount = 0
    oxxeinOreCount = 0
    phaedrumOreCount = 0
    sinvyrOreCount = 0
    desolateLeatherCount = 0
    pallidBoneCount = 0
    callousHideCount = 0
    meatAetheral = 0
    meatCreepyCrawler = 0
    meatPhantasmal = 0
    meatRawSeraphic = 0
    meatShadowy = 0
    meatTenebrous = 0

    local slots = GetContainerNumSlots(-3)
    for s = 0, slots do
        icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID =
            GetContainerItemInfo(-3, s)
        --Herbs
        if (itemID == 171315) then
            herbNSCount = herbNSCount + itemCount
        elseif (itemID == 169701) then
            herbDBCount = herbDBCount + itemCount
        elseif (itemID == 168586) then
            herbRGCount = herbRGCount + itemCount
        elseif (itemID == 168589) then
            herbMTCount = herbMTCount + itemCount
        elseif (itemID == 168583) then
            herbWTCount = herbWTCount + itemCount
        elseif (itemID == 170554) then
            --Fishing
            herbVTCount = herbVTCount + itemCount
        elseif (itemID == 173032) then
            fishingLSCount = fishingLSCount + itemCount
        elseif (itemID == 173034) then
            fishingSPCount = fishingSPCount + itemCount
        elseif (itemID == 173035) then
            fishingPBCount = fishingPBCount + itemCount
        elseif (itemID == 173033) then
            fishingIACount = fishingIACount + itemCount
        elseif (itemID == 173036) then
            fishingSpineCount = fishingSpineCount + itemCount
        elseif (itemID == 173037) then
            --Cloth
            fishingETCount = fishingETCount + itemCount
        elseif (itemID == 173202) then
            clothSCCount = clothSCCount + itemCount
        elseif (itemID == 173204) then
            --Ore
            clothLSCount = clothLSCount + itemCount
        elseif (itemID == 171828) then
            laestriteOreCount = laestriteOreCount + itemCount
        elseif (itemID == 171833) then
            elethiumOreCount = elethiumOreCount + itemCount
        elseif (itemID == 171829) then
            soleniumOreCount = soleniumOreCount + itemCount
        elseif (itemID == 171830) then
            oxxeinOreCount = oxxeinOreCount + itemCount
        elseif (itemID == 171831) then
            phaedrumOreCount = phaedrumOreCount + itemCount
        elseif (itemID == 171832) then
            --leather
            sinvyrOreCount = sinvyrOreCount + itemCount
        elseif (itemID == 172089) then
            desolateLeatherCount = desolateLeatherCount + itemCount
        elseif (itemID == 172092) then
            pallidBoneCount = pallidBoneCount + itemCount
        elseif (itemID == 172094) then
            --meat
        elseif (itemID == 172052) then
            meatAetheral = meatAetheral + itemCount
        elseif (itemID == 179314) then
            meatCreepyCrawler = meatCreepyCrawler + itemCount
        elseif (itemID == 172055) then
            meatPhantasmal = meatPhantasmal + itemCount
        elseif (itemID == 172054) then
            meatRawSeraphic = meatRawSeraphic + itemCount
        elseif (itemID == 179315) then
            meatShadowy = meatShadowy + itemCount
        elseif (itemID == 172053) then
            meatTenebrous = meatTenebrous + itemCount
        end
    end

    self.db.global[playerName].Herbs.DeathBlossom.ReagentBank = herbDBCount
    self.db.global[playerName].Herbs.NightShade.ReagentBank = herbNSCount
    self.db.global[playerName].Herbs.RisingGlory.ReagentBank = herbRGCount
    self.db.global[playerName].Herbs.Marrowroot.ReagentBank = herbMTCount
    self.db.global[playerName].Herbs.Widowbloom.ReagentBank = herbWTCount
    self.db.global[playerName].Herbs.VigilsTorch.ReagentBank = herbVTCount

    self.db.global[playerName].Fish.LostSole.ReagentBank = fishingLSCount
    self.db.global[playerName].Fish.SilverPike.ReagentBank = fishingSPCount
    self.db.global[playerName].Fish.PoketBoneFish.ReagentBank = fishingPBCount
    self.db.global[playerName].Fish.Iridescent.ReagentBank = fishingIACount
    self.db.global[playerName].Fish.SpinefinPiranha.ReagentBank = fishingSpineCount
    self.db.global[playerName].Fish.Elysian.ReagentBank = fishingETCount

    self.db.global[playerName].Cloth.LightlessSilk.ReagentBank = clothLSCount
    self.db.global[playerName].Cloth.ShroudedCloth.ReagentBank = clothSCCount

    self.db.global[playerName].Ore.LaestriteOre.ReagentBank = laestriteOreCount
    self.db.global[playerName].Ore.ElethiumOre.ReagentBank = elethiumOreCount
    self.db.global[playerName].Ore.SoleniumOre.ReagentBank = soleniumOreCount
    self.db.global[playerName].Ore.OxxeinOre.ReagentBank = oxxeinOreCount
    self.db.global[playerName].Ore.PhaedrumOre.ReagentBank = phaedrumOreCount
    self.db.global[playerName].Ore.SinvyrOre.ReagentBank = sinvyrOreCount

    self.db.global[playerName].Leather.DesolateLeather.ReagentBank = desolateLeatherCount
    self.db.global[playerName].Leather.PallidBone.ReagentBank = pallidBoneCount
    self.db.global[playerName].Leather.CallousHide.ReagentBank = callousHideCount

    self.db.global[playerName].Meat.Athereal.ReagentBank = meatAetheral
    self.db.global[playerName].Meat.CreepingCrawler.ReagentBank = meatCreepyCrawler
    self.db.global[playerName].Meat.PhantasmalHaunch.ReagentBank = meatPhantasmal
    self.db.global[playerName].Meat.RawSeraphicWing.ReagentBank = meatRawSeraphic
    self.db.global[playerName].Meat.ShadowyShank.ReagentBank = meatShadowy
    self.db.global[playerName].Meat.TenebrousRibs.ReagentBank = meatTenebrous
end
function Glockfarmer:GetBank()
    herbDBCount = 0
    herbNSCount = 0
    herbRGCount = 0
    herbMTCount = 0
    herbWTCount = 0
    herbVTCount = 0
    fishingLSCount = 0
    fishingSPCount = 0
    fishingPBCount = 0
    fishingIACount = 0
    fishingSpineCount = 0
    fishingETCount = 0
    clothSCCount = 0
    clothLSCount = 0
    laestriteOreCount = 0
    elethiumOreCount = 0
    soleniumOreCount = 0
    oxxeinOreCount = 0
    phaedrumOreCount = 0
    sinvyrOreCount = 0
    desolateLeatherCount = 0
    pallidBoneCount = 0
    callousHideCount = 0
    meatAetheral = 0
    meatCreepyCrawler = 0
    meatPhantasmal = 0
    meatRawSeraphic = 0
    meatShadowy = 0
    meatTenebrous = 0

    for i = 5, 11 do
        local slots = GetContainerNumSlots(i)
        for s = 0, slots do
            icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID =
                GetContainerItemInfo(i, s)
            --Herbs
            if (itemID == 171315) then
                herbNSCount = herbNSCount + itemCount
            elseif (itemID == 169701) then
                herbDBCount = herbDBCount + itemCount
            elseif (itemID == 168586) then
                herbRGCount = herbRGCount + itemCount
            elseif (itemID == 168589) then
                herbMTCount = herbMTCount + itemCount
            elseif (itemID == 168583) then
                herbWTCount = herbWTCount + itemCount
            elseif (itemID == 170554) then
                --Fishing
                herbVTCount = herbVTCount + itemCount
            elseif (itemID == 173032) then
                fishingLSCount = fishingLSCount + itemCount
            elseif (itemID == 173034) then
                fishingSPCount = fishingSPCount + itemCount
            elseif (itemID == 173035) then
                fishingPBCount = fishingPBCount + itemCount
            elseif (itemID == 173033) then
                fishingIACount = fishingIACount + itemCount
            elseif (itemID == 173036) then
                fishingSpineCount = fishingSpineCount + itemCount
            elseif (itemID == 173037) then
                --Cloth
                fishingETCount = fishingETCount + itemCount
            elseif (itemID == 173202) then
                clothSCCount = clothSCCount + itemCount
            elseif (itemID == 173204) then
                --Ore
                clothLSCount = clothLSCount + itemCount
            elseif (itemID == 171828) then
                laestriteOreCount = laestriteOreCount + itemCount
            elseif (itemID == 171833) then
                elethiumOreCount = elethiumOreCount + itemCount
            elseif (itemID == 171829) then
                soleniumOreCount = soleniumOreCount + itemCount
            elseif (itemID == 171830) then
                oxxeinOreCount = oxxeinOreCount + itemCount
            elseif (itemID == 171831) then
                phaedrumOreCount = phaedrumOreCount + itemCount
            elseif (itemID == 171832) then
                --leather
                sinvyrOreCount = sinvyrOreCount + itemCount
            elseif (itemID == 172089) then
                desolateLeatherCount = desolateLeatherCount + itemCount
            elseif (itemID == 172092) then
                pallidBoneCount = pallidBoneCount + itemCount
            elseif (itemID == 172094) then
                --meat
                callousHideCount = callousHideCount + itemCount
            elseif (itemID == 172052) then
                meatAetheral = meatAetheral + itemCount
            elseif (itemID == 179314) then
                meatCreepyCrawler = meatCreepyCrawler + itemCount
            elseif (itemID == 172055) then
                meatPhantasmal = meatPhantasmal + itemCount
            elseif (itemID == 172054) then
                meatRawSeraphic = meatRawSeraphic + itemCount
            elseif (itemID == 179315) then
                meatShadowy = meatShadowy + itemCount
            elseif (itemID == 172053) then
                meatTenebrous = meatTenebrous + itemCount
            end
        end
    end

    self.db.global[playerName].Herbs.DeathBlossom.Bank = herbDBCount
    self.db.global[playerName].Herbs.NightShade.Bank = herbNSCount
    self.db.global[playerName].Herbs.RisingGlory.Bank = herbRGCount
    self.db.global[playerName].Herbs.Marrowroot.Bank = herbMTCount
    self.db.global[playerName].Herbs.Widowbloom.Bank = herbWTCount
    self.db.global[playerName].Herbs.VigilsTorch.Bank = herbVTCount

    self.db.global[playerName].Fish.LostSole.Bank = fishingLSCount
    self.db.global[playerName].Fish.SilverPike.Bank = fishingSPCount
    self.db.global[playerName].Fish.PoketBoneFish.Bank = fishingPBCount
    self.db.global[playerName].Fish.Iridescent.Bank = fishingIACount
    self.db.global[playerName].Fish.SpinefinPiranha.Bank = fishingSpineCount
    self.db.global[playerName].Fish.Elysian.Bank = fishingETCount

    self.db.global[playerName].Cloth.LightlessSilk.Bank = clothLSCount
    self.db.global[playerName].Cloth.ShroudedCloth.Bank = clothSCCount

    self.db.global[playerName].Ore.LaestriteOre.Bank = laestriteOreCount
    self.db.global[playerName].Ore.ElethiumOre.Bank = elethiumOreCount
    self.db.global[playerName].Ore.SoleniumOre.Bank = soleniumOreCount
    self.db.global[playerName].Ore.OxxeinOre.Bank = oxxeinOreCount
    self.db.global[playerName].Ore.PhaedrumOre.Bank = phaedrumOreCount
    self.db.global[playerName].Ore.SinvyrOre.Bank = sinvyrOreCount

    self.db.global[playerName].Leather.DesolateLeather.Bank = desolateLeatherCount
    self.db.global[playerName].Leather.PallidBone.Bank = pallidBoneCount
    self.db.global[playerName].Leather.CallousHide.Bank = callousHideCount

    self.db.global[playerName].Meat.Athereal.ReagentBank = meatAetheral
    self.db.global[playerName].Meat.CreepingCrawler.ReagentBank = meatCreepyCrawler
    self.db.global[playerName].Meat.PhantasmalHaunch.ReagentBank = meatPhantasmal
    self.db.global[playerName].Meat.RawSeraphicWing.ReagentBank = meatRawSeraphic
    self.db.global[playerName].Meat.ShadowyShank.ReagentBank = meatShadowy
    self.db.global[playerName].Meat.TenebrousRibs.ReagentBank = meatTenebrous
end
function Glockfarmer:ReloadLabel()
    itemsGroup:ReleaseChildren()
    if (self.db.profile.ShowAllCharacters) then
        for i, playerTable in pairs(self.db.global) do
            local playerGroup = AceGUI:Create("InlineGroup");
            playerGroup:SetTitle(i);
            playerGroup:SetWidth(420);
            playerGroup:SetLayout("Flow");

            if (Glockfarmer:CanShowHerbs()) then
                Glockfarmer:PrintHerbs(self.db.global[i].Herbs, playerGroup);
            end

            if (Glockfarmer:CanShowFish()) then
                Glockfarmer:PrintFish(self.db.global[i].Fish, playerGroup);
            end

            if (Glockfarmer:CanShowMeat()) then
                Glockfarmer:PrintMeat(self.db.global[i].Meat, playerGroup);
            end

            if (Glockfarmer:CanShowCloth()) then
                Glockfarmer:PrintCloth(self.db.global[i].Cloth, playerGroup);
            end

            if (Glockfarmer:CanShowOre()) then
                Glockfarmer:PrintOre(self.db.global[i].Ore, playerGroup);
            end

            if (Glockfarmer:CanShowLeather()) then
                Glockfarmer:PrintLeather(self.db.global[i].Leather, playerGroup);
            end

            itemsGroup:AddChild(playerGroup);
        end
    else
        local playerGroup = AceGUI:Create("InlineGroup");
        playerGroup:SetTitle(playerName);
        playerGroup:SetFullWidth(true);
        playerGroup:SetLayout("Flow");

        if (Glockfarmer:CanShowHerbs()) then
            Glockfarmer:PrintHerbs(self.db.global[playerName].Herbs, playerGroup);
        end

        if (Glockfarmer:CanShowFish()) then
            Glockfarmer:PrintFish(self.db.global[playerName].Fish, playerGroup);
        end

        if (Glockfarmer:CanShowMeat()) then
            Glockfarmer:PrintMeat(self.db.global[playerName].Meat, playerGroup);
        end

        if (Glockfarmer:CanShowCloth()) then
            Glockfarmer:PrintCloth(self.db.global[playerName].Cloth, playerGroup);
        end

        if (Glockfarmer:CanShowOre()) then
            Glockfarmer:PrintOre(self.db.global[playerName].Ore, playerGroup);
        end

        if (Glockfarmer:CanShowLeather()) then
            Glockfarmer:PrintLeather(self.db.global[playerName].Leather, playerGroup);
        end

        itemsGroup:AddChild(playerGroup);
    end

    scroll:DoLayout()
end
function Glockfarmer:GetTooltip(toolTip)
    if (Glockfarmer:CanShowHerbs()) then
        Glockfarmer:PrintHerbsLine(self.db.global[playerName].Herbs, toolTip);
    end
    if (Glockfarmer:CanShowFish()) then
        Glockfarmer:PrintFishLine(self.db.global[playerName].Fish, toolTip);
    end

    if (Glockfarmer:CanShowMeat()) then
        Glockfarmer:PrintMeatLine(self.db.global[playerName].Meat, toolTip);
    end

    if (Glockfarmer:CanShowCloth()) then
        Glockfarmer:PrintClothLine(self.db.global[playerName].Cloth, toolTip);
    end

    if (Glockfarmer:CanShowOre()) then
        Glockfarmer:PrintOreLine(self.db.global[playerName].Ore, toolTip);
    end

    if (Glockfarmer:CanShowLeather()) then
        Glockfarmer:PrintLeatherLine(self.db.global[playerName].Leather, toolTip);
    end
end

function Glockfarmer:PrintBags()
    Glockfarmer:GetPersonalBags()

    if (IsReagentBankUnlocked()) then
        Glockfarmer:GetReagentBank()
    end
    if (IsBankOpen) then
        Glockfarmer:GetBank()
    end
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("FarmDB", Defaults, true);
    LibStub("AceConfig-3.0"):RegisterOptionsTable("GlockFarmer", myOptionsTable, {"gfopts"});
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("GlockFarmer", "GlockFarmer");
    frame = AceGUI:Create("GlockFrame");
    frame:SetLayout("Fill");
    frame:SetTitle("Glock Farmer");
    frame:EnableResize(false);
    frame:EnableMove(false);
    if self.db.profile.FramePoint then
        frame:SetPoint(self.db.profile.FramePoint);
    else
        frame:SetPoint("Center");
    end
    frame:SetHeight(self.db.profile.FrameHeight);
    frame:SetWidth(self.db.profile.FrameWidth);

    scroll = AceGUI:Create("ScrollFrame");
    scroll:SetLayout("List");
    frame:AddChild(scroll);

    upperGroup = AceGUI:Create("SimpleGroup");
    upperGroup:SetFullWidth(true);
    optionsTabGroup = AceGUI:Create("TabGroup");
    optionsTabGroup:SetFullWidth(true);
    optionsTabGroup:SetLayout("Flow");
    optionsTabGroup:SetTabs({{text="Main Options", value="MainTab"}, {text="Gathering Options", value="GatheringTab"}});
    optionsTabGroup:SetCallback("OnGroupSelected", SelectOptionsGroup);
    optionsTabGroup:SelectTab("MainTab");

    upperGroup:AddChild(optionsTabGroup);
    scroll:AddChild(upperGroup);

    itemsGroup = AceGUI:Create("InlineGroup");
    itemsGroup:SetTitle("Items");
    itemsGroup:SetFullWidth(true);
    itemsGroup:SetLayout("Flow");
    scroll:AddChild(itemsGroup);
    frame:Show();
end
function Glockfarmer:OnEnable()
    -- Called when the addon is enabled
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    self:RegisterEvent("BAG_UPDATE");
    self:RegisterEvent("BANKFRAME_OPENED");
    self:RegisterEvent("BANKFRAME_CLOSED");
end
function Glockfarmer:PLAYER_ENTERING_WORLD()
    Glockfarmer:PrintBags();
    GlockfarmerLDB = LibStub("LibDataBroker-1.1"):NewDataObject("GlockFarmer", {
		type = "data source",
		text = "Glock Farmer",
		icon = "Interface\\Icons\\Spell_Holy_Dizzy",
		OnEnter = function(self)
            local tooltip = LibQTip:Acquire("GlockFarmerTooltip", 5, "LEFT", "LEFT", "LEFT", "LEFT", "LEFT");
            self.tooltip = tooltip;   
            -- Use smart anchoring code to anchor the tooltip to our frame
            tooltip:SmartAnchorTo(self);
            Glockfarmer:GetTooltip(tooltip);
            -- Show it, et voilà !
            tooltip:Show();
		end,
		OnLeave = function(self)
            --GameTooltip:Hide()
            self.tooltip:Hide();
            LibQTip:Release(self.tooltip);
            self.tooltip = nil;
		end,
	});
end
function Glockfarmer:BAG_UPDATE()
    Glockfarmer:PrintBags()
end
function Glockfarmer:BANKFRAME_OPENED()
    IsBankOpen = true
    Glockfarmer:GetBank()
    Glockfarmer:ReloadLabel()
end
function Glockfarmer:BANKFRAME_CLOSED()
    IsBankOpen = false
end

function Glockfarmer:CheckNumber(info, num)
    a = tonumber(num)
    if (type(a) == "number") then
        return true
    else
        return L["CheckNumberError"];
    end
end

-- function that draws the widgets for the first tab
function Glockfarmer:DrawMainOptionsGroup(container)
    local enableMoveCheckbox = AceGUI:Create("CheckBox")
    enableMoveCheckbox:SetType("checkbox")
    enableMoveCheckbox:SetLabel(L["EnableMove"]);
    enableMoveCheckbox:SetValue(false)
    enableMoveCheckbox:SetCallback(
        "OnValueChanged",
        function(widget)
            frame:EnableMove(enableMoveCheckbox:GetValue());
            if not enableMoveCheckbox:GetValue() then
                self.db.profile.FramePoint = frame:GetPoint();
            end
        end
    );

    local enableResizeCheckbox = AceGUI:Create("CheckBox")
    enableResizeCheckbox:SetType("checkbox");
    enableResizeCheckbox:SetLabel(L["EnableResize"]);
    enableResizeCheckbox:SetValue(false)
    enableResizeCheckbox:SetCallback(
        "OnValueChanged",
        function(widget)
            frame:EnableResize(enableResizeCheckbox:GetValue());
            if not enableResizeCheckbox:GetValue() then
                self.db.profile.FrameHeight = frame:GetHeight();
                self.db.profile.FrameWidth = frame:GetWidth();
            end
        end
    );

    container:AddChild(enableMoveCheckbox);
    container:AddChild(enableResizeCheckbox);
end
  
  -- function that draws the widgets for the second tab
function Glockfarmer:DrawGatheringOptionsGroup(container)    
    container:AddChild(Glockfarmer:GetHerbCheckbox());    
    container:AddChild(Glockfarmer:GetFishingCheckbox());
    container:AddChild(Glockfarmer:GetMeatCheckbox());    
    container:AddChild(Glockfarmer:GetClothCheckbox());   
    container:AddChild(Glockfarmer:GetOreCheckbox());
    container:AddChild(Glockfarmer:GetLeatherCheckbox());

    allCharsCheckbox = AceGUI:Create("CheckBox")
    allCharsCheckbox:SetType("checkbox")
    allCharsCheckbox:SetLabel(L["ShowAllChars"])
    allCharsCheckbox:SetValue(self.db.profile.ShowAllCharacters)
    allCharsCheckbox:SetCallback(
        "OnValueChanged",
        function(widget)
            self.db.profile.ShowAllCharacters = allCharsCheckbox:GetValue()
            Glockfarmer:PrintBags()
        end
    )
    container:AddChild(allCharsCheckbox)

    local button = AceGUI:Create("GlockButton");
    button:SetText(L["MoreOptions"]);
    button:SetWidth(100);
    button:SetCallback(
        "OnClick",
        function()
            InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
            InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
        end
    )
    container:AddChild(button)
    scroll:DoLayout();
end

-- Callback function for OnGroupSelected
function SelectOptionsGroup(container, event, group)
    container:ReleaseChildren();
    Glockfarmer:ReleaseHerbCheckbox();
    Glockfarmer:ReleaseFishingCheckbox();
    Glockfarmer:ReleaseMeatCheckbox();
    Glockfarmer:ReleaseClothCheckbox();
    Glockfarmer:ReleaseOreCheckbox();
    Glockfarmer:ReleaseLeatherCheckbox();
    frame:EnableResize(false);
    frame:EnableMove(false);
    allCharsCheckbox = nil;
    if group == "MainTab" then
        Glockfarmer:DrawMainOptionsGroup(container);
    elseif group == "GatheringTab" then
        Glockfarmer:DrawGatheringOptionsGroup(container);
    end
    upperGroup:DoLayout();
    scroll:DoLayout();
end