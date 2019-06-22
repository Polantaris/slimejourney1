#define DEBUG

mob
	var
		list
			spelllist = list()
world/New()
	log=file("log.txt")
world/New()
	spawn
		while(1)
			sleep(300)
			for(var/obj in world)
			for(var/mob/M in world)
				sleep(300)
				Repop()
client
	Northeast()
	Northwest()
	Southeast()
	Southwest()

mob
	verb
		Use_Spell()
			if(usr.job == "Swordsman")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Spellcaster")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Priest")
				var/list/spells = list()
				var/list/AllowedSpells = list("Heal","Devenom")
				spells.Add("Heal","Devenom","Cancel")
				var/spell = input("What spell would you like to use?")in spells
				if(AllowedSpells.Find(spell))
					if(spell == "Heal" && usr.heal >> 0)
						phealofc(src)
					else
						usr << "You haven't learned that spell yet!"
					if(spell == "Devenom" && usr.devenom >> 0)
						devenomofc(src)
					else
						usr << "You haven't learned that spell yet!"
			if(usr.job == "Thief")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Equaler")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Bladesman")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Multicaster")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Monk")
				var/list/spells = list()
				var/list/AllowedSpells = list("Heal","Devenom")
				spells.Add("Heal","Devenom","Cancel")
				var/spell = input("What spell would you like to use?")in spells
				if(AllowedSpells.Find(spell))
					if(spell == "Heal" && usr.heal >> 0)
						phealofc(src)
					else
						usr << "You haven't learned that spell yet!"
					if(spell == "Devenom" && usr.devenom >> 0)
						devenomofc(src)
					else
						usr << "You haven't learned that spell yet!"
			if(usr.job == "Assassin")
				usr << "You don't have any outside battle spells!"
			if(usr.job == "Greatener")
				var/list/spells = list()
				var/list/AllowedSpells = list("Heal")
				spells.Add("Heal","Cancel")
				var/spell = input("What spell would you like to use?")in spells
				if(AllowedSpells.Find(spell))
					if(spell == "Heal" && usr.heal >> 0)
						phealofc(src)
					else
						usr << "You haven't learned that spell yet!"
			else
				var/list/spells = list()
				var/list/AllowedSpells = list("Heal","Healmore","Healmost","Healall")
				spells.Add(usr.spelllist)
				spells.Add("Cancel")
				var/spell = input("What spell would you like to use?")in spells
				if(AllowedSpells.Find(spell))
					if(spell == "Heal")
						Healofc(src)
					if(spell == "Healmore")
						Healmoreofc(src)
					if(spell == "Healmost")
						Healmostofc(src)
					if(spell == "Healall")
						Healallofc(src)
				else
					usr << "You cannot use that spell outside of battle!"
					return

