--[[  TEST ITEMS ]] --

local TEST_SIMPLE_ITEM = nil
local TEST_EQUIPPED_HELM = nil
local TEST_BASIC_GEAR_LINK = nil
local TEST_UPGRADED_GEAR_LINK = nil
local TEST_WAND = nil
local TEST_HELD_IN_OFFHAND = nil
local TEST_NECK = nil
local TEST_SHIELD = nil
local TEST_CROSSBOW = nil
local TEST_GUN = nil
local TEST_LEGION_TRINKET = nil
local TEST_LEGION_PLATE_BOOTS = nil
local TEST_LEGION_RELIC = nil
local TEST_LEGION_NECK = nil
local TEST_ARCHI_STAFF = nil
local TEST_LEGION_LEATHER_CHEST = nil
local TEST_UBER_NECK = nil
local TEST_EQUIPPED_NECK = nil

local function LoadTestItems()

	INRLR_SendUserMessage('Loading test items')
	
	-- the test items from wowhead aren't fully formed, hence the strange looking call to GetItemInfo

	TEST_SIMPLE_ITEM = '\124cff9d9d9d\124Hitem:33571:0:0:0:0:0:0:0:0:0:0\124h[Rending Talon]\124h\124r'
	TEST_SIMPLE_ITEM = select(2, GetItemInfo(TEST_SIMPLE_ITEM))
	
	TEST_EQUIPPED_HELM = GetInventoryItemLink('player', 1)

	TEST_EQUIPPED_NECK = GetInventoryItemLink('player', 2)
	
	TEST_EQUIPPED_WEAPON = GetInventoryItemLink('player', 16)
	
	TEST_BASIC_GEAR_LINK = '\124cffa335ee\124Hitem:124261:0:0:0:0:0:0:0:0:0:529:0:1:1801\124h[Oathclaw Helm]\124h\124r'
	TEST_BASIC_GEAR_LINK = select(2, GetItemInfo(TEST_BASIC_GEAR_LINK))
	
	TEST_UPGRADED_GEAR_LINK = '\124cffa335ee\124Hitem:124261::::::::100:103:4:6:1:567:531:::\124h[Oathclaw Helm]\124h\124r'
	TEST_UPGRADED_GEAR_LINK = select(2, GetItemInfo(TEST_UPGRADED_GEAR_LINK))
	
	TEST_WAND = '\124cffa335ee\124Hitem:124390:0:0:0:0:0:0:0:0:0:529:0:1:1801\124h[Deceiver\'s Felbeak Wand]\124h\124r'
	TEST_WAND = select(2, GetItemInfo(TEST_WAND))
	
	TEST_HELD_IN_OFFHAND = '\124cffa335ee\124Hitem:124206:0:0:0:0:0:0:0:0:0:529:0:1:1801\124h[Thumping Demonheart Fetish]\124h\124r'
	TEST_HELD_IN_OFFHAND = select(2, GetItemInfo(TEST_HELD_IN_OFFHAND))
	
	TEST_NECK = '\124cffa335ee\124Hitem:124216:0:0:0:0:0:0:0:0:0:529:0:1:1801\124h[Bolt-Latched Felsteel Gorget]\124h\124r'
	TEST_NECK = select(2, GetItemInfo(TEST_NECK))
	
	TEST_SHIELD = '\124cffa335ee\124Hitem:124354:0:0:0:0:0:0:0:0:0:529:0:1:1801\124h[Felforged Aegis]\124h\124r'
	TEST_SHIELD = select(2, GetItemInfo(TEST_SHIELD))
	
	TEST_CROSSBOW = '\124cffa335ee\124Hitem:32253:0:0:0:0:0:0:0:0:0:0\124h[Legionkiller]\124h\124r'
	TEST_CROSSBOW = select(2, GetItemInfo(TEST_CROSSBOW))
	
	TEST_GUN = '\124cff9d9d9d\124Hitem:25405:0:0:0:0:0:0:0:0:0:0\124h[Rusted Musket]\124h\124r'
	TEST_GUN = select(2, GetItemInfo(TEST_GUN))
	
