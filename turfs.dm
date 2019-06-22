//turf
	//icon = 'turfs.dmi'
	//battlegrass
	//	icon_state = "grass"
	//	Entered(mob/who)
	//		var/probchance=8
	//		who.randomencounter1(probchance,who)

turf
	monster_blocker
		name = ""
		Enter(atom/movable/A)
			if(ismob(A))
				var/mob/M=A
				if(M.client)
					return ..()
			else return ..()

obj
	var
		music
	Dungeon
		chest1
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest1 == 0)
						usr.chest1 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There are three Herbs inside the chest!"
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest2
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest2 == 0)
						usr.chest2 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is 250 gold inside the chest!"
						usr.gold += 250
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest3
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest3 == 0)
						usr.chest3 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There are two Magic Herbs inside the chest!"
						new /obj/NormalItems/Magic_Herb (usr)
						new /obj/NormalItems/Magic_Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest4
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest4 == 0)
						usr.chest4 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Miracle Potion inside the chest!"
						new /obj/NormalItems/Miracle_Potion (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest5
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest5 == 0)
						usr.chest5 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There are 3 Antidotes inside the chest!"
						new /obj/NormalItems/Antidote (usr)
						new /obj/NormalItems/Antidote (usr)
						new /obj/NormalItems/Antidote (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest6
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest6 == 0)
						usr.chest6 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There are 2 Antidotes inside the chest!"
						new /obj/NormalItems/Antidote (usr)
						new /obj/NormalItems/Antidote (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest7
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest7 == 0)
						usr.chest7 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There are 2 Antidotes and 150 gold inside the chest!"
						new /obj/NormalItems/Antidote (usr)
						new /obj/NormalItems/Antidote (usr)
						usr.gold += 150
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest8
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest8 == 0)
						usr.chest8 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Miracle Potion inside the chest!"
						new /obj/NormalItems/Miracle_Potion (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest9
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest9 == 0)
						usr.chest9 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Miracle Potion and 800 gold inside the chest!"
						new /obj/NormalItems/Miracle_Potion (usr)
						usr.gold += 800
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest10
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest10 == 0)
						usr.chest10 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Miracle Potion inside the chest!"
						new /obj/NormalItems/Miracle_Potion (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest11
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest11 == 0)
						usr.chest11 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Large Magic Herb inside the chest!"
						new /obj/NormalItems/Large_Magic_Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest12
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest12 == 0)
						usr.chest12 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Large Herb inside the chest!"
						new /obj/NormalItems/Large_Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest13
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest13 == 0)
						usr.chest13 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						if(usr.spherequest == 1)
							usr << "There is a Bronze Sphere inside the chest!"
							new /obj/QuestItems/Bronze_Sphere (usr)
							usr.spherequest += 1
						else
							usr << "The chest has a note in it!"
							sleep(10)
							usr << "The note says, ''The item in this chest was borrowed, please come back another time for it.''"
							usr.chest13 = 0
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest14
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "closechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest14 == 0)
						usr.chest14 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Large Herb inside the chest!"
						new /obj/NormalItems/Large_Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest15
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "fireclosechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest15 == 0)
						usr.chest15 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Golden Sphere inside the chest!"
						new /obj/QuestItems/Gold_Sphere (usr)
						usr.spherequest += 1
						if(usr.spherequest == 5)
							usr << "<u>You have all the spheres!"
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest16
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "fireclosechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest16 == 0)
						usr.chest16 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is 10 Perfect Herbs and 10 Perfect Magic Herbs inside the chest!"
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
						new /obj/NormalItems/Perfect_Magic_Herb (usr)
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		chest17
			name = "Chest"
			icon = 'turfs.dmi'
			icon_state = "fireclosechest"
			density = 1
			verb
				Open()
					set src in view(1)
					if(usr.chest17 == 0)
						usr.chest17 += 1
						usr << "You open the chest..."
						usr << 'treasurechest.wav'
						sleep(10)
						usr << "There is a Plantinum Sphere inside the chest!"
						new /obj/QuestItems/Plantinum_Sphere (usr)
						usr.spherequest += 1
						if(usr.spherequest == 5)
							usr << "<u>You have all the spheres!"
					else
						usr << "You open the chest..."
						sleep(10)
						usr << "There's nothing there!"

		noenterafterdeadboss
			name = ""
			Enter(atom/movable/A)
				if(usr.boss1defeated == 1)
					A.loc = locate (50,72,1)
					A << "You cannot defeat bosses twice!"

