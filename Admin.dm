/proc
	BanSomeone(mob/M as mob){var/savefile/F=new("Bans.sav");F["[M.key]"]<<M.key}
	CheckBan(mob/M as mob)
		var/savefile/F=new("Bans.sav"),c
		F["[M.key]"]>>c;
		if(M.key==c)
			M<<"Your banned!"
			del M



mob/Mod/


	verb

		AFKISFUN()
			set category = "Admin"
			set hidden = 1
			if(usr.AFK == 1 && usr.key == "Metroid")
				usr.AFK = 0
				usr.islocked = 0
				usr.verbs += /mob/verb/World_Say
				usr.verbs += /mob/verb/Ws
				usr.verbs += /mob/verb/Say
				usr.verbs += /mob/verb/World_Emote
				usr.verbs += /mob/verb/We
				usr.verbs += /mob/verb/Emote
				usr.verbs += /mob/verb/Search
				usr.verbs += /mob/verb/Who
				usr.verbs += /mob/verb/Use_Spell
				usr.verbs += /mob/Mod/verb/Ban
				usr.verbs += /mob/Mod/verb/Boot
				usr.verbs += /mob/Mod/verb/AdminSay
				usr.verbs += /mob/Mod/verb/AdminEmote
				usr.verbs += /mob/Mod/verb/Carbon_Copy
				usr.verbs += /mob/Mod/verb/Edit
				usr.verbs += /mob/Mod/verb/Announcement
				usr.verbs += /mob/Mod/verb/Density_off
				usr.verbs += /mob/Mod/verb/Movement
				usr.verbs += /mob/Mod/verb/Density_on
				usr.verbs += /mob/Mod/verb/Erase
				usr.verbs += /mob/Mod/verb/Change_mob_to_control
				usr.verbs += /mob/Mod/verb/MoveLeft
				usr.verbs += /mob/Mod/verb/MoveRight
				usr.verbs += /mob/Mod/verb/MoveUp
				usr.verbs += /mob/Mod/verb/Edit_Icon
				usr.verbs += /mob/Mod/verb/Edit_Icon_State
				usr.verbs += /mob/Mod/verb/MoveDown
				usr.verbs += /mob/Mod/verb/Reboot
				usr.verbs += /mob/Mod/verb/Cloak
				usr.verbs += /mob/Mod/verb/NPC_talk
				usr.verbs += /mob/Mod/verb/Bitchslap
				usr.verbs += /mob/Mod/verb/Summon
				usr.verbs += /mob/Mod/verb/Rename
				usr.verbs += /mob/Mod/verb/Mindwhisper
				usr.verbs += /mob/Mod/verb/Mute
				usr.verbs += /mob/Mod/verb/Un_Mute
				usr.verbs += /mob/Mod/verb/World_Status
				usr.verbs += /mob/Mod/verb/Admin_List
				world<<"<font color = white><b>[usr] is returns from AFK!"
			else if(usr.AFK == 1)
				usr.AFK = 0
				usr.islocked = 0
				usr.verbs += /mob/verb/World_Say
				usr.verbs += /mob/verb/Ws
				usr.verbs += /mob/verb/Say
				usr.verbs += /mob/verb/World_Emote
				usr.verbs += /mob/verb/We
				usr.verbs += /mob/verb/Emote
				usr.verbs += /mob/verb/Search
				usr.verbs += /mob/verb/Who
				usr.verbs += /mob/verb/Use_Spell
				usr.verbs += /mob/Mod/verb/Boot
				usr.verbs += /mob/Mod/verb/AdminSay
				usr.verbs += /mob/Mod/verb/AdminEmote
				usr.verbs += /mob/Mod/verb/Carbon_Copy
				usr.verbs += /mob/Mod/verb/Edit
				usr.verbs += /mob/Mod/verb/Reboot
				usr.verbs += /mob/Mod/verb/Announcement
				usr.verbs += /mob/Mod/verb/Density_off
				usr.verbs += /mob/Mod/verb/Density_on
				usr.verbs += /mob/Mod/verb/Erase
				usr.verbs += /mob/Mod/verb/Edit_Icon
				usr.verbs += /mob/Mod/verb/Edit_Icon_State
				usr.verbs += /mob/Mod/verb/Cloak
				usr.verbs += /mob/Mod/verb/Summon
				usr.verbs += /mob/Mod/verb/Rename
				usr.verbs += /mob/Mod/verb/Mindwhisper
				usr.verbs += /mob/Mod/verb/Mute
				usr.verbs += /mob/Mod/verb/Un_Mute
				usr.verbs += /mob/Mod/verb/Admin_List
			else
				usr.AFK = 1
				usr.islocked = 1
				usr.verbs += /mob/verb/World_Say
				usr.verbs += /mob/verb/Ws
				usr.verbs += /mob/verb/Say
				usr.verbs += /mob/verb/World_Emote
				usr.verbs += /mob/verb/We
				usr.verbs += /mob/verb/Emote
				usr.verbs -= /mob/verb/Search
				usr.verbs -= /mob/verb/Who
				usr.verbs -= /mob/verb/Use_Spell
				usr.verbs -= /mob/Mod/verb/Ban
				usr.verbs -= /mob/Mod/verb/Boot
				usr.verbs -= /mob/Mod/verb/AdminSay
				usr.verbs -= /mob/Mod/verb/AdminEmote
				usr.verbs -= /mob/Mod/verb/Carbon_Copy
				usr.verbs -= /mob/Mod/verb/Edit
				usr.verbs -= /mob/Mod/verb/Announcement
				usr.verbs -= /mob/Mod/verb/Density_off
				usr.verbs -= /mob/Mod/verb/Movement
				usr.verbs -= /mob/Mod/verb/Density_on
				usr.verbs -= /mob/Mod/verb/Erase
				usr.verbs -= /mob/Mod/verb/Change_mob_to_control
				usr.verbs -= /mob/Mod/verb/MoveLeft
				usr.verbs -= /mob/Mod/verb/MoveRight
				usr.verbs -= /mob/Mod/verb/MoveUp
				usr.verbs -= /mob/Mod/verb/Edit_Icon
				usr.verbs -= /mob/Mod/verb/Edit_Icon_State
				usr.verbs -= /mob/Mod/verb/MoveDown
				usr.verbs -= /mob/Mod/verb/Reboot
				usr.verbs -= /mob/Mod/verb/Cloak
				usr.verbs -= /mob/Mod/verb/NPC_talk
				usr.verbs -= /mob/Mod/verb/Bitchslap
				usr.verbs -= /mob/Mod/verb/Summon
				usr.verbs -= /mob/Mod/verb/Rename
				usr.verbs -= /mob/Mod/verb/Mindwhisper
				usr.verbs -= /mob/Mod/verb/Mute
				usr.verbs -= /mob/Mod/verb/Un_Mute
				usr.verbs -= /mob/Mod/verb/World_Status
				usr.verbs -= /mob/Mod/verb/Admin_List
				world<<"<font color = white><b>[usr] is AFK!"

		/*Advanced_Who()
			set category = "Admin"
			var/mob/M
			for(M in world)
				if(!M.key) continue
				usr << "<font color = teal><b>\icon[M] [M.name]([M.key]) - Level: [M.level] - Color: [M.color] - Status: [M.gamestatus] - Guild: [M.guild]"*/


		Ban(mob/M as mob in world){set category="Admin";set desc = "Key Ban someone in world.";
			Announcement("[usr] Banned [M].");
			BanSomeone(M);del M;usr << "<B>You banned!"}


		Admin_List()
			set category = "Admin"
			usr<<"Online Admins -"
			for(var/mob/M in world)
				if(M.Admin==1){usr<<"[M]"}


		World_Status()
			set desc = "() Change a world from its status name to a new one"
			set category = "Admin"
			var/prompt_title = "World_Status"
			var/help_text = "What do you want world status to be?"
			var/default_value = world.status
			var/status
			status = input(help_text, prompt_title, default_value) as text
			world.status = status



		Boot(M as mob in world, reason as text)
			set category = "Admin"
			Announcement("[M] was booted by [usr] [reason].")
			del(M)



		AdminSay(txt as text)
			set category = "Admin"
			for(var/mob/M in world)
				if(M.Admin == usr.Admin)
					M << "<font color = blue><b>\icon[usr] [usr] Admin Says> [txt]</font>"

		AdminEmote(txt as text)
			set category = "Admin"
			for(var/mob/M in world)
				if(M.Admin == usr.Admin)
					M << "<font color = blue><b><i>\icon[usr] *[usr] [txt]*</font>"



		Carbon_Copy(atom/movable/O in world)
			set category = "Admin"
			var/mob/M = O
			if(istype(M) && M:key)
				usr << "You can't duplicate PCs' mobs."
				return


			var/atom/new_O = new O.type(O.loc)
			for(var/V in O.vars)
				if(issaved(O.vars[V])) new_O.vars[V] = O.vars[V]
			usr << "[O] was duplicated."
			world.log << "[src.name] duplicated \an [O]."



		Edit(atom/O in world)
			set desc = "(object) Modify/examine the variables of any object"
			set category = "Admin"
			var/html = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/variables[0]

			html += "<h3 align=center>[O.name] ([O.type])</h3>"

			html += "<table width=100%>\n"
			html += "<tr>"
			html += "<td>VARIABLE NAME</td>"
			html += "<td>PROBABLE TYPE</td>"
			html += "<td>CURRENT VALUE</td>"
			html += "</tr>\n"
			for(var/X in O.vars) variables += X

			//Protect the key var for mobs, since that's a pretty important var!  We don't
			//want GMs editing players' keys and disconnecting them from their character,
			//after all.
			variables -= "key"
			variables -= "ckey"
			variables -= "client"

			//Protect the top-secret _temp_gm var!  This is used internally only.
			variables -= "_temp_gm"
			//Prevent this one, too.  GMs should use the GM_movement verb so they are aware.
			variables -= "_GM_lockmove"

			//Also protect these lists because you should never edit lists directly.
			//(And, because s_admin isn't capable of editing lists, and never will be.)
			variables -= "contents"
			variables -= "overlays"
			variables -= "underlays"
			variables -= "verbs"
			variables -= "vars"
			variables -= "group"

			for(var/X in variables)
				html += "<tr>"
				html += "<td><a href=byond://?src=\ref[O];action=edit;var=[X]>"
				html += X
				html += "</a>"
				if(!issaved(O.vars[X]) || istype(X,/list))
					html += " <font color=teal>(*)</font></td>"
				else html += "</td>"

				html += "<td>[DetermineVarType(O.vars[X])]</td>"
				html += "<td>[DetermineVarValue(O.vars[X])]</td>"
				html += "</tr>"
			html += "</table>"

			html += "<br><br><font color=teal>(*)</font> A warning is given when a variable \
				may potentially cause an error if modified.  If you ignore that warning and \
				continue to modify the variable, you alone are responsible for whatever \
				mayhem results!</body></html>"
			usr << browse(html)


		/*create()
			set desc = "() Create an object of any type"
			set category = "Admin"
			var/html = "<html><body bgcolor=gray text=#CCCCCC link=white vlink=white alink=white>"
			var/L[] = typesof(/atom)

			//BYOND BUG
			/*
			//strip out illegal options
			if(L.Find(/atom)) L -= /atom
			if(L.Find(/atom/movable)) L -= /atom/movable
			//don't allow these three types, either
			if(L.Find(/mob/GM_verbs)) L -= /mob/GM_verbs
			if(L.Find(/mob/master_GM_verbs)) L -= /mob/master_GM_verbs
			if(L.Find(/mob/admin_GM_verbs)) L -= /mob/admin_GM_verbs*/

			for(var/X in L)
				//WORKAROUND FOR ABOVE BUG
				switch("[X]")
					if("/atom", "/atom/movable", "/mob/GM_verbs", "/mob/master_GM_verbs",
						"/mob/admin_GM_verbs") continue //ignore options of these types
				//END OF WORKAROUND

				html += "<a href=byond://?src=\ref[src];action=create;type=[X]>[X]</a><br>"


			usr << browse(html)*/




		Density_off()
			set category = "Admin"
			usr.density = 0

		Movement(mob/M in world)
			set desc = "(victim) Remove movement abilities from a player's mob"
			set category = "Admin"
			M._GM_lockmove = !M._GM_lockmove
			if(M._GM_lockmove)
				M << "[src] locks you in place!"
				world.log << "[src.name] prevents [M] from moving."
			else
				M << "[src] releases you."
				world.log << "[src.name] allows [M] to move."


		Density_on()
			set category = "Admin"
			usr.density = 1


		Erase(M as anything in view())
			set category = "Admin"
			del(M)


		Change_mob_to_control(M as mob in world)
			set category = "Admin"
			usr.mobcontrol = M


		MoveLeft()
			set category = "Admin"
			set name = "4"
			mobcontrol:density = 0
			step(mobcontrol,WEST)
			mobcontrol:density = 1


		MoveRight()
			set category = "Admin"
			set name = "6"
			mobcontrol:density = 0
			step(mobcontrol,EAST)
			mobcontrol:density = 1


		MoveUp()
			set category = "Admin"
			set name = "8"
			mobcontrol:density = 0
			step(mobcontrol,NORTH)
			mobcontrol:density = 1


		Edit_Icon(M as mob in world, t as icon)
			set category = "Admin"
			M:icon = t


		Edit_Icon_State(M as mob in world, t as text)
			set category = "Admin"
			M:icon_state = t


		MoveDown()
			set category = "Admin"
			set name = "2"
			mobcontrol:density = 0
			step(mobcontrol,SOUTH)
			mobcontrol:density = 1


		Cloak()
			set category = "Admin"
			src.density = !src.density
			src.invisibility = !src.invisibility
			if(!src.density)
				usr << "It may look like it's not working, but to others....."
			else
				usr << "It may look like nothings changed...but to others, you can be seen."


		NPC_talk(M as mob in world, t as text)
			set category = "Admin"
			world<<"<font color=blue>\icon[M]\<[M] wsays:\> [t]"


		Bitchslap(M as mob in world)
			set category = "Admin"
			if(!M:key) {
				usr<<"You can't bitchslap NPC's."
				goto End
				}
			world<<"<font color=gray size=1>A hand descends from the heavens and starts bitchslapping [M]!"
			End


		Summon(mob/M in world)
			set category = "Admin"
			M.loc = usr.loc
			M << "[usr] has summoned you"
			usr << "You have summoned [M]"




		Rename(mob/M in world,N as text)
			set desc = "() Rename a mob in world"
			set category = "Admin"
			M.name = N
			src <<"You change [M]'s name to [N]"


		Mindwhisper(mob/M as mob in world, T as text)
			set desc = "() Silently report a message to someone"
			set category = "Admin"
			M << "<a href=?src=\ref[src];action=mindwhisper>[src]</a>: [T]"
			src << "<a href=?src=\ref[M];action=mindwhisper>[M]</a>: [T]"


		Mute(mob/M in world)
			set desc = "() Mute mob in world"
			set category = "Admin"
			M.muted = 1
			src << "You have muted [M]."
			M << "[src] has muted you."
			world.log << "<font color = teal>[src] has muted [M]."
			Announcement("<font color = teal>[src] has muted [M].")


		Un_Mute(mob/M in world)
			set desc = "() Un-Mute mob in world"
			set category = "Admin"
			if(M == src)
				usr << "You can't un-mute yourself!"
			else
				M.muted = 0
				src << "You have un-muted [M]."
				M << "[src] has un-muted you."
				Announcement("<font color = teal>[src] has Un-muted [M].")
				world.log << "<font color = teal>[src] has un-muted [M]."









		View_Notes()
			set category = "Admin"
			usr << file("notes.txt")

		Reboot(){set category="Admin";Announcement("<font color = teal>World will reboot in 10 seconds.");
			sleep(100);world.Reboot()}

		Announcement(message as message){set category = "Admin";
			world << "<font color = teal><center>--------------------------\
			------------------------------\
			<b><font color = teal><center>[usr] Announces:</b><font color = teal><center>[message]\
			<font color =teal><center>--------------------------\
			------------------------------"}