--  ommented this trinket out - WoW can't load the item tooltip
--	TEST_LEGION_TRINKET = '\124cffa335ee\124Hitem:139328:0:0:0:0:0:0:0:0:0:0:0:1:1807\124h[Ursoc\'s Rending Paw]\124h\124r'
--	TEST_LEGION_TRINKET = select(2, GetItemInfo(TEST_LEGION_TRINKET))
	
	TEST_LEGION_PLATE_BOOTS = '\124cffa335ee\124Hitem:139234:0:0:0:0:0:0:0:0:0:0:0:1:1807\124h[Trampling Warboots]\124h\124r'
	TEST_LEGION_PLATE_BOOTS = select(2, GetItemInfo(TEST_LEGION_PLATE_BOOTS))
	
	TEST_LEGION_RELIC = '\124cffa335ee\124Hitem:139261:0:0:0:0:0:0:0:0:0:0:0:1:1807\124h[Tuft of Ironfur]\124h\124r'
	TEST_LEGION_RELIC = select(2, GetItemInfo(TEST_LEGION_RELIC))

	TEST_LEGION_NECK = '\124cffa335ee\124Hitem:140900:0:0:0:0:0:0:0:0:0:0:0:1:3443\124h[Brooch of the Astral Scryer]\124h\124r'
	TEST_LEGION_NECK = select(2, GetItemInfo(TEST_LEGION_NECK))

	TEST_ARCHI_STAFF = '\124cffa335ee\124Hitem:124382:0:0:0:0:0:0:0:0:0:529:0:1:1799\124h[Edict of Argus]\124h\124r'
	TEST_ARCHI_STAFF = select(2, GetItemInfo(TEST_ARCHI_STAFF))

	TEST_LEGION_LEATHER_CHEST = '\124cffa335ee\124Hitem:141570:0:0:0:0:0:0:0:0:0:0\124h[Cainen\'s Preeminent Chestguard]\124h\124r'
	TEST_LEGION_LEATHER_CHEST = select(2, GetItemInfo(TEST_LEGION_LEATHER_CHEST))
	
	TEST_UBER_NECK = "\124cffa335ee\124Hitem:141326::::::::110::::1:3443:\124h[Talisman of the Shal'dorei]\124h\124r"
	TEST_UBER_NECK = select(2, GetItemInfo(TEST_UBER_NECK))
end
	
-- for debugging this is fine, but may need to add a listener for GETITEMINFO_RECEIVED in case items aren't loaded in cache to make foolproof
local function PrintItemInfo(item)
	print('item is ', item)	
	if item ~= nil then
		name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(item) 
		print('   equipSlot is ', equipSlot)
		print('   CanEquipItem is ', CanEquipItem(item, 'player'))
	end
end

--	sample usage:  PrintInventory('player')
local function PrintInventory(character)
	for i = 0, 19 do
		equippedItem = GetInventoryItemLink(character,  i)
		print('i = ', i)
		PrintItemInfo(equippedItem)
	end
end

function INRLR_PrintConstants() 
	print('   INRLR_NOTIFY_MODE is ', INRLR_NOTIFY_MODE)
	print('   INRLR_INCLUDE_BOE is ', INRLR_INCLUDE_BOE)
	print('   INRLR_MIN_ILVL is ', INRLR_MIN_ILVL)
	print('   INRLR_MIN_QUALITY is ', INRLR_MIN_QUALITY)
	print('   INRLR_DEBUG is ', INRLR_DEBUG)
end

