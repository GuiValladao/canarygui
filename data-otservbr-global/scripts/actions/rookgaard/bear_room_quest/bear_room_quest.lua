-- Reward = bag -> 12 arrows, 40 gold coin
local bearChest1 = Action()

function bearChest1.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local bagId = 2853
	local rewardIds = {
		{ 3447, 12 },
		{ 3031, 40 },
	}

	for _, reward in ipairs(rewardIds) do
		local rewardId, rewardCount = reward[1], reward[2]
		if not player:canGetReward(rewardId, "bearChest1") then
			return true
		end
	end

	local bag = player:addItem(bagId, 1)
	if bag then
		for _, reward in ipairs(rewardIds) do
			local rewardId, rewardCount = reward[1], reward[2]
			bag:addItem(rewardId, rewardCount)
		end
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a bag.")
		player:questKV("bearChest1"):set("completed", true)
	end

	return true
end

bearChest1:uid(14044)
bearChest1:register()

-- Reward = Brass Helmet
local bearChest2 = Action()

function bearChest2.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rewardId = 3354
	if not player:canGetReward(rewardId, "bearChest2") then
		return true
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a brass helmet.")
	player:addItem(rewardId, 1)
	player:questKV("bearChest2"):set("completed", true)
	return true
end

bearChest2:uid(14045)
bearChest2:register()

-- Reward = Chain Armor
local bearChest3 = Action()

function bearChest3.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local rewardId = 3358
	if not player:canGetReward(rewardId, "bearChest3") then
		return true
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a chain armor.")
	player:addItem(rewardId, 1)
	player:questKV("bearChest3"):set("completed", true)
	return true
end

bearChest3:uid(14046)
bearChest3:register()