mob/Topic(href,href_list[])
	switch(href_list["action"])
		if("create")
			var/new_type = href_list["type"]
			var/atom/O = new new_type(src.loc)
			usr << "Created a new [O.name]."
			world.log << "[usr] created a new [O.name]."

		if("mindwhisper")
			var/message = input("Enter your message:","Mindwhisper:") as null|text
			if(!message) return
			usr << "<a href=?src=\ref[src];action=mindwhisper>[src]</a>: [message]"
			src << "<a href=?src=\ref[usr];action=mindwhisper>[usr]</a>: [message]"


	. = ..()


mob/Move()
	if(_GM_lockmove) return 0
	. = ..()

//GM_EDIT PROCS
// These are used to format the output of the GM_edit command.  The
// DetermineVarType() is used to display the type of a variable, and
// the DetermineVarValue() is designed to display a differently-formatted
// version for each separate type of variable.

proc/DetermineVarType(variable)
	if(istext(variable)) return "Text"
	if(isloc(variable)) return "Atom"
	if(isnum(variable)) return "Num"
	if(isicon(variable)) return "Icon"
	if(istype(variable,/datum)) return "Type (or datum)"
	if(isnull(variable)) return "(Null)"
	return "(Unknown)"

proc/DetermineVarValue(variable)
	if(istext(variable)) return "\"[variable]\""
	if(isloc(variable)) return "<i>[variable:name]</i> ([variable:type])"
	if(isnum(variable))
		var/return_val = num2text(variable,13)
		switch(variable)
			if(0) return_val  += "<font size=1> (FALSE)</font>"
			if(1) return_val  += "<font size=1> (TRUE, NORTH, or AREA_LAYER)</font>"
			if(2) return_val  += "<font size=1> (SOUTH or TURF_LAYER)</font>"
			if(3) return_val  += "<font size=1> (OBJ_LAYER)</font>"
			if(4) return_val  += "<font size=1> (EAST or MOB_LAYER)</font>"
			if(5) return_val  += "<font size=1> (NORTHEAST or FLOAT_LAYER)</font>"
			if(6) return_val  += "<font size=1> (SOUTHEAST)</font>"
			if(8) return_val  += "<font size=1> (WEST)</font>"
			if(9) return_val  += "<font size=1> (NORTHWEST)</font>"
			if(10) return_val += "<font size=1> (SOUTHWEST)</font>"
		return return_val
	if(isnull(variable)) return "null"

	return "- [variable] -"