mob
	proc
		phealofc(mob/M)
			if(M.heal >> 0)
				if(M.mp >= 50)
					var
						healamount = M.intelligence - src.intelligence + rand(-50,50)
						healrand = healamount * M.heal
					M << "You summon God for healing!"
					sleep(10)
					if(healamount <= 0)
						M << "God does not answer your call!"
						M.mp -= 50
					else
						M << "God heals you for [healrand]!"
						M.hp += healrand
						M.mp -= 50
				else
					M << "You don't have enouph MP!"
			else
				M << "You don't know this skill!"
		devenomofc(mob/M)
			if(M.devenom >> 0)
				if(M.mp >= 50)
					if(M.poisoned == 1)
						var
							devenomchance = M.devenom + rand(-10,8)
						M << "You summon God for him to remove your poison!"
						sleep(10)
						if(devenomchance <= 0)
							M << "God does not answer your call."
							M.mp -= 50
						else
							M << "God comes and removes your poison!"
							M.poisoned = 0
							M.mp -= 50
					else
						M << "God will not come because you are not poisoned!"
				else
					M << "You don't have enouph MP!"
			else
				M << "You don't know this skill!"
		Healofc()
			if(usr.battle == 1)
				usr << "Use the combat window!"
			else
				if(usr.mp >= 4)
					var
						healed = rand(10,50)
					usr << "You cast Heal!"
					usr << 'spell.wav'
					sleep(10)
					if(healed >= 0)
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
							usr << "You are fully healed!"
							usr.mp -= 4
						else
							usr << "You are healed for [healed] HP!"
							usr.mp -= 4
					else
						usr << "You are unaffected!"
				else
					usr << "You don't have enouph MP!"
		Healmoreofc()
			if(usr.battle == 1)
				usr << "Use the combat window!"
			else
				if(usr.mp >= 10)
					var
						healed = rand(40,100)
					usr << "You cast Healmore!"
					usr << 'spell.wav'
					sleep(10)
					if(healed >= 0)
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
							usr << "You are fully healed!"
							usr.mp -= 10
						else
							usr << "You are healed for [healed] HP!"
							usr.mp -= 10
					else
						usr << "You are unaffected!"
				else
					usr << "You don't have enouph MP!"
		Healmostofc()
			if(usr.battle == 1)
				usr << "Use the combat window!"
			else
				if(usr.mp >= 22)
					var
						healed = rand(150,300)
					usr << "You cast Healmost!"
					usr << 'spell.wav'
					sleep(10)
					if(healed >= 0)
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
							usr << "You are fully healed!"
							usr.mp -= 22
						else
							usr << "You are healed for [healed] HP!"
							usr.mp -= 22
					else
						usr << "You are unaffected!"
				else
					usr << "You don't have enouph MP!"
		Healallofc()
			if(usr.battle == 1)
				usr << "Use the combat window!"
			else
				if(usr.mp >= 30)
					usr << "You cast Healall!"
					usr << 'spell.wav'
					sleep(10)
					usr << "You are fully healed!"
					usr.mp -= 30
					usr.hp = usr.maxhp
				else
					usr << "You don't have enouph MP!"
		Devenomofc()
			if(usr.battle == 1)
				usr << "Use the combat window!"
			else
				if(usr.devenom >> 0)
					if(usr.mp >= 50)
						if(usr.poisoned == 1)
							var
								devenomchance = usr.devenom + rand(-10,8)
							usr << "You summon God for him to remove your poison!"
							sleep(10)
							if(devenomchance <= 0)
								usr << "God does not answer your call."
								usr.mp -= 50
								sleep(10)
							else
								usr << "God comes and removes your poison!"
								usr.poisoned = 0
								usr.mp -= 50
								sleep(10)
						else
							usr << "God will not come because you are not poisoned!"
					else
						usr << "You don't have enouph MP!"
				else
					usr << "You don't know this skill!"


mob
	verb
		World_Say(msg as text)
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>Your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in world)
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(usr.key == "Metroid")
							M << "\icon[usr] <font color=aqua><b>[usr] wsays: [html_encode:(msg)]</font>"
						else if(usr.Admin == 1)
							M << "\icon[usr] <font color=lime><b>[usr] wsays: [html_encode:(msg)]</font>"
						else
							M << "\icon[usr] <font color=white><b>[usr] wsays: [html_encode:(msg)]</font>"
	//					world.log << "[src] wsays: [msg]"
		Ws(msg as text)
			set hidden = 1
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>You cannot talk because your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in world)
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(usr.key == "Metroid")
							M << "\icon[usr] <font color=aqua><b>[usr] wsays: [html_encode:(msg)]</font>"
						else if(usr.Admin == 1)
							M << "\icon[usr] <font color=lime><b>[usr] wsays: [html_encode:(msg)]</font>"
						else
							M << "\icon[usr] <font color=white><b>[usr] wsays: [html_encode:(msg)]</font>"
//						world.log << "[src] wsays: [msg]"
		Say(msg as text)
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>You cannot talk because your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in view())
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(usr.key == "Metroid")
							M << "\icon[usr] <font color=aqua><b>[usr] says: [html_encode:(msg)]</font>"
						else if(usr.Admin == 1)
							M << "\icon[usr] <font color=lime><b>[usr] says: [html_encode:(msg)]</font>"
						else
							M << "\icon[usr] <font color=green><b>[usr] says: [html_encode:(msg)]</font>"
//						world.log << "[src] says: [msg]"
		World_Emote(msg as text)
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>You cannot talk because your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in world)
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(usr.key == "Metroid")
							M << "<i><font color = aqua>*[usr] [html_encode:(msg)]*"
						else if(usr.Admin == 1)
							M << "<i><font color = lime>*[usr] [html_encode:(msg)]*"
						else
							M << "<i><font color = white>*[usr] [html_encode:(msg)]*"
