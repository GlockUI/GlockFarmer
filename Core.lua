Glockfarmer = LibStub("AceAddon-3.0"):NewAddon("Glockfarmer");
local AceGUI = LibStub("AceGUI-3.0");

local frame = AceGUI:Create("Frame")
frame:SetLayout("Fill")
frame:SetTitle("Glock Farmer")

local scroll = AceGUI:Create("ScrollFrame")
scroll:SetLayout("List")
frame:AddChild(scroll)

local optsGroup = AceGUI:Create("InlineGroup");
optsGroup:SetTitle("Professions");
optsGroup:SetLayout("Flow")
scroll:AddChild(optsGroup);

local herbCheckbox = AceGUI:Create("CheckBox");
herbCheckbox:SetType("checkbox");
herbCheckbox:SetLabel("Show Herbs");
herbCheckbox:SetValue(1);
herbCheckbox:SetCallback("OnValueChanged", function(widget) 
    self.db.ShowHerbalism = herbCheckbox:GetValue();
    PrintBags();
end);
optsGroup:AddChild(herbCheckbox);

local fishingCheckbox = AceGUI:Create("CheckBox");
fishingCheckbox:SetType("checkbox");
fishingCheckbox:SetLabel("Show Fish");
fishingCheckbox:SetValue(1);
fishingCheckbox:SetCallback("OnValueChanged", function(widget) 
    PrintBags();
end);
optsGroup:AddChild(fishingCheckbox);

local clothCheckbox = AceGUI:Create("CheckBox");
clothCheckbox:SetType("checkbox");
clothCheckbox:SetLabel("Show Cloth");
clothCheckbox:SetValue(1);
clothCheckbox:SetCallback("OnValueChanged", function(widget) 
    PrintBags();
end);
optsGroup:AddChild(clothCheckbox);

local itemsGroup = AceGUI:Create("InlineGroup");
itemsGroup:SetTitle("Items");
scroll:AddChild(itemsGroup);

--Herbs
local DeathBlossomBagCount = 0;
local DeathBlossomReagentCount = 0;
local NightshadeBagCount = 0;
local NightshadeReagentCount = 0;
local RisingGloryBagCount = 0;
local RisingGloryReagentCount = 0;
local MarrowrootBagCount = 0;
local MarrowrootReagentCount = 0;
local WidowbloomBagCount = 0;
local WidowbloomReagentCount = 0;
local VigilsTorchBagCount = 0;
local VigilsTorchReagentCount = 0;
--Fishing
local LostSoleBagCount = 0
local LostSoleReagentCount = 0
local SilverPikeBagCount = 0
local SilverPikeReagentCount = 0
local PoketBoneFishBagCount = 0
local PoketBoneFishReagentCount = 0
local IridescentBagCount = 0
local IridescentReagentCount = 0
local SpinefinPiranhaBagCount = 0
local SpinefinPiranhaReagentCount = 0
local ElysianBagCount = 0
local ElysianReagentCount = 0
--Cloth
local ShroudedClothBagCount = 0;
local ShroudedClothReagentCount = 0;
local LightlessSilkBagCount = 0;
local LightlessSilkReagentCount = 0;

function Glockfarmer:OnInitialize()
	SLASH_GLOCKFARMER1 = "/Glockfarmer"
	SlashCmdList["GLOCKFARMER"] = function(Cmd, ...)
		if(msg == "show")
        then
            frame:Show();
        elseif(msg == "hide")
        then
            frame:Hide();
        elseif(msg == "scan")
        then
            PrintBags();        
        else
            print("Proper argument not given!")
        end
    end
    frame:Show()
    PrintBags();
end

function PrintBags()
    GetPersonalBags();

    if(IsReagentBankUnlocked()){
        GetReagentBank();
    }


    ReloadLabel();
end
function GetPersonalBags(args)
    print("starting bag scan")
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
            end
        end
    end
    DeathBlossomBagCount = herbDBCount;
    NightshadeBagCount = herbNSCount;
    RisingGloryBagCount = herbRGCount;
    MarrowrootBagCount = herbMTCount;
    WidowbloomBagCount = herbWTCount;
    VigilsTorchBagCount = herbVTCount;

    LostSoleBagCount = fishingLSCount;
    SilverPikeBagCount = fishingSPCount;
    PoketBoneFishBagCount = fishingPBCount;
    IridescentBagCount = fishingIACount;
    SpinefinPiranhaBagCount = fishingSpineCount;
    ElysianBagCount = fishingETCount;

    LightlessSilkBagCount = clothLSCount;
    ShroudedClothBagCount = clothSCCount;
end
function GetReagentBank(args)
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
        end
    end

    DeathBlossomReagentCount = herbDBCount;
    NightshadeReagentCount = herbNSCount;
    RisingGloryReagentCount = herbRGCount;
    MarrowrootReagentCount = herbMTCount;
    WidowbloomReagentCount = herbWTCount;
    VigilsTorchReagentCount = herbVTCount;

    LostSoleReagentCount = fishingLSCount;
    SilverPikeReagentCount = fishingSPCount;
    PoketBoneFishReagentCount = fishingPBCount;
    IridescentReagentCount = fishingIACount;
    SpinefinPiranhaReagentCount = fishingSpineCount;
    ElysianReagentCount = fishingETCount;

    LightlessSilkReagentCount = clothLSCount;
    ShroudedClothReagentCount = clothSCCount;