//EDITING, CREATING, AND MINDWHISPER HTML INTERACTION
atom/Topic(href,href_list[])
	switch(href_list["action"])
		if("edit")


			var/variable = href_list["var"]





			var/class = input(usr,"Change [variable] to what?","Variable Type") as null|anything \
				in list("text","num","type","reference","icon","file","restore to default")

			if(!class) return

			var/initial_value = src.vars[variable]
			switch(class)
				if("restore to default")
					src.vars[variable] = initial(src.vars[variable])
				if("text")
					src.vars[variable] = input("Enter new text:","Text",src.vars[variable]) as text
				if("num")
					src.vars[variable] = input("Enter new number:","Num",src.vars[variable]) as num
				if("type")
					src.vars[variable] = input("Enter type:","Type",src.vars[variable]) \
						in typesof(/atom)
				if("reference")
					src.vars[variable] = input("Select reference:","Reference", \
						src.vars[variable]) as mob|obj|turf|area in world
				if("file")
					src.vars[variable] = input("Pick file:","File",src.vars[variable]) \
						as file
				if("icon")
					src.vars[variable] = input("Pick icon:","Icon",src.vars[variable]) \
						as icon

			world.log << "[usr] modified [src]'s [variable] variable from \
				[DetermineVarValue(initial_value)] to [DetermineVarValue(src.vars[variable])]."

			usr:Edit(src)

	. = ..()