function INRLR_TestGetNames()
	local limit = 3
	local names
	
	names = {}
	print('0a - ' .. GetNames(names))
	print('0b - ' .. GetNames(names, limit))
	
	names = {'Ark {655}'}
	print('1a - ' .. GetNames(names))
	print('1b - ' .. GetNames(names, limit))
	
	names = {'Ark {655}', 'Arktwo {655}'}
	print('2a - ' .. GetNames(names))
	print('2b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {655}', 'Arkthree {655}'}
	print('3a - ' .. GetNames(names))
	print('3b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {655}', 'Arkthree {655}', 'Arkfour {655}'}
	print('4a - ' .. GetNames(names))
	print('4b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {654}', 'Arkthree {656}', 'Arkfour {657}', 'Arkfive {653}'}
	print('5a - ' .. GetNames(names))
	print('5b - ' .. GetNames(names, limit))

	names = {'Ark {651}', 'Arktwo {652}', 'Arkthree {653}', 'Arkfour {654}', 'Arkfive {655}'}
	print('6a - ' .. GetNames(names))
	print('6b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {654}', 'Arkthree {653}', 'Arkfour {652}', 'Arkfive {651}'}
	print('7a - ' .. GetNames(names))
	print('7b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {654}', 'Arkthree {654}', 'Arkfour {652}', 'Arkfive {651}'}
	print('8a - ' .. GetNames(names))
	print('8b - ' .. GetNames(names, limit))

	names = {'Ark {655}', 'Arktwo {655}', 'Arkthree {655}', 'Arkfour {655}', 'Arkfive {655}'}
	print('9a - ' .. GetNames(names))
	print('9b - ' .. GetNames(names, limit))

	names = {'Ark', 'Arktwo', 'Arkthree', 'Arkfour', 'Arkfive'}
	print('10a - ' .. GetNames(names))
	print('10b - ' .. GetNames(names, limit))

end

-- THE FOLLOWING ACCESSES VARIABLES FROM CORE FILE; MUST COPY INTO CORE FILE TO USE
local function TestEndRolls()
	LoadTestItems()

	-- no rollers
	rollDelayFrame = CreateFrame('Frame')
	currentRollItem = TEST_NECK
	currentRollOwner = UnitName('player')
	currentRolls = {}
	INRLR_EndRolls()

	-- one roller
	rollDelayFrame = CreateFrame('Frame')
	currentRollItem = TEST_NECK
	currentRollOwner = UnitName('player')
	currentRolls = {
		['Ark'] = 50
	}
	INRLR_EndRolls()
	
	-- multiple rollers
	rollDelayFrame = CreateFrame('Frame')
	currentRollItem = TEST_NECK
	currentRollOwner = UnitName('player')
	currentRolls = {
		['Mad50'] = 50,
		['Mad55'] = 55,
		['Mad14'] = 14,
		['Mad90'] = 90,
		['Mad1'] = 1
	}
	INRLR_EndRolls()

	-- two rollers with a tie
	rollDelayFrame = CreateFrame('Frame')
	currentRollItem = TEST_NECK
	currentRollOwner = UnitName('player')
	currentRolls = {
		['Mad99a'] = 99,
		['Mad55'] = 55,
		['Mad99b'] = 99,
		['Mad90'] = 90,
		['Mad1'] = 1
	}
	INRLR_EndRolls()

	-- more than two rollers with a tie
	rollDelayFrame = CreateFrame('Frame')
	currentRollItem = TEST_NECK
	currentRollOwner = UnitName('player')
	currentRolls = {
		['Mad99a'] = 99,
		['Mad55'] = 55,
		['Mad99b'] = 99,
		['Mad90'] = 90,
		['Mad99c'] = 99,
		['Mad99d'] = 99,
		['Mad1'] = 1
	}
	INRLR_EndRolls()
end

-- THE FOLLOWING ACCESSES VARIABLES FROM CORE FILE; MUST COPY INTO CORE FILE TO USE
local function INRLR_TEST_AskForRolls()
	LoadTestItems()

	queuedRollItems[0] = TEST_SHIELD
	queuedRollOwners[0] = 'TestPerson12345'
	queuedRollItems[1] = TEST_NECK
	queuedRollOwners[1] = 'Killindmice'
	queuedRollItems[2] = TEST_WAND
	queuedRollOwners[2] = 'Ark'
	queuedRollItems[3] = TEST_UPGRADED_GEAR_LINK
	queuedRollOwners[3] = 'TestPerson12345'
	numOfQueuedRollItems = 4
	AskForRolls()
end

--  ex: /run AddCharacterToCache('Madtoo', 'Shaman')
-- THE FOLLOWING ACCESSES VARIABLES FROM CORE FILE; MUST COPY INTO CORE FILE TO USE
local function AddCharacterToCache(characterName, className)
	LoadTestItems()
