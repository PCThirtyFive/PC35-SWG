naboopc35ScreenPlay = ScreenPlay:new { -- This sets a new screenplay. Any global variables can be set here, in this case screenplay states.
	numberOfActs = 1,
	screenplayName = "naboopc35ScreenPlay",
	states = {
		1, -- accept_task
		2, -- completed_task
		4, -- completed_quest
	},
}
registerScreenPlay("naboopc35ScreenPlay", true) -- Registers the screenplay so it loads on start.
--******************************************************************************************************************************
function naboopc35ScreenPlay:start() -- This just sets, if the planet is enabled, what functions are called when the screenplay starts.
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end
--******************************************************************************************************************************
function naboopc35ScreenPlay:spawnSceneObjects()
	-- This spawns an active area, gives it a name or pointer (pActiveAreaOne) and then below creates an observer for the area.
	local pActiveAreaOne = spawnActiveArea("naboo", "object/active_area.iff", 2110, -197.4, 5738, 60, 0) -- x, z, y, radius, cellID (0 for outside).
	if pActiveAreaOne ~= nil then
		-- the ENTEREDAREA observer just fires when anything enters the area. All observers can be found in /src/server/zone/managers/director/director_manager.cpp
		createObserver(ENTEREDAREA, "naboopc35ScreenPlay", "notifyEnteredAreaOne", pActiveAreaOne) -- screenplay name (doesn't have to be the same screenplay), function name, pointer
		print("naboopc35ScreenPlay:Observer created pActiveAreaOne") -- just a debug print statement for checking things are working.
	end
	spawnSceneObject("naboo", "object/building/general/corellia_nyax_bunker.iff", 2110, -197.4, 5738, 0, math.rad(180) )-- planet, template, x, z, y, cellID, yaw
	
end
--******************************************************************************************************************************
function naboopc35ScreenPlay:spawnMobiles()
	local pHan = spawnMobile("naboo", "han_solo_naboopc35", 1, 6008, -197, 6461, -5, 0)-- planet, template, x, z, y, yaw, cellID
	self:setMoodString(pHan, "npc_standing") -- Sets posture to sitting, there are many to choose from.
--	local pChewie = spawnMobile("tatooine", "npe_chewbacca", 1, -8.4, -0.9, 22.9, -103, 1082883)
--	self:setMoodString(pChewie, "npc_sitting_chair")
end
--******************************************************************************************************************************
function naboopc35ScreenPlay:notifyEnteredAreaOne(pActiveAreaOne, pPlayer)
	print("naboopc35ScreenPlay:notifyEnteredAreaOne function started")	-- debug statement that fires when the function starts.
	if (not SceneObject(pPlayer):isPlayerCreature()) then -- Checks what enters the area, if it isn't, it returns out of the function.
		return 0
	end
	if (CreatureObject(pPlayer):hasScreenPlayState(1, "naboopc35")) then -- checks if player has the correct screenplay state that was set when the task was accepted.
		-- This sends an on screen message and plays a sound.
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\<Communicator>  \\#FFFFFF\\Ok Kid, looks like the base is there.")
		CreatureObject(pPlayer):playMusicMessage("sound/ui_quest_waypoint_patrol.snd")
		-- This removes the screenplay state so the message and sound does not repeat every time player enters the area.
		CreatureObject(pPlayer):removeScreenPlayState(1, "naboopc35")
		-- This sets a new sp state for completed task.
		CreatureObject(pPlayer):setScreenPlayState(2, "naboopc35")
		return 0
	end
	return 0
end
--******************************************************************************************************************************
--************************************************** CONVO HANDLER BELOW HERE **************************************************
--******************************************************************************************************************************
han_solo_naboopc35_convo_handler = conv_handler:new {} -- Registers the new conversation handler - name must be unique.
function han_solo_naboopc35_convo_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	-- Sets how the screens are called from /mobile/conversation.lua
	local convoTemplate = LuaConversationTemplate(pConvTemplate)
	-- The if statements check what screenplay state the player has and returns the correct screen so the screenplay flows correctly.
	if (CreatureObject(pPlayer):hasScreenPlayState(1, "naboopc35")) then
        
        return convoTemplate:getScreen("task_one_active")
    
	elseif (CreatureObject(pPlayer):hasScreenPlayState(2, "naboopc35")) then
		-- Gives player 10,000 credits, plays a sound and sends a completion message.
		CreatureObject(pPlayer):addCashCredits(10000, true)
		CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_credits.snd")
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest completed:  \\#FFFFFF\\Checking the Falcon.") -- Sends an on screen system message.
		-- Removes the state for task completed and sets it for quest finished and returns the correct convo screen.
		CreatureObject(pPlayer):removeScreenPlayState(2, "naboopc35")
		CreatureObject(pPlayer):setScreenPlayState(4, "naboopc35")
		return convoTemplate:getScreen("task_one_complete")
	-- Returns a convo screen for a finished quest.
	elseif (CreatureObject(pPlayer):hasScreenPlayState(4, "naboopc35")) then
		return convoTemplate:getScreen("quest_complete")
	else
		-- If the player has no relevant screenplay states, it returns the first screen.	
		return convoTemplate:getScreen("first_screen")
	end
end
function han_solo_naboopc35_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	-- This checks what the player has chosen and runs the code accordingly.
	if (screenID == "accept_task_one") then
		
		-- Sets screenplay state, plays a sound message and sends an on screem message to the player.
		CreatureObject(pPlayer):setScreenPlayState(1, "naboopc35")-- set screenplay state that player has accepted task
		CreatureObject(pPlayer):playMusicMessage("sound/ui_npe2_quest_received.snd")  -- Plays a sound message
		CreatureObject(pPlayer):sendSystemMessage(" \\#FFFF00\\Quest received:  \\#FFFFFF\\Checking the Falcon.") -- Sends an on screen system message.
	end
	
    return pConvScreen
end