//						world.log << "*[src] [msg]*"
		We(msg as text)
			set hidden = 1
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>You cannot talk because your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in world)
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(usr.key == "Metroid")
							M << "<i><font color = aqua>*[usr] [html_encode:(msg)]*"
						else if(usr.Admin == 1)
							M << "<i><font color = lime>*[usr] [html_encode:(msg)]*"
						else
							M << "<i><font color = white>*[usr] [html_encode:(msg)]*"
//						world.log << "*[src] [msg]* (world)"
		Emote(msg as text)
			if(src.muted == 1)
				var/list/players=list()
				for(var/mob/M in world)
					if(M.client&&M!=src)players+=M
				src<<"<font color = blue><b>You cannot talk because your voice has been removed!</font>"
				players<<"\icon[usr] <font color = blue><b>[usr] tried saying something, but his voice was removed!</font>"
			else
				for(var/mob/M in view())
					if(!M.worldsay_toggle&&!(src in M.ignore))
						if(M.muted == 1)
							M << "Your voice has been removed!"
						else if(usr.key == "Metroid")
							M << "<i><font color = aqua>*[usr] [html_encode:(msg)]*"
						else if(usr.Admin == 1)
							M << "<i><font color = lime>*[usr] [html_encode:(msg)]*"
						else
							M << "<i><font color = white>*[usr] [html_encode:(msg)]*"
//						world.log << "*[src] [msg]* (view)"
		Search()
			for(var/obj/O in oview(0))
				usr << "<b><font color = blue>You get [O.name]."
				O.Move(usr)

mob/var
	tmp/worldsay_toggle=0
	list
		ignore=list()

mob/verb/World_Say_Toggle()
	worldsay_toggle=!worldsay_toggle
	if(!worldsay_toggle)
		src<<"You have turned on World Say."
	else
		src<<"You have turned off World Say."

mob/verb/Ignore()
	var/list/players=list()
	for(var/mob/M in world)
		if(M.client)
			players+=M
	var/mob/ignore_mob=input("Who do you wish to ignore?","Ignore")in players as mob|null
	if(!ignore_mob)return
	if(alert("Ignore [ignore_mob], are you sure?","Ignore","Yes","No")=="Yes")
		ignore+=ignore_mob

mob/verb/Un_Ignore(unignore_mob in ignore)
	ignore-=unignore_mob

//		Newbie_Guide()
//			usr << link("")
mob
	verb
		Who()
			var/mob/M
			for(M in world)
				if(!M.key) continue
				usr << "<font color = teal><b>\icon[M] [M.name]([M.key]) - Level: [M.level] - Color: [M.color] - Job: [M.job] - [M.joblevel]</font>"// - Guild: [M.guild]"

#include <deadron/characterhandling>

client
	script = "<STYLE>BODY {background: black; color: aqua}</STYLE>"
	base_num_characters_allowed = 5

#define BASE_MENU_CREATE_CHARACTER	"Create New Character"
#define BASE_MENU_DELETE_CHARACTER	"Delete Character"
#define BASE_MENU_CANCEL			"Cancel"
#define BASE_MENU_QUIT				"Quit"

world
	mob = /mob/creating_character
	view = 8
	name = "Slime Journey I: The Worlds Conflict"
	status = "Version 9, Final Version!"
	hub = "Polantaris.SlimeJourneyITheWorldsConflict"

proc
	AutoReboot()
		spawn(264000)
			world << "<font color = teal><font size = 2><b>The world will reboot in 10 minutes!</font>"
			sleep(3000)
			world << "<font color = teal><font size = 2><b>The world will reboot in 5 minutes!</font>"
			sleep(2400)
			world << "<font color = teal><font size = 2><b>The world will reboot in 1 minutes!</font>"
			sleep(600)
			world << "<font color = teal><font size = 2><b>The world is rebooting!</font>"
			world.Reboot()