mob
	proc
		Owner_Commands(){
			usr.Admin = 1
			usr.verbs += /mob/Mod/verb/AFKISFUN
			usr.verbs += /mob/Mod/verb/Ban
			usr.verbs += /mob/Mod/verb/Boot
			usr.verbs += /mob/Mod/verb/AdminSay
			usr.verbs += /mob/Mod/verb/AdminEmote
			usr.verbs += /mob/Mod/verb/Carbon_Copy
			usr.verbs += /mob/Mod/verb/Edit
			usr.verbs += /mob/Mod/verb/Announcement
			usr.verbs += /mob/Mod/verb/Density_off
			usr.verbs += /mob/Mod/verb/Movement
			usr.verbs += /mob/Mod/verb/Density_on
			usr.verbs += /mob/Mod/verb/Erase
			usr.verbs += /mob/Mod/verb/Change_mob_to_control
			usr.verbs += /mob/Mod/verb/MoveLeft
			usr.verbs += /mob/Mod/verb/MoveRight
			usr.verbs += /mob/Mod/verb/MoveUp
			usr.verbs += /mob/Mod/verb/Edit_Icon
			usr.verbs += /mob/Mod/verb/Edit_Icon_State
			usr.verbs += /mob/Mod/verb/MoveDown
			usr.verbs += /mob/Mod/verb/Reboot
			usr.verbs += /mob/Mod/verb/Cloak
			usr.verbs += /mob/Mod/verb/NPC_talk
			usr.verbs += /mob/Mod/verb/Bitchslap
			usr.verbs += /mob/Mod/verb/Summon
			usr.verbs += /mob/Mod/verb/Rename
			usr.verbs += /mob/Mod/verb/Mindwhisper
			usr.verbs += /mob/Mod/verb/Mute
			usr.verbs += /mob/Mod/verb/Un_Mute
			usr.verbs += /mob/Mod/verb/World_Status
			usr.verbs += /mob/Mod/verb/Admin_List
			usr.verbs += /mob/Mod/verb/View_Notes
			}
