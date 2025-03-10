han_solo_naboopc35_convo_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "han_solo_naboopc35_convo_handler",
	screens = {}
}
first_screen = ConvoScreen:new {
	id = "first_screen",
	-- leftDialog = "",
	customDialogText = "Listen kid, if you wanna get on around here, you're gonna need to help me out!",
	stopConversation = "false",
	options = {
		{"Why", "why"},
		{"What if I don't want to?", "exit_one"}
	}
}
han_solo_naboopc35_convo_template:addScreen(first_screen);
exit_one = ConvoScreen:new {
	id = "exit_one",
	customDialogText = "Then it looks like you're set for a life cleaning up Ewok Poodoo! Get lost kid!",
	stopConversation = "true",
	options = {}
}
han_solo_naboopc35_convo_template:addScreen(exit_one);
why = ConvoScreen:new {
	id = "why",
	customDialogText = "Because it's where the excitement is kid. Your own custom adventures, your very own story to tell. Sound good to you?",
	stopConversation = "false",
	options = {
		{"It's what i need to do, count me in!", "great_kid"},
		{"Sounds like rubbish to me!", "exit_one"}
	}
}
han_solo_naboopc35_convo_template:addScreen(why);
great_kid = ConvoScreen:new {
	id = "great_kid",
	customDialogText = "Great kid, I knew you wouldn't let me down. Now listen, I need you to go scout out a base - Jabba has some bounty hunters out looking for me and I need to know if they are still haning around this base at 2110 5738. Go scount it our for me and let me know if they are there!",
	stopConversation = "false",
	options = {
		{"What's the deal", "falcon_parked"}
	}
}
han_solo_naboopc35_convo_template:addScreen(great_kid);
falcon_parked = ConvoScreen:new {
	id = "falcon_parked",
	customDialogText = "I've got the Falcon parked behind the starport. I don't need those Tuskens taking a fancy to any of the equipment.",
	stopConversation = "false",
	options = {
		{"Go on", "active_area"}
	}
}
han_solo_naboopc35_convo_template:addScreen(falcon_parked);
active_area = ConvoScreen:new {
	id = "active_area",
	customDialogText = "I've set up an active area around her so I'll know when you get there. The location is 2110 5738",
	stopConversation = "false",
	options = {
		{"I'm on my way", "accept_task_one"}
	}
}
han_solo_naboopc35_convo_template:addScreen(active_area)
accept_task_one = ConvoScreen:new {
	id = "accept_task_one",
	customDialogText = "Great kid! I'll send you a comm message when you get there.",
	stopConversation = "true",
	options = {}
}
han_solo_naboopc35_convo_template:addScreen(accept_task_one);
task_one_active = ConvoScreen:new {
	id = "task_one_active",
	customDialogText = "Have you checked the Falcon yet? Behind the starport?",
	stopConversation = "true",
	options = {}
}
han_solo_naboopc35_convo_template:addScreen(task_one_active);
task_one_complete = ConvoScreen:new {
	id = "task_one_complete",
	customDialogText = "Well Done, here's that reward for you trouble. Now head to theed starport on Naboo. Lando will be waiting for you.",
	stopConversation = "true",
	options = {}
}
han_solo_naboopc35_convo_template:addScreen(task_one_complete);
quest_complete = ConvoScreen:new {
	id = "quest_complete",
	customDialogText = "Did you ever meet Lando in Theed? He might still be there",
	stopConversation = "true",
	options = {}
}
han_solo_naboopc35_convo_template:addScreen(quest_complete);
addConversationTemplate("han_solo_naboopc35_convo_template", han_solo_naboopc35_convo_template);