end
function ReloadLabel()
    itemsGroup:ReleaseChildren()
    
    if(herbCheckbox:GetValue()){
        PrintHerbs();
    }

    if(fishingCheckbox:GetValue()){
        PrintFish();
    }

    if(clothCheckbox:GetValue()){
        PrintCloth();
    }
    
end
function PrintHerbs()
    local herbsGroup = AceGUI:Create("InlineGroup");
    herbsGroup:SetTitle("Herbs");
    herbsGroup:SetLayout("Flow")
    itemsGroup:AddChild(herbsGroup);

    local deathBlossomLabel = AceGUI:Create("Label")
    deathBlossomLabel:SetText("Death Blossom: Bag:" .. DeathBlossomBagCount .. " Reagent: " .. DeathBlossomReagentCount)
    herbsGroup:AddChild(deathBlossomLabel)

    local nightshadeLabel = AceGUI:Create("Label")
    nightshadeLabel:SetText("Nightshade: Bag:" .. NightshadeBagCount .. " Reagent: " .. NightshadeReagentCount)
    herbsGroup:AddChild(nightshadeLabel)

    local risingGloryLabel = AceGUI:Create("Label")
    risingGloryLabel:SetText("Rising Glory: Bag:" .. RisingGloryBagCount .. " Reagent: " .. PoketBoneFishReagentCount)
    herbsGroup:AddChild(risingGloryLabel)

    local marrowrootLabel = AceGUI:Create("Label")
    marrowrootLabel:SetText("Marrowroot: Bag: " .. MarrowrootBagCount .. " Reagent: " .. MarrowrootReagentCount)
    herbsGroup:AddChild(marrowrootLabel)

    local widowbloomLabel = AceGUI:Create("Label")
    widowbloomLabel:SetText("Widowbloom: Bag:" .. WidowbloomBagCount .. " Reagent: " .. WidowbloomReagentCount)
    herbsGroup:AddChild(widowbloomLabel)

    local vigilsTorchLabel = AceGUI:Create("Label")
    vigilsTorchLabel:SetText("Vigils Torch: Bag" .. VigilsTorchBagCount .. " Reagent: " .. VigilsTorchReagentCount)
    herbsGroup:AddChild(vigilsTorchLabel)
end
function PrintFish()
    local fishGroup = AceGUI:Create("InlineGroup");
    fishGroup:SetTitle("Fish");
    fishGroup:SetLayout("Flow")
    itemsGroup:AddChild(fishGroup);

    local lostSoleLabel = AceGUI:Create("Label")
    lostSoleLabel:SetText("Lost Sole: Bag:" .. LostSoleBagCount .. " Reagent: " .. DeathBlossomReagentCount)
    fishGroup:AddChild(lostSoleLabel)

    local silvergillLabel = AceGUI:Create("Label")
    silvergillLabel:SetText("Silvergill Pike: Bag:" .. SilverPikeBagCount .. " Reagent: " .. SilverPikeReagentCount)
    fishGroup:AddChild(silvergillLabel)

    local poketLabel = AceGUI:Create("Label")
    poketLabel:SetText("Pocked Bonefish: Bag:" .. PoketBoneFishBagCount .. " Reagent: " .. PoketBoneFishReagentCount)
    fishGroup:AddChild(poketLabel)

    local iridenscentLabel = AceGUI:Create("Label")
    iridenscentLabel:SetText("Iridescent Amberjack: Bag: " .. IridescentBagCount .. " Reagent: " .. IridescentReagentCount)
    fishGroup:AddChild(iridenscentLabel)

    local spinefishLabel = AceGUI:Create("Label")
    spinefishLabel:SetText("Spinefin Piranha: Bag:" .. SpinefinPiranhaBagCount .. " Reagent: " .. SpinefinPiranhaReagentCount)
    fishGroup:AddChild(spinefishLabel)

    local elysianLabel = AceGUI:Create("Label")
    elysianLabel:SetText("Elysian Thade: Bag" .. ElysianBagCount .. " Reagent: " .. ElysianReagentCount)
    fishGroup:AddChild(elysianLabel)
end
function PrintCloth()
    local clothGroup = AceGUI:Create("InlineGroup");
    clothGroup:SetTitle("Cloth");
    clothGroup:SetLayout("Flow")
    itemsGroup:AddChild(clothGroup);

    local ShroudedLabel = AceGUI:Create("Label")
    ShroudedLabel:SetText("Shrouded Cloth: Bag:" .. LostSoleBagCount .. " Reagent: " .. DeathBlossomReagentCount)
    clothGroup:AddChild(ShroudedLabel)

    local LightlessLabel = AceGUI:Create("Label")
    LightlessLabel:SetText("Lightless Silk: Bag:" .. LightlessSilkBagCount .. " Reagent: " .. LightlessSilkReagentCount)
    clothGroup:AddChild(LightlessLabel)
end
local eventFrame= CreateFrame("Frame")
eventFrame:RegisterEvent("BAG_UPDATE");

eventFrame:SetScript("OnEvent", function(self,event, ...)
    if event == "BAG_UPDATE" then
        PrintBags();
    end
end)