/mob/creating_character
	base_save_allowed = 0 // If player quits before choosing, don't want to save this mob

	Login()
		spawn()
			src.CreateCharacter()
	proc
		CreateCharacter()
			var
				mob
					new_mob
			var
				prompt_title = "New Character"
				help_text = "What do you want to name the character?"
				default_value = key
				char_name = input(src, help_text, prompt_title, default_value) as null|text
			if (!char_name)  //guess they don't want to create a new character after all, so send them to choose a character
				client.base_ChooseCharacter()
				return
			var
				ckey_name = ckey(char_name)
				list
					character = client.base_CharacterNames()
			if (character.Find(ckey_name))
				alert("You already have a character named that!  Please choose another name.")
				src.CreateCharacter()
				return
			alert("In this game, you start out as a blue slime.  The more exp you get and the higher level you are, will make you into a different color slime.  This symbolizes that you are a more advanced player that has more experience in the game, what they say to you or others might help you.")
			alert("When you change color, you level increments are better, causing your levels to be better.  This will cause in fun gameplay.")
			alert("Any questions, comments, or suggestions should be emailed to polantaris@bluebottle.com.")
			alert("If your new, make sure you check out the newbie guide!  Just look under the tab Commands for the button Newbie Guide.")
			new_mob = new /mob/blue
			new_mob.name = char_name
			src.client.mob = new_mob
			new_mob.loc = locate(18,15,1)
			new_mob << "<font color = blue><i>You wake up one morning to find a book on your desk.  Your mom is also at the desk and says,</i> <font color = blue><b>''You should take this journal with you so that if you go anywhere and get tired, you can rest and write your progress in it!'' </b><font color = blue><i> You take the book."
			new_mob << "<font color = blue)<b>Mom: Maybe you should talk to everyone in town and find out what's new.</b><font color = blue><i>  To talk to someone, go up to them and use to Converse command that appears when you are near them."
			del(src)

mob
	Login()
		if (usr.old == 0)
			usr.old = 1
			if (color == "Blue")
				usr.icon = 'Slimes.dmi'
				usr.icon_state = "blue"
				usr.exp = 0
				usr.expreq = 9
				usr.level = 1
				usr.defense = 4
				usr.maxhp = 12
				usr.hp = 12
				usr.attack = 8
				usr.agility = 10
				usr.defense = 6
				usr.intelligence = 6
				usr.luck = 10
				usr.mp = 2
				usr.maxmp = 2
				usr.crithitperc = 5
//				oldbattlefield
//				onbattlefield


mob
	Login()
		..()