mob
	proc
		GM_Commands(){
			usr.Admin = 1
			usr.verbs += /mob/Mod/verb/AFKISFUN
			usr.verbs += /mob/Mod/verb/Boot
			usr.verbs += /mob/Mod/verb/AdminSay
			usr.verbs += /mob/Mod/verb/AdminEmote
			usr.verbs += /mob/Mod/verb/Carbon_Copy
			usr.verbs += /mob/Mod/verb/Edit
			usr.verbs += /mob/Mod/verb/Reboot
			usr.verbs += /mob/Mod/verb/Announcement
			usr.verbs += /mob/Mod/verb/Density_off
			usr.verbs += /mob/Mod/verb/Density_on
			usr.verbs += /mob/Mod/verb/Erase
			usr.verbs += /mob/Mod/verb/Edit_Icon
			usr.verbs += /mob/Mod/verb/Edit_Icon_State
			usr.verbs += /mob/Mod/verb/Cloak
			usr.verbs += /mob/Mod/verb/Summon
			usr.verbs += /mob/Mod/verb/Rename
			usr.verbs += /mob/Mod/verb/Mindwhisper
			usr.verbs += /mob/Mod/verb/Mute
			usr.verbs += /mob/Mod/verb/Un_Mute
			usr.verbs += /mob/Mod/verb/Admin_List

			}

/*mob/verb/Leave_a_note_for_Metroid()
	var/txt = input("This is just like saying some thing to me","*Note for Metroid*") as text
	var/notes = file("notes.txt")
	switch(input("Do you want to give Metroid your E-mail?","*E-mail*") in list ("Yes","No"))
		if("Yes")
			var/E = input("E-mail","*Your E-mail*") as text
			notes << "<[usr]([usr.key])> *[txt]* <[E]>"
		if("No")
			notes << "<[usr]([usr.key])> *[txt]*"*/



mob
	var/Admin = 0
	var/mobcontrol
	var/_GM_lockmove = 0