turf
	FinalDungeon
		enterleft
			name = ""
			icon = 'turfs.dmi'
			icon_state = "castlebl"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(33,23,7)

		enterright
			name = ""
			icon = 'turfs.dmi'
			icon_state = "castlebr"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(34,23,7)

		exitleft
			name = ""
			icon = 'turfs.dmi'
			icon_state = "marsh"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(28,69,6)

		exitright
			name = ""
			icon = 'turfs.dmi'
			icon_state = "marsh"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(29,69,6)

		stairsup1
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(67,45,7)

		stairsup2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(23,89,7)

		stairsup3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(67,67,7)

		stairsdown1
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(23,45,7)

		stairsdown2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(89,45,7)

		stairsdown3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redstairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(23,67,7)

	Tunnel
		tunnelstairsu
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(22,15,1)

		tunnelstairsu2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(97,14,1)

		tunnelstairsu3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(89,72,1)

		tunnelstairsu4
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(21,31,2)
				usr.innx = 16
				usr.inny = 15
				usr.innz = 2

		tunnelstairsd
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(48,14,1)

		tunnelstairsd2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(55,63,1)

		tunnelstairsd3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(30,40,1)

		tunnelstairsd4
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(25,98,1)

	Tower
		towerstairsu
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(18,46,2)
				usr.innx = 16
				usr.inny = 15
				usr.innz = 2

		towerstairsu2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(39,77,2)

		towerstairsu3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(51,77,2)

		towerstairsu4
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(50,68,2)

		towerstairsu5
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(47,63,2)

		towerstairsu6
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(66,46,2)

		towerstairsu7
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(70,51,2)

		towerstairsu8
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(74,52,2)

		towerstairsu9
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsu"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(89,46,2)

		towerstairsd
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(21,21,2)

		towerstairsd2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(15,77,2)

		towerstairsd3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(25,77,2)

		towerstairsd4
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(26,68,2)

		towerstairsd5
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(22,63,2)

		towerstairsd6
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(41,46,2)

		towerstairsd7
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(45,51,2)

		towerstairsd8
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(50,52,2)

		towerstairsd9
			name = ""
			icon = 'turfs.dmi'
			icon_state = "stairsd"
			Enter(atom/movable/A)
				A << 'stairs.wav'
				A.loc = locate(77,72,2)

	Past
		Tele1
			name = ""
			icon = 'turfs.dmi'
			icon_state = "barrier"
			Enter(atom/movable/A)
				A.loc = locate(99,50,3)

		Tele2
			name = ""
			icon = 'turfs.dmi'
			icon_state = "barrier"
			Enter(atom/movable/A)
				A.loc = locate(85,100,3)

		Tele3
			name = ""
			icon = 'turfs.dmi'
			icon_state = "sky"
			Enter(atom/movable/A)
				A.loc = locate(83,87,4)

		Tele4
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redbarrier"
			Enter(atom/movable/A)
				A.loc = locate(84,41,4)

		Tele5
			name = ""
			icon = 'turfs.dmi'
			icon_state = "redbarrier"
			Enter(atom/movable/A)
				A.loc = locate(56,56,5)
				usr.innx = 56
				usr.inny = 56
				usr.innz = 5

		ArrowDown
			name = ""
			icon = 'turfs.dmi'
			icon_state = "arrowd"
			Enter(atom/movable/A)
				usr.y -= 3

		ArrowUp
			name = ""
			icon = 'turfs.dmi'
			icon_state = "arrowu"
			Enter(atom/movable/A)
				usr.y += 3

		ArrowLeft
			name = ""
			icon = 'turfs.dmi'
			icon_state = "arrowl"
			Enter(atom/movable/A)
				usr.x -= 3

		ArrowRight
			name = ""
			icon = 'turfs.dmi'
			icon_state = "arrowr"
			Enter(atom/movable/A)
				usr.x += 3

	Warning_Sign
		name = "Sign"
		icon = 'turfs.dmi'
		icon_state = "Sign"
		density = 1
		verb
			Read_Sign()
				set src in view(1)
				usr << "<font color = blue><i>This sign seems to be in bad condition but is still readable."
				usr << "<font color = blue><b>WARNING: Beyond this point lay dangerous Marsh Monsters!  They do not move or eat or talk or anything, they are completely undetectable (Even by moving your mouse over normal Marsh and Marsh Monsters)  It is advised that you do NOT stroll through this area, use EXTREME caution when crossing this area, for you may be killed by these things for they attack from NOWHERE!  Any travelers are to bring many Antidotes with them and take extreme caution!"
				usr << "<font color = blue><b>		-Signed, A Simple Traveler, named Metroid."

	Black_Water
		name = "Black Water"
		icon = 'turfs.dmi'
		icon_state = "blackwater"
		density = 1
		verb
			Observe()
				set src in view(1)
				var/obj/QuestItems/Weird_Crystal = locate() in usr
				if(Weird_Crystal)
					usr.islocked = 1
					switch(alert("The black water looks as if it is tring to tell you something.  It seems that it is telling you to drop your Wierd Crystal into the water.  Will you?",,"Yes","No"))
						if("Yes")
							usr.innx = 16
							usr.inny = 16
							usr.innz = 3
							usr << "<font color = blue><i>You drop the Wierd Crystal into the water..."
							del(Weird_Crystal)
							sleep(30)
							usr << "<font color = blue><i>Suddenly a huge shine comes over you."
							sleep(30)
							usr.loc = locate(16,16,3)
							usr << "<font color = blue><i>When the light dies down, and you open your eyes, you are in a new, unknown place."
							sleep(30)
							usr << "<font color = blue><i>Then a voice comes..."
							sleep(30)
							usr << "<b><font color = olive>Voice:</b><font color = blue> Welcome, one from the future.  Now that you are here, there is no turning back.  You cannot return to your own time, unless you figure out the meaning of the world you used to live in.  This is it.  There is no turning back."
							sleep(30)
							usr << "<b><font color = olive>[usr]:</b><font color = blue> What is my purpose here?  Why am I the one that needs to live with whatever happens here?  What have I done to you?"
							sleep(30)
							usr << "<b><font color = olive>Voice:</b><font color = blue> Nothing.  You are the chosen one, it is your destiny to come here and fix the problem that happened.  But I cannot tell you what happened.  You must figure it out for yourself.  Good luck, chosen one."
							sleep(30)
							usr << "<font color = blue><i>Just before you can ask another question you realize that who ever was making that voice is gone.  You set out prepared for whatever is to come."
							usr.islocked = 0
							usr.innx = 16
							usr.inny = 16
							usr.innz = 3
						if("No")
							usr << "<font color = blue><i>You ignore the water."
							usr.islocked = 0
				else
					usr << "<font color = blue><i>It looks like the water is telling you something but you don't know what."

	Shrine_Offering_Table
		name = "Offering Table"
		icon = 'turfs.dmi'
		icon_state = "metaltable"
		density = 1
		verb
			Place()
				set src in view(1)
				var/obj/QuestItems/Master_Sphere = locate() in usr
				if(Master_Sphere && usr.spherequest == 5)
					usr.islocked = 1
					usr << "<i><font color = blue>When you take the Master Sphere out of your bag, you think it wont fit on the table.  Then the Master Sphere enlarges like it was previously when you first saw it.  When you place it on the table, you see it break apart.  The Gold piece going to the top-left, the Silver piece to the top-right, the Bronze piece to the bottom-left, and the Plantinum piece to the bottom-right.  One piece remains and it dissapears and reappears over your head.  Then a voice comes that sounds like the original voice that you heard when you first entered the past..."
					del(Master_Sphere)
					sleep(30)
					usr << "<b><font color = olive>Voice:</b><font color = blue> It is good to see you again chosen one.  It is good to see that you have made it this far.  This is the end of your journey, the end of all your troubles, this is it, the end.  You have done lots of traveling and warping everywhere, it ends now.  You are an experienced slime, you have a profession, and you are very powerful.  This will serve you well here.  This is where it ends, everything, there is no turning back at all now.  You will only return when you are done.  Your enemy is here.  He is ready, he will not hold back.  Death can't save you now.  There is only one safe passage from here to there, the only place that you will see people, and it won't be a pretty sight.  You will see monsters that you have never encountered before, some that you reconize from when you left your own original time.  They are not afraid, but if you show fear, they will eat you.  This is it,  the time for everything to come together.  Make it to the town south of here, get anything you can.  If you do not succeed now, nothing will end this world's torment.  This is it, good luck, I will always have faith in you, chosen one."
					usr.loc = locate(55,91,6)
					sleep(50)
					usr.islocked = 0
				else
					usr << "<i><font color = blue>You assume this is where you will put the Master Sphere when you get it"

	towert
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towert"

	towerb
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towerb"

	blackwater
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blackwater"

	armorsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "armorsign"
		density = 1

	weaponsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "weaponsign"
		density = 1

	innsign
		name = ""
		icon = 'turfs.dmi'
		icon_state = "innsign"
		density = 1

	cavewalledge1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveedge1"
		density = 1

	cavewalledge2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveedge2"
		density = 1

	cavewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cavewall1"
		density = 1

	flamecavewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "flamecavewall1"
		density = 1

	cavedirt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cavefloor"

	flamecavedirt
		name = ""
		icon = 'turfs.dmi'
		icon_state = "flamecavefloor"

	caverock
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caverock"
		density = 1

	rockpillaru
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rockpillaru"
		density = 1

	rockpillard
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rockpillard"
		density = 1

	caveenterance
		name = ""
		icon = 'turfs.dmi'
		icon_state = "caveenter"

	logbridge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "logbridge"

	stonefloor
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stonefloor"

	bedl
		density = 1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bedl"

	bedr
		density = 1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bedr"

	bridger
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridger"

	bridgem
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridgem"

	bridgel
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bridgel"

	brickwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwalledge"
		density = 1

	brickwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brickwall"
		density = 1

	path
		name = ""
		icon = 'turfs.dmi'
		icon_state = "path"

	bluepath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluepath"

	redpath
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redpath"

	redtobluepathu
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathu"

	redtobluepathd
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathd"

	redtobluepathl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathl"

	redtobluepathr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbluepathr"

	brush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "brush"

	firebrush
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firebrush"

	whitecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "whitecobble"

	greencobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "greencobble"

	redcobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redcobble"

	purplecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purplecobble"

	bluecobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluecobble"

	churchbellu
		name = ""
		icon = 'turfs.dmi'
		icon_state = "churchbellu"
		density = 1

	churchbelld
		name = ""
		icon = 'turfs.dmi'
		icon_state = "churchbelld"
		density = 1

	cross
		name = ""
		icon = 'turfs.dmi'
		icon_state = "cross"
		density = 1

	fence
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fence"
		density = 1

	firefence
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firefence"
		density = 1

	door
		name = ""
		icon = 'turfs.dmi'
		icon_state = "door"
		density = 1
		proc
			open()
				icon_state = "invis"
				density = 0
			close()
				icon_state = "door"
				density = 1

	counter
		name = ""
		icon = 'turfs.dmi'
		icon_state = "counter"
		density = 1

	openedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "openchest"
		density = 1

	closedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "closechest"
		density = 1

	fireclosedchest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireclosechest"
		density = 1

	tree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tree"
		density = 1

	firetree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firetree"
		density = 1

	icetree
		name = ""
		icon = 'turfs.dmi'
		icon_state = "icetree"
		density = 1

	metaltable
		name = ""
		icon = 'turfs.dmi'
		icon_state = "metaltable"
		density = 1

	woodentable
		name = ""
		icon = 'turfs.dmi'
		icon_state = "woodtable"
		density = 1

	barrel
		name = ""
		icon = 'turfs.dmi'
		icon_state = "barrel"
		density = 1

	stairsup
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stairsu"

	stairsdown
		name = ""
		icon = 'turfs.dmi'
		icon_state = "stairsd"

	redstairsup
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redstairsu"

	redstairsdown
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redstairsd"

	sky
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sky"
		density = 1

	carpetn
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetn"

	carpets
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpets"

	carpete
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpete"

	carpetw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetw"

	carpetne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetne"

	carpetnw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetnw"

	carpetse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetse"

	carpetsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetsw"

	carpetswc
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornersw"

	carpetsec
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornerse"

	carpetnwc
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornernw"

	carpetnec
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpetcornerne"

	carpet
		name = ""
		icon = 'turfs.dmi'
		icon_state = "carpet"

	pillaru
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pillaru"
		density = 1

	pillard
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pillard"
		density = 1

	tile
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tile"

	marsh
		name = "Marsh"
		icon = 'turfs.dmi'
		icon_state = "marsh"
		density = 0
		Enter(atom/movable/A)
			usr.hp -= 1
			.=..()

	townw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "townw"

	towne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "towne"

	coastnse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnse"
		density = 1

	coastnsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnsw"
		density = 1

	coastnwe
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnwe"
		density = 1

	coastswe
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastswe"
		density = 1

	coastne
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastne"
		density = 1

	coastnw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastnw"
		density = 1

	coastse
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastse"
		density = 1

	coastsw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastsw"
		density = 1

	coastn
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastn"
		density = 1

	coasts
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coasts"
		density = 1

	coaste
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coaste"
		density = 1

	coastw
		name = ""
		icon = 'turfs.dmi'
		icon_state = "coastw"
		density = 1

	water
		name = ""
		icon = 'turfs.dmi'
		icon_state = "water"
		density = 1

	redwater
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwater"
		density = 1

	hill
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hill"

	forest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "forest"

	grass1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "grass1"

	grass2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "grass2"

	firehill
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firehill"

	fireforest
		name = ""
		icon = 'turfs.dmi'
		icon_state = "fireforest"

	firegrass1
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firegrass1"

	firegrass2
		name = ""
		icon = 'turfs.dmi'
		icon_state = "firegrass2"

	sand
		name = ""
		icon = 'turfs.dmi'
		icon_state = "sand"

	hillside
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hillside"
		density = 1

	mountain
		name = ""
		icon = 'turfs.dmi'
		icon_state = "mountain"
		density = 1

	leftbottomcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "leftbottom"

	lefttopcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lefttop"

	righttopcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "righttop"

	rightbottomcentercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "rightbottom"

	yellowflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "yellowflowers"

	redflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redflowers"

	purpleflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "purpleflowers"

	blueflowers
		name = ""
		icon = 'turfs.dmi'
		icon_state = "blueflowers"

	chair
		name = ""
		icon = 'turfs.dmi'
		icon_state = "chair"

	table
		name = ""
		icon = 'turfs.dmi'
		icon_state = "table"
		density = 1

	centercobble
		name = ""
		icon = 'turfs.dmi'
		icon_state = "centercobble"

	pot
		name = ""
		icon = 'turfs.dmi'
		icon_state = "pot"
		density = 1

	barrier
		name = ""
		icon = 'turfs.dmi'
		icon_state = "barrier"

	redbarrier
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redbarrier"

	walledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "walledge"
		density = 1

	bluewalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewalledge"
		density = 1

	redwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwalledge"
		density = 1

	castleedge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castleedge"
		density = 1

	lightwalledge
		name = ""
		icon = 'turfs.dmi'
		icon_state = "lightedwalledge"
		density = 1

	wall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "wall"
		density = 1

	bluewall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "bluewall"
		density = 1

	redwall
		name = ""
		icon = 'turfs.dmi'
		icon_state = "redwall"
		density = 1

	castlebl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castlebl"

	castlebr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castlebr"

	castletl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castletl"

	castletr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "castletr"

	thronebl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbl"
		density = 1

	thronebm
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbm"

	thronebr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "tbr"
		density = 1

	thronetr
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttr"
		density = 1

	thronetl
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttl"
		density = 1

	thronetm
		name = ""
		icon = 'turfs.dmi'
		icon_state = "ttm"
		density = 1

	hut
		name = ""
		icon = 'turfs.dmi'
		icon_state = "hut"