//		if(usr.x == 12 && y == 9 && z == 1)
//			usr.x = usr.innx
//			usr.y = usr.inny
//			usr.z = usr.innz
		CheckBan(src)
		if(src.key == "Metroid")
			src.Owner_Commands()
		if(src.key == "Polantaris")
			src.Owner_Commands()
		if(src.key == "Alcatraz001")
			src.Owner_Commands()
		if(src.AFK == 1)
			src.islocked = 1
			src.verbs -= /mob/verb/World_Say
			src.verbs -= /mob/verb/Ws
			src.verbs -= /mob/verb/Say
			src.verbs -= /mob/verb/World_Emote
			src.verbs -= /mob/verb/We
			src.verbs -= /mob/verb/Emote
			src.verbs -= /mob/verb/Search
			src.verbs -= /mob/verb/Who
			src.verbs -= /mob/verb/Use_Spell
			src.verbs -= /mob/Mod/verb/Ban
			src.verbs -= /mob/Mod/verb/Boot
			src.verbs -= /mob/Mod/verb/AdminSay
			src.verbs -= /mob/Mod/verb/AdminEmote
			src.verbs -= /mob/Mod/verb/Carbon_Copy
			src.verbs -= /mob/Mod/verb/Edit
			src.verbs -= /mob/Mod/verb/Announcement
			src.verbs -= /mob/Mod/verb/Density_off
			src.verbs -= /mob/Mod/verb/Movement
			src.verbs -= /mob/Mod/verb/Density_on
			src.verbs -= /mob/Mod/verb/Erase
			src.verbs -= /mob/Mod/verb/Change_mob_to_control
			src.verbs -= /mob/Mod/verb/MoveLeft
			src.verbs -= /mob/Mod/verb/MoveRight
			src.verbs -= /mob/Mod/verb/MoveUp
			src.verbs -= /mob/Mod/verb/Edit_Icon
			src.verbs -= /mob/Mod/verb/Edit_Icon_State
			src.verbs -= /mob/Mod/verb/MoveDown
			src.verbs -= /mob/Mod/verb/Reboot
			src.verbs -= /mob/Mod/verb/Cloak
			src.verbs -= /mob/Mod/verb/NPC_talk
			src.verbs -= /mob/Mod/verb/Bitchslap
			src.verbs -= /mob/Mod/verb/Summon
			src.verbs -= /mob/Mod/verb/Rename
			src.verbs -= /mob/Mod/verb/Mindwhisper
			src.verbs -= /mob/Mod/verb/Mute
			src.verbs -= /mob/Mod/verb/Un_Mute
			src.verbs -= /mob/Mod/verb/World_Status
			src.verbs -= /mob/Mod/verb/Admin_List
		world << "\icon[usr] <font color = teal><b>[usr.name]([src.key]) logs in."
		src << "<font color = teal><b>Hello [usr]!  Welcome to Slime Journey.  If you have time and want to share any logical disscusions, join the site for this game at http://www.electroforums.net!  Have fun!"
		src << ""
		src << "<font color = teal><b>Welcome to Version 9!  The game is completed.  Any suggestions to improve the game will be IGNORED.  Only bug fixes will be done to the game.  HAVE FUN!"
		src << ""
		src << "<font color = teal><b>Message for Newbies.  Please, before asking ANYTHING at all, please refer to the site above for the RULES AND REGULATIONS under the Newbie Guide!  If these ARE NOT followed, your punishment will be severe and just.  YOU HAVE BEEN WARNED!"
		for(var/coord in rooms)
			src<<coord
		src.loc = locate(src.savex, src.savey, src.savez)
		src.sight = 2
		if(src.islocked == 1)
			src.islocked = 0
		if(src.battle == 1)
			src.battle = 0
		if(src.lib == 1)
			src << "<font size = 3><font color = red><b>Please refrain from logging out in battle."
			world << "<font color = red><b>[usr] had logged out of battle the last time he was on."
			src.lib = 0
			src.battle = 0

	Logout()
		if(battle)
			world << "<font color = red><b>[usr] has logged out during battle!"
			battle = 0
			islocked = 0
			if(defend)
				defend = 0
				defense /= 2
		world << "<font color = teal><b>[src.name] logs out."
		del(src)

mob/
	blue
		color = "Blue"