--TODO make all valid cloth items
	groupInfoCache[characterName] = {
		['ClassName'] = className,
		[1] = TEST_BASIC_GEAR_LINK,
		[2] = TEST_BASIC_GEAR_LINK,
		[3] = TEST_BASIC_GEAR_LINK,
		[4] = TEST_BASIC_GEAR_LINK,
		[5] = TEST_BASIC_GEAR_LINK,
		[16] = TEST_BASIC_GEAR_LINK
	}
end

local function INRLR_TEST_CreateTestCache()
--[[
	-- note that below is from before the change to cache items instead of item ids
	groupInfoCache = {
		['Ark'] = {
			['ClassName'] = 'Druid',
			['ChestSlot'] = 740,
			['HeadSlot'] = 750,
			['MainHandSlot'] = 5,
			['SecondaryHandSlot'] = 900
		},

		['Madtoo'] = {
			['ClassName'] = 'Shaman',
			['ChestSlot'] = 740,
			['HeadSlot'] = 750,
			['MainHandSlot'] = 900,
			['SecondaryHandSlot'] = 5
		}
	}
]]--	
end

local function INRLR_TEST_IsAnUpgradeForAnyCharacter()
	LoadTestItems()

	print('is item an upgrade 1a = ', IsAnUpgradeForAnyCharacter(TEST_SHIELD))
	print('is item an upgrade 1b = ', IsAnUpgradeForAnyCharacter(TEST_NECK))
	print('is item an upgrade 1c = ', IsAnUpgradeForAnyCharacter(TEST_LEGION_TRINKET))
	print('is item an upgrade 2 = ', IsAnUpgradeForAnyCharacter(TEST_LEGION_PLATE_BOOTS))
	print('is item an upgrade 3 = ', IsAnUpgradeForAnyCharacter(TEST_LEGION_RELIC))
	print('is item an upgrade 4 = ', IsAnUpgradeForAnyCharacter(TEST_LEGION_NECK))
	print('is item an upgrade 5 = ', IsAnUpgradeForAnyCharacter(TEST_ARCHI_STAFF))
end

local function INRLR_TEST_ShouldBeEvaluated()
	LoadTestItems()

	print('is eligible for trade 1 = ', ShouldBeEvaluated(TEST_LEGION_TRINKET))
	print('is eligible for trade 2 = ', ShouldBeEvaluated(TEST_LEGION_PLATE_BOOTS))
	print('is eligible for trade 3 = ', ShouldBeEvaluated(TEST_LEGION_RELIC))
	print('is eligible for trade 4 = ', ShouldBeEvaluated(TEST_LEGION_NECK))
	print('is eligible for trade 5 = ', ShouldBeEvaluated(TEST_ARCHI_STAFF))
end	

function INRLR_TEST_LootReceived()
	LoadTestItems()
	
--	lootString = 'You receive loot: ' .. TEST_EQUIPPED_WEAPON .. '.'  -- is an upgrade for kdm so should ask Ark to whisper
--	LootReceivedEvent(self, nil, lootString)	
print('neck is ', TEST_EQUIPPED_NECK)
	lootString = 'You receive loot: ' .. TEST_EQUIPPED_NECK .. '.'  -- upgrade for everyone
	LootReceivedEvent(self, nil, lootString)	
--	lootString = 'Killindmice receives loot: ' .. TEST_EQUIPPED_WEAPON .. '.'  -- is better for kdm than what she has, so won't prompt whisper
--	LootReceivedEvent(self, nil, lootString)	
--	lootString = 'Killindmice receives loot: ' .. TEST_BASIC_GEAR_LINK .. '.'  -- to test need an item that is not an upg for kdm but would be for Ark, so Ark has to equip lower ilvl stuff to test
--	LootReceivedEvent(self, nil, lootString)	

--[[	
	for i = 0, 19 do
		equippedItem = GetInventoryItemLink('player',  i)
		print('i = ', i)
		print('   equippedItem = ', equippedItem)
		if equippedItem ~= nil then
			lootString = 'You receive loot: ' .. equippedItem .. '.'
			LootReceivedEvent(self, nil, lootString)	
		end
	end
]]--

end

function INRLR_UnitTest()
--	if not isEnabled then
--		print('   Note that addon is current disabled, so UnitTest results may be incorrect!')
--	end

--	INRLR_TEST_LootReceived()
end
