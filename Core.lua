local AceGUI = LibStub("AceGUI-3.0")

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

local itemsGroup = AceGUI:Create("InlineGroup");
itemsGroup:SetTitle("Herbs");
scroll:AddChild(itemsGroup);

frame:Show()

local showHerbalism = 1;
local showFishing = 1;

local DeathBlossomCount = 0;
local NightshadeCount = 0;
local RisingGloryCount = 0;
local MarrowrootCount = 0;
local WidowbloomCount = 0;
local VigilsTorchCount = 0;

SLASH_GLOCKFARMER1 = "/Glockfarmer"
function SlashCmdList.GLOCKFARMER(msg)
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

function ReloadLabel()
    itemsGroup:ReleaseChildren()

    
end

function ListHerbs(args)
    local deathBlossomLabel = AceGUI:Create("Label")
    deathBlossomLabel:SetText("Death Blossom:" .. DeathBlossomCount)
    itemsGroup:AddChild(deathBlossomLabel)

    local nightshadeLabel = AceGUI:Create("Label")
    nightshadeLabel:SetText("Nightshade:" .. NightshadeCount)
    itemsGroup:AddChild(nightshadeLabel)

    local risingGloryLabel = AceGUI:Create("Label")
    risingGloryLabel:SetText("Rising Glory:" .. RisingGloryCount)
    itemsGroup:AddChild(risingGloryLabel)

    local marrowrootLabel = AceGUI:Create("Label")
    marrowrootLabel:SetText("Marrowroot:" .. MarrowrootCount)
    itemsGroup:AddChild(marrowrootLabel)

    local widowbloomLabel = AceGUI:Create("Label")
    widowbloomLabel:SetText("Widowbloom:" .. WidowbloomCount)
    itemsGroup:AddChild(widowbloomLabel)

    local vigilsTorchLabel = AceGUI:Create("Label")
    vigilsTorchLabel:SetText("Vigils Torch:" .. VigilsTorchCount)
    itemsGroup:AddChild(vigilsTorchLabel)
end



function PrintBags()
    print("starting bag scan")
    dbCount = 0;
    nsCount = 0;
    rgCount = 0;
    mtCount = 0;
    wbCount = 0;
    vtCount = 0;
    showHerb = herbCheckbox:GetValue();
    if(showHerb)
    then 
        print("herbing is enabled")
    else
        print("Herbing is not enabled " .. showHerb);
    end
    for i=0,5 do
        local slots = GetContainerNumSlots(i);
        for s=0,slots do
            icon, itemCount, locked, quality, readable, lootable, itemLink, isFiltered, noValue, itemID = GetContainerItemInfo(i, s)    
            --print("Checkbox value is " .. herbCheckbox:GetValue())        
            if(showHerb)
            then
                print(itemID)
                if(itemID == 171315)
                then
                    print("Found Herbs");
                    nsCount = nsCount + itemCount;
                elseif(itemID == 169701)
                then
                    dbCount = dbCount + itemCount;
                elseif(itemID == 168586)
                then
                    rgCount = rgCount + itemCount;
                elseif(itemID == 168589)
                then
                    mtCount = mtCount + itemCount;
                elseif(itemID == 168583)
                then
                    wbCount = wbCount + itemCount;
                elseif(itemID == 170554)
                then
                    vtCount = vtCount + itemCount;
                end
            end
        end
    end
    DeathBlossomCount = dbCount;
    NightshadeCount = nsCount;
    RisingGloryCount = rgCount;
    MarrowrootCount = mtCount;
    WidowbloomCount = wbCount;
    VigilsTorchCount = vtCount;

    ReloadLabel();
end


local eventFrame= CreateFrame("Frame")
eventFrame:RegisterEvent("BAG_UPDATE");

eventFrame:SetScript("OnEvent", function(self,event, ...)
    if event == "BAG_UPDATE" then
        PrintBags();
    end
end)

PrintBags();