mob
	Stat()
		statpanel("Stats")
		if(usr.poisoned == 1)
			stat("POISONED")
			stat(null)
		if(usr.diseased == 1)
			stat("DISEASED")
			stat(null)
		stat("HP:","[hp]/[maxhp]")
		stat("MP:","[mp]/[maxmp]")
		stat(null)
		stat("Attack","[attack]")
		stat("Defense:","[defense]")
		stat("Agility:","[agility]")
		stat("Intelligence:","[intelligence]")
		stat(null)
		stat("Gold:","[gold]")
		statpanel("Level Stats")
		stat("Color:","[color]")
		stat(null)
		stat("Level:","[level]")
		stat("Exp:","[num2text(exp,100000000)]")
		stat("To Next:","[num2text(expreq,100000000)]")
		stat(null)
		stat("Job:","[job]")
		stat("Job Level:","[joblevel]")
		stat("Job Exp:","[num2text(jobexp,10000000)]")
		stat("To Next:","[num2text(jobexpreq,10000000)]")
		if(usr.job == "Swordsman")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Rapid Slash:","Level [rapidslash]")
			stat("Money Slash:","Level [moneyslash]")
			stat("Attack Up:","Level [attup]")
			stat("Defense Up:","Level [defup]")
		if(usr.job == "Spellcaster")
			statpanel("Skills")
			stat("Fire:","Level [fire]")
			stat("Ice:","Level [ice]")
			stat("Thunder:","Level [thunder]")
			stat("Wind:","Level [wind]")
			stat("Earth:","Level [earth]")
		if(usr.job == "Thief")
			statpanel("Skills")
			stat("Double Hit:","Level [doublehit]")
			stat("Luck Up:","Level [lukup]")
			stat("Spark:","Level [spark]")
			stat("Agility Up:","Level [aglup]")
			stat("Steal:","Level [steal]")
		if(usr.job == "Priest")
			statpanel("Skills")
			stat("Heal:","Level [heal]")
			stat("Devenom:","Level [devenom]")
			stat("Holy Bolt:","Level [holybolt]")
			stat("Intelligence Up:","Level [intup]")
			stat("Mind Games:","Level [mindgames]")
		if(usr.job == "Equaler")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Earth:","Level [earth]")
			stat("Double Hit:","Level [doublehit]")
			stat("Mind Games:","Level [mindgames]")
			stat("Holy Veil:","Level [holyveil]")
		if(usr.job == "Bladesman")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Rapid Slash:","Level [rapidslash]")
			stat("Money Slash:","Level [moneyslash]")
			stat("Attack Up:","Level [attup]")
			stat("Defense Up:","Level [defup]")
			stat("Fire Slash:","Level [fs]")
			stat("Ice Slash:","Level [is]")
			stat("Thunder Slash:","Level [ts]")
			stat("Earth Slash:","Level [es]")
			stat("Wind Slash:","Level [ws]")
		if(usr.job == "Multicaster")
			statpanel("Skills")
			stat("Fire:","Level [fire]")
			stat("Ice:","Level [ice]")
			stat("Thunder:","Level [thunder]")
			stat("Wind:","Level [wind]")
			stat("Earth:","Level [earth]")
			stat("Extreme Fire:","Level [efire]")
			stat("Extreme Ice:","Level [eice]")
			stat("Extreme Thunder:","Level [ethunder]")
			stat("Extreme Wind:","Level [ewind]")
			stat("Extreme Earth:","Level [eearth]")
		if(usr.job == "Assassin")
			statpanel("Skills")
			stat("Double Hit:","Level [doublehit]")
			stat("Luck Up:","Level [lukup]")
			stat("Spark:","Level [spark]")
			stat("Agility Up:","Level [aglup]")
			stat("Steal:","Level [steal]")
			stat("Multiple Hit:","Level [multihit]")
			stat("Scare:","Level [scare]")
			stat("Fireworks:","Level [fworks]")
			stat("Extreme Wind:","Level [ewind]")
			stat("Spikes:","Level [sp]")
		if(usr.job == "Monk")
			statpanel("Skills")
			stat("Heal:","Level [heal]")
			stat("Devenom:","Level [devenom]")
			stat("Holy Bolt:","Level [holybolt]")
			stat("Intelligence Up:","Level [intup]")
			stat("Mind Games:","Level [mindgames]")
			stat("Scary Eyes:","Level [seyes]")
			stat("Holy Lightning:","Level [holylit]")
			stat("Sleep:","Level [sleeps]")
			stat("Extreme Wind:","Level [ewind]")
		if(usr.job == "Greatener")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Earth:","Level [earth]")
			stat("Double Hit:","Level [doublehit]")
			stat("Mind Games:","Level [mindgames]")
			stat("Holy Veil:","Level [holyveil]")
			stat("Fire Slash:","Level [fs]")
			stat("Extreme Earth:","Level [eearth]")
			stat("Scare:","Level [scare]")
			stat("Heal:","Level [heal]")
			stat("Almighty Veil:","Level [alveil]")
		if(usr.job == "Warrior")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Rapid Slash:","Level [rapidslash]")
			stat("Money Slash:","Level [moneyslash]")
			stat("Attack Up:","Level [attup]")
			stat("Defense Up:","Level [defup]")
			stat("Fire Slash:","Level [fs]")
			stat("Ice Slash:","Level [is]")
			stat("Thunder Slash:","Level [ts]")
			stat("Earth Slash:","Level [es]")
			stat("Wind Slash:","Level [ws]")
			stat("Double Fire Slash:","Level [dfs]")
			stat("Double Ice Slash:","Level [dis]")
			stat("Double Thunder Slash:","Level [dts]")
			stat("Double Earth Slash:","Level [des]")
			stat("Double Wind Slash:","Level [dws]")
		if(usr.job == "Mage")
			statpanel("Skills")
			stat("Fire:","Level [fire]")
			stat("Ice:","Level [ice]")
			stat("Thunder:","Level [thunder]")
			stat("Wind:","Level [wind]")
			stat("Earth:","Level [earth]")
			stat("Extreme Fire:","Level [efire]")
			stat("Extreme Ice:","Level [eice]")
			stat("Extreme Thunder:","Level [ethunder]")
			stat("Extreme Wind:","Level [ewind]")
			stat("Extreme Earth:","Level [eearth]")
			stat("Godly Fire:","Level [gfire]")
			stat("Godly Ice:","Level [gice]")
			stat("Godly Thunder:","Level [gthunder]")
			stat("Godly Wind:","Level [gwind]")
			stat("Godly Earth:","Level [gearth]")
		if(usr.job == "Rouge")
			statpanel("Skills")
			stat("Double Hit:","Level [doublehit]")
			stat("Luck Up:","Level [lukup]")
			stat("Spark:","Level [spark]")
			stat("Agility Up:","Level [aglup]")
			stat("Steal:","Level [steal]")
			stat("Multiple Hit:","Level [multihit]")
			stat("Scare:","Level [scare]")
			stat("Fireworks:","Level [fworks]")
			stat("Extreme Wind:","Level [ewind]")
			stat("Spikes:","Level [sp]")
			stat("Backstrike:","Level [backs]")
			stat("Envenom:","Level [env]")
			stat("Explosions:","Level [explosion]")
			stat("Godly Wind:","Level [gwind]")
			stat("Spike Rain:","Level [sprain]")
		if(usr.job == "Pope")
			statpanel("Skills")
			stat("Heal:","Level [heal]")
			stat("Devenom:","Level [devenom]")
			stat("Holy Bolt:","Level [holybolt]")
			stat("Intelligence Up:","Level [intup]")
			stat("Mind Games:","Level [mindgames]")
			stat("Scary Eyes:","Level [seyes]")
			stat("Holy Lightning:","Level [holylit]")
			stat("Sleep:","Level [sleeps]")
			stat("Extreme Wind:","Level [ewind]")
			stat("Holy Blast:","Level [hb]")
			stat("Beat:","Level [beat]")
			stat("Holy Flames:","Level [hflames]")
			stat("Holy Ice Shards:","Level [hices]")
			stat("Godly Wind:","Level [gwind]")
		if(usr.job == "Master")
			statpanel("Skills")
			stat("Power Slash:","Level [powerslash]")
			stat("Earth:","Level [earth]")
			stat("Double Hit:","Level [doublehit]")
			stat("Mind Games:","Level [mindgames]")
			stat("Holy Veil:","Level [holyveil]")
			stat("Fire Slash:","Level [fs]")
			stat("Extreme Earth:","Level [eearth]")
			stat("Scare:","Level [scare]")
			stat("Heal:","Level [heal]")
			stat("Almighty Veil:","Level [alveil]")
			stat("Double Fire Slash:","Level [dfs]")
			stat("Godly Earth:","Level [gearth]")
			stat("Envenom:","Level [env]")
			stat("Holy Flames:","Level [hflames]")
			stat("Deadly Frozen Veil:","Level [deadfveil]")
		else
			statpanel("Skills")
			stat(usr.spelllist)
		statpanel("Items",contents)

mob
	proc
		Bumped(O)
	Bump(O)
		..()
		if(ismob(O))
			O:Bumped(src)

mob/var/islocked = 0
mob.Move()
	if(src.islocked)
		return 0
	else if(src.lockedforever)
		return 0
	else
		return ..()

mob/Bump(atom/A)
	if(usr.battle == 1)
		usr << "You cannot fight this monster group, for it is already under attack!"
	else if(ismob(A))
		var/mob/M=A
		if(client||M.client)
			if(istype(M,/mob/monster))
				src.ran = 0
				src.dead = 0
				amount=rand(1,4)
				monstergroup=list()
				src.fighting = M
				src.battle = 1
				M.battle = 1
				src.islocked = 1
				M.islocked = 1
				for(var/index=1,index<=amount,index++)
					var/mob/enemy=new M.type
					enemy.name = "[enemy.name][number2letter(index)]"
					src.monstergroup+=enemy
					src.monstergroupnumber=src.monstergroup
				monster_number="[M.name][plural(monstergroup)]"
				MasterBattle(M)

mob/var/monstergroupnumber

mob
	proc
		number2letter(num as num)
			var/list/letters=list("-A","-B","-C","-D")
			return letters[num]

		plural(list/plural_list)
			if(plural_list.len>1)
				return "s"
			else return ""

mob
	verb
		ViewChange()
			set hidden = 1
			var/view_size=input("What would you like to change your view to?") in list ("5","6","7","8")
			client.view=text2num(view_size)

