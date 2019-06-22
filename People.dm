mob
	Townfolk1
		Matt
			icon = 'slimes.dmi'
			icon_state = "red"
			verb
				Converse()
					set src in view(1)
					if(usr.leavetownquest == 0)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> Hey [usr]!  Nice day isn't it?  Hey, you know that cave that our people always block so we can't leave the town?"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Well, I think I know a way to get in.  My Mom is always going in there, if we can get her to give me her pass into there, well, then we could get in!"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> My Mom always says though, that there are monsters in there, but we can handel them, right?"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> My Mom should be somewhere around here, why don't you go look for her?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Alright, I'll go look for her."
						sleep(30)
						usr.leavetownquest = 1
						usr.islocked = 0
					else if(usr.leavetownquest == 1)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Come on!  Find my Mom and get her to give us the pass!"
					else if(usr.leavetownquest == 2)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> So?  What happened?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> I got the pass! But, your Mom said that if she doesn't see you when she gets back from work, shes going to get really mad!"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> I suggest that you stay here, I'll check it out, and tell you about it when I get back.  Next time we can go together."
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Alright... I guess, I mean, you are always right when it comes to that kind of stuff."
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Hurry back though!"
						sleep(30)
						usr.leavetownquest = 3
						usr.islocked = 0
					else
						usr << "<b><font color = olive>[src]:</b><font color = blue> Your already done in there?  Come on!  Go further!"

		MattMom
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Matt's Mom"
			verb
				Converse()
					set src in view(1)
					if(usr.leavetownquest == 0)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Hi [usr].  Nice day isn't it?  Well, in a minute I have to go to work so seeya later!"
					else if(usr.leavetownquest == 1)
						usr.islocked = 1
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Can I have the pass to the tunnel?"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Why would you want that?  I mean, you are old enouph but still...is it another one of your's and Matt's plans?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Kind of...but I do want to see the tunnel."
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Alright, I guess <u><b>but</u></b><font color = blue>, if I don't find Matt when I get home, your not going to want to live, okay?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Okay.  I'll tell him.  I'll also make sure that he doesn't get out of town, count on it."
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Good boy!  Seeya in the tunnel later!"
						new /obj/QuestItems/Pass (usr)
						usr << "<b><font color = blue>You recieve a Pass!"
						sleep(30)
						usr.leavetownquest = 2
						usr.islocked = 0

		TunnelGuard
			icon = 'slimes.dmi'
			icon_state = "babble"
			name = "Tunnel Guard"
			verb
				Converse()
					set src in view(1)
					if(usr.leavetownquest == 0)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> What [src]?  You will have to get a pass to enter!  The only person who is nice enouph to give them to at exact age is Matt's Mom!"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Alright...I'll be back when I get a pass!"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Don't come back any sooner!"
						sleep(30)
						usr.islocked = 0
					else if(usr.leavetownquest == 1)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> What [src]?  You will have to get a pass to enter!  The only person who is nice enouph to give them to at exact age is Matt's Mom!"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Alright...I'll be back when I get a pass!"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Don't come back any sooner!"
						sleep(30)
						usr.islocked = 0
					else if(usr.leavetownquest == 2)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> Aren't you forgetting something?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> I am?"
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> You didn't see Matt yet, I over heard your conversation with his mom, go talk to him!"
						sleep(30)
						usr.islocked = 0
					else if(usr.leavetownquest == 3)
						usr.islocked = 1
						usr << "<b><font color = olive>[src]:</b><font color = blue> So...you got a pass ehh?  Well, I guess I have to let you passed.  Just be careful, monsters are showing up everywhere around there now."
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> I'll be careful, dont worry."
						sleep(30)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Just to make sure you will be okay, heres something for you!"
						sleep(30)
						usr << "<b><font color = blue> You recieve two Herbs and 500 gold!"
						sleep(10)
						usr << "<i><font color = blue> In every area with monsters, you will find them wandering around, to start combat, just run into the and select the command you what to do when you are in combat."
						usr.gold += 500
						new /obj/NormalItems/Herb (usr)
						new /obj/NormalItems/Herb (usr)
						usr.leavetownquest = 4
						usr.loc = locate(22,19,1)
						usr.islocked = 0
						usr.lefttown = 1
					else if(usr.lefttown == 1 && usr.leavetownquest == 4)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Want to come back into town?"
						switch(alert(usr,"Well?",,"Yes","No"))
							if("Yes")
								usr.loc = locate(22,21,1)
								usr.lefttown = 0
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = blue> Okay!"
					else if(usr.lefttown == 0 && usr.leavetownquest == 4)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Want to go to the tunnel?"
						switch(alert(usr,"Well?",,"Yes","No"))
							if("Yes")
								usr.loc = locate(22,19,1)
								usr.lefttown = 1
							if("No")
								usr << "<b><font color = olive>[src]:</b><font color = blue> Okay!"
					else
						usr << "<b><font color = olive>[src]:</b><font color = blue> How's it going [usr]?"
						sleep(30)
						usr << "<b><font color = olive>[usr]:</b><font color = blue> Good."

		Jack
			icon = 'slimes.dmi'
			icon_state = "brown"
			verb
				Converse()
					set src in view(1)
					usr.islocked = 1
					usr << "<b><font color = olive>[usr]:</b><font color = blue> Hey Jack, I'm changing my mind about the tunnel.  I really think theres something in there."
					sleep(30)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Hey man!  I thought you weren't going to go into the tunnel.  Now you are?  Oh well."
					sleep(30)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Well, have fun.  Don't strain yourself too hard and always remember, you have a home here."
					sleep(30)
					usr << "<b><font color = olive>[usr]:</b><font color = blue> Okay, well, seeya later!"
					usr.islocked = 0

		UrMom
			icon = 'slimes.dmi'
			icon_state = "pink"
			name = "Mom"
			verb
				Converse()
					set src in view(1)
					if(usr.lunch == 0)
						usr << "<b><font color = olive>[src]:</b><font color = blue> Hello [usr].  Here's your lunch for the day.  Don't eat it too fast."
						sleep(30)
						new /obj/NormalItems/Lunch (usr)
						usr.lunch = 1
					else
						usr << "<b><font color = olive>[src]:</b><font color = blue> Have a good day [usr]!"

		Heather
			icon = 'slimes.dmi'
			icon_state = "yellow"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Past this point there are monsters about.  Proceed with caution!"

		Mitch
			icon = 'slimes.dmi'
			icon_state = "green"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Mitch: Hey [usr]! How's it going?  Well, if you can, stay at my inn!",,"Stay","Don't"))
						if("Stay")
							usr.islocked = 1
							usr << "<b><font color = olive>[src]:</b><font color = blue> Have a good night!"
							usr.hp = usr.maxhp
							usr.mp = usr.maxmp
							sleep(30)
							usr << "<b><font color = olive>[src]:</b><font color = blue> How was your night?"
							sleep(30)
							usr << "<b><font color = olive>[usr]:</b><font color = blue> Good.  Thanks, I'll seeya later!"
							usr.islocked = 0
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later [usr]!"

	Townfolk2

		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "blue"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Hi.  To stay at the inn will be 50 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 50)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 50
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "green"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Hey man!  Look at my wares, lets see what you wanna buy!","Shop")in list("Cancel","Herb - 25 Gold","Large Herb - 150 Gold","Magic Herb - 40 Gold","Large Magic Herb - 180 Gold","Antidote - 50 Gold","Wierd Crystal - 1,000 Gold"))
						if("Cancel")
							return ..()
						if("Herb - 25 Gold")
							if(usr.gold >= 25)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Herb (usr)
								usr.gold -= 25
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Large Herb - 150 Gold")
							if(usr.gold >= 150)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Herb (usr)
								usr.gold -= 150
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Magic Herb - 40 Gold")
							if(usr.gold >= 40)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Magic_Herb (usr)
								usr.gold -= 40
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Large Magic Herb - 180 Gold")
							if(usr.gold >= 180)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Magic_Herb (usr)
								usr.gold -= 180
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Antidote - 50 Gold")
							if(usr.gold >= 50)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Antidote (usr)
								usr.gold -= 50
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Wierd Crystal - 1,000 Gold")
							if(usr.crystalquest == 0)
								if(usr.gold >= 1000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Wierd_Crystal (usr)
									usr.gold -= 1000
									usr.crystalquest = 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I have no more!"

		Guy
			icon = 'slimes.dmi'
			icon_state = "green"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Don't cause any trouble around here.  I'm just here to see the big tower they have but, its infested with monsters!"

		Girl
			icon = 'slimes.dmi'
			icon_state = "pink"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Boo Hoo!  I want to see the tower!  They say there's a mystic black water lake.  And I want to use it as a wish for this expensive crystal I bought!  But daddy won't let me enter it!"

		Man
			icon = 'slimes.dmi'
			icon_state = "metal"
			verb
				Converse()
					set src in view(1)
					usr.islocked = 1
					usr << "<b><font color = olive>[src]:</b><font color = blue> Soon, we are gonna have to find a new underground cove to put this town on.  The bottom is already getting flooded."
					sleep(30)
					usr << "<b><font color = olive>[usr]:</b><font color = blue> Wait, we are in a cove right now?"
					sleep(30)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Thats right!  This whole place is one big underwater tunnel.  Why else would there be cellings?"
					usr.islocked = 0

	Townsfolk3
		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Hi.  To stay at the inn will be 100 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 100)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 100
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "demonite"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Hey man!  Look at my wares, lets see what you wanna buy!","Shop")in list("Cancel","Large Herb - 150 Gold","Large Magic Herb - 180 Gold","Antidote - 50 Gold","Sphere - 25,000 Gold"))
						if("Cancel")
							return ..()
						if("Large Herb - 150 Gold")
							if(usr.gold >= 150)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Herb (usr)
								usr.gold -= 150
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Large Magic Herb - 180 Gold")
							if(usr.gold >= 180)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Magic_Herb (usr)
								usr.gold -= 180
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Antidote - 50 Gold")
							if(usr.gold >= 50)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Antidote (usr)
								usr.gold -= 50
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Sphere - 25,000 Gold")
							if(usr.spherequest == 0)
								if(usr.gold >= 25000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Sphere (usr)
									usr.gold -= 25000
									usr.spherequest += 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I have no more!"

		Guard_Skeleton
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> I'm here to make sure the possesed people outside don't get in here.  The Demon Lord's  birth power is possesing them."

		Guard_Demonite
			icon = 'slimes.dmi'
			icon_state = "demonite"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> If any of those possesed people get in here, they won't live for ten seconds!"

		Unpossesed_Demonite
			icon = 'slimes.dmi'
			icon_state = "demonite"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> It's a [usr.color] slime!  Never seen your kind before.  Just make sure you know what your doing before you go out of town!"

		Priest
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Let the Real Lord lead us!  This ''Demon Lord'' will only send us into Hell!"
					usr.innx = 13
					usr.inny = 61
					usr.innz = 3

	Townsfolk4
		Priest
			icon = 'slimes.dmi'
			icon_state = "lion"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> The lions will soon be revealed of the true face of the one they worship!"
					usr.innx = 61
					usr.inny = 17
					usr.innz = 3

		Unpossesed_Lion
			icon = 'slimes.dmi'
			icon_state = "lion"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This world is better without the useless ''Demon Lord'' we need a real one, not some idiot like this one!"

		Worried_Lion
			icon = 'slimes.dmi'
			icon_state = "lion"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> We are going to die!  Dear lord....HELP US!"

		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "lion"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Hi.  To stay at the inn will be 250 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 250)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 250
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "lion"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Hey man!  Look at my wares, lets see what you wanna buy!","Shop")in list("Cancel","Large Herb - 150 Gold","Large Magic Herb - 180 Gold","Antidote - 50 Gold","Disease Nuller - 300 Gold","Silver Sphere - 500,000 Gold"))
						if("Cancel")
							return ..()
						if("Large Herb - 150 Gold")
							if(usr.gold >= 150)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Herb (usr)
								usr.gold -= 150
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Large Magic Herb - 180 Gold")
							if(usr.gold >= 180)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Magic_Herb (usr)
								usr.gold -= 180
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Antidote - 50 Gold")
							if(usr.gold >= 50)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Antidote (usr)
								usr.gold -= 50
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Disease Nuller - 300 Gold")
							if(usr.gold >= 300)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Disease_Nuller (usr)
								usr.gold -= 300
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Silver Sphere - 500,000 Gold")
							if(usr.spherequest == 2)
								if(usr.gold >= 500000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Silver_Sphere (usr)
									usr.gold -= 500000
									usr.spherequest += 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I'm out of stock!"

	JobPickingTemple
		Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr, "[src]: Hello, [usr].  Welcome to the job center.  Are you ready for a job?",,"Yes","No"))
						if("Yes")
							if(usr.level <= 170)
								usr << "<b><font color = olive>[src]:</b><font color = blue> You are not level 150 or higher though.  Return!"
								usr.loc = locate(54,17,3)
							else if(usr.jobpicked == 0 && usr.level >= 169)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Ahhh... I see you are the appropriate level.  Go around here and talk to everyone.  Then come back to me, and choose the job you like best."
								usr.jobpicked = 1
							else if(usr.jobpicked == 1 && usr.level >= 169)
								switch(input("[src]: So.  What job are you going to be?")in list("Swordsman","Spellcaster","Priest","Thief","Equaler"))
									if("Swordsman")
										usr.job = "Swordsman"
										usr.jobexp = 0
										usr.jobexpreq = 100
										usr.icon = 'slimes.dmi'
										usr.icon_state = "swordsmanred"
										usr.color = "Swordsman Red"
									if("Spellcaster")
										usr.job = "Spellcaster"
										usr.jobexp = 0
										usr.jobexpreq = 100
										usr.icon = 'slimes.dmi'
										usr.icon_state = "spellcasteryellow"
										usr.color = "Spellcaster Yellow"
									if("Priest")
										usr.job = "Priest"
										usr.jobexp = 0
										usr.jobexpreq = 100
										usr.icon = 'slimes.dmi'
										usr.icon_state = "priestblue"
										usr.color = "Priest Blue"
									if("Thief")
										usr.job = "Thief"
										usr.jobexp = 0
										usr.jobexpreq = 100
										usr.icon = 'slimes.dmi'
										usr.icon_state = "thiefblack"
										usr.color = "Thief Black"
									if("Equaler")
										usr.job = "Equaler"
										usr.jobexp = 0
										usr.jobexpreq = 100
										usr.icon = 'slimes.dmi'
										usr.icon_state = "equalermetal"
										usr.color = "Equaler Metal"
								usr << "<b><font color = olive>[src]:</b><font color = blue> Now that you have your job....BEGONE!"
								usr.loc = locate(13,96,4)
								usr.innx = 13
								usr.inny = 96
								usr.innz = 4
								usr.spelllist = " "
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = blue> BEGONE!"
							usr.loc = locate (60,23,3)

		Thief_Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Thieves are fast and quick at ambushing the enemy.  We also get some skills you might find useful."

		Spellcaster_Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Spellcasters are the best.  We get spells that annihalate enemies in 1 hit sometimes!"

		Swordsman_Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Swordsmen are more powerful than anyone else.  We are quick with everything and get fast skills to wipe out enemies in a hit or less."

		Priest_Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Priests worship a real god.  He gives us the strength to do his biddings and we can destory any fakes this way.  We are the only way to go."

		Equaler_Master
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Equalers are the lords of everyone.  We are equal in everything making us not always need spells or just always need our strength. God will protect us anyway because we still somewhat worship him."

	Townsfolk5
		Priest
			icon = 'slimes.dmi'
			icon_state = "mage"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> I have been revealed of the truth by the humans. They showed me what I was truely worshiping."
					usr.innx = 13
					usr.inny = 96
					usr.innz = 4

		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "merchant"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Hi.  To stay at the inn will be 300 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 300)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 300
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Guy
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> We are the race called Humans.  We knew you were civilized like us the second we saw you.  The only ones that appear in the midsts of our city are ones from the great Job Temple!"

		Slime_Lover
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Oh! Oh! It's a slime!  You'll be my friend right?  Unlike those Dark Slimes that are being possesed, you'll be my friend right?"

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "merchant"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Well, since your a Slime I dought you can hold weapons and wear armor so I will sell you everything else I have for sale!","Shop")in list("Cancel","Huge Herb - 350 Gold","Huge Magic Herb - 500 Gold","Antidote - 50 Gold","Disease Nuller - 300 Gold","Sphere - 30,000 Gold","Bronze Sphere - 150,000 Gold","Silver Sphere - 500,000 Gold"))
						if("Cancel")
							return ..()
						if("Huge Herb - 350 Gold")
							if(usr.gold >= 350)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Huge_Herb (usr)
								usr.gold -= 350
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Huge Magic Herb - 500 Gold")
							if(usr.gold >= 500)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Huge_Magic_Herb (usr)
								usr.gold -= 500
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Antidote - 50 Gold")
							if(usr.gold >= 50)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Antidote (usr)
								usr.gold -= 50
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Disease Nuller - 300 Gold")
							if(usr.gold >= 300)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Disease_Nuller (usr)
								usr.gold -= 300
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Sphere - 30,000 Gold")
							if(usr.spherequest == 0)
								if(usr.gold >= 30000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Sphere (usr)
									usr.gold -= 30000
									usr.spherequest += 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I'm out of stock!"
						if("Bronze Sphere - 150,000 Gold")
							if(usr.spherequest == 1)
								if(usr.gold >= 150000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Bronze_Sphere (usr)
									usr.gold -= 150000
									usr.spherequest += 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I'm out of stock!"
						if("Silver Sphere - 500,000 Gold")
							if(usr.spherequest == 2)
								if(usr.gold >= 500000)
									usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
									new /obj/QuestItems/Silver_Sphere (usr)
									usr.gold -= 500000
									usr.spherequest += 1
								else
									usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir.  I'm out of stock!"

	Townsfolk6
		Unknown_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This will be the end of this task.  Find the last 2 spheres in this world.  Then find the melder.  Meld them together and create the Master Sphere.  Then when it is complete, go to the pedistal of doom and put it on it.  Then the truth will be revealed and you will be taken to the truth to solve it."
					usr.innx = 84
					usr.inny = 32
					usr.innz = 4
					usr.loc = locate(usr.innx, usr.inny, usr.innz)

		Puzzle_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This may confuse you.  But the answer cannot be seen."

		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Hi.  To stay at the inn will be 500 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 500)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 500
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Priest_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Someone must like us, because our paths of holy have been holding in the same place for years from evil.."
					usr.innx = 56
					usr.inny = 56
					usr.innz = 5

		Confused_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> I don't get it.  Why don't we just get someone to come and destroy the Dark Evil.  I mean it's not like they are invinsible."

		Fortune_Teller_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Hello sir.  I will tell you your future.......... Hmmmm.  It seems that you will be the savior of us all!"

		Color_Freak_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Hey! Your not a clear slime.  That may not help you when you go outside of town, if you decide to."

		Insane_Slime
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> The Gods will kill everyone and everything in this world!  No matter what you say, we are all doomed!."

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Hi unclear Slime friend!  I got some things you might like, check em out.","Shop")in list("Cancel","Perfect Herb - 600 Gold","Perfect Magic Herb - 750 Gold","Disease Nuller - 500 Gold"))
						if("Cancel")
							return ..()
						if("Perfect Herb - 600 Gold")
							if(usr.gold >= 600)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Perfect_Herb (usr)
								usr.gold -= 600
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Perfect Magic Herb - 750 Gold")
							if(usr.gold >= 750)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Perfect_Magic_Herb (usr)
								usr.gold -= 750
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Disease Nuller - 500 Gold")
							if(usr.gold >= 500)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Disease_Nuller (usr)
								usr.gold -= 500
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."

		Melder
			icon = 'slimes.dmi'
			icon_state = "clear"
			verb
				Converse()
					set src in view(2)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Hello [usr].  I am the melder.  God has told me of your quest and my role in it.  If you have all of the spheres, tell me now and I will meld them."
					switch(alert("Are you ready to meld, chosen one?",,"Yes","No"))
						if("Yes")
							if(usr.spherequest == 5)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> I see you have them, place them on the tables.  Now, stand back..."
								sleep(30)
								usr << "<i><font color = blue>It seems the man is in some wierd trance as he chants some words you don't understand."
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Ogh, Yoi, Hou, Ect, Pel, Fuq, Goh, Ect, Ogh, Gaf!"
								sleep(30)
								usr << "<i><font color = blue>Suddenly, everything goes black and a wierd feeling comes over you.  When you can see again, only one sphere remains, it is huge.  It seems to be in 5 pieces, each piece is the color of your original 5 spheres.  When he tells you to pick it up, you do and it shrinks to fit in your bag."
								new /obj/QuestItems/Master_Sphere (usr)
								for(var/obj/QuestItems/Sphere/S in usr)
									del S
								for(var/obj/QuestItems/Bronze_Sphere/S in usr)
									del S
								for(var/obj/QuestItems/Silver_Sphere/S in usr)
									del S
								for(var/obj/QuestItems/Gold_Sphere/S in usr)
									del S
								for(var/obj/QuestItems/Plantinum_Sphere/S in usr)
									del S
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Now my role is finished.  I hope you can save us all."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't seem to have all the spheres!  Find them!"
						if("No")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Then get ready!"

	Townsfolk7
		Innkeeper
			icon = 'slimes.dmi'
			icon_state = "merchant"
			verb
				Converse()
					set src in view(2)
					switch(alert(usr,"Innkeeper: Ahem.  Hi. *Cough Cough*  I assume you want to stay here.  Don't stay too long.  It's 5 gold.",,"Stay","Don't"))
						if("Stay")
							if(usr.gold >= 5)
								usr.islocked = 1
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good night!"
								usr.gold -= 5
								usr.hp = usr.maxhp
								usr.mp = usr.maxmp
								usr.poisoned = 0
								sleep(30)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Good morning! Have a nice day."
								usr.islocked = 0
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> You don't have enouph gold sir.  Sorry."
						if("Don't")
							usr << "<b><font color = olive>[src]:</b><font color = blue> Seeya later then!"

		Warning_Man
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This world gets worse everyday.  I don't know why your here, but you should leave before the monsters break our barrier spell.  It's almost already down."

		Miserable_Man
			icon = 'slimes.dmi'
			icon_state = "guy"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> I need a place to stay but I don't even have 5 gold.  When I was getting water for the town, I was robbed by monsters and almost beaten to death.  Then suddenly the monsters ran off and I didn't ask why, I just ran here."

		Old_Mage
			icon = 'slimes.dmi'
			icon_state = "mage"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This world will never be normal anymore.  I can only help that my magic can sustain us."

		Homeless_Mage
			icon = 'slimes.dmi'
			icon_state = "mage"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> Thanks to this place I can survive in these conditions.  They will feed us as needed so I can help with the barrier.  I see you are a strong, peaceful slime.  Please help us!"

		Priest
			icon = 'slimes.dmi'
			icon_state = "mage"
			verb
				Converse()
					set src in view(1)
					usr << "<b><font color = olive>[src]:</b><font color = blue> This isn't right.  Even my powers cannot help these people.  I only hope that someone can save us..."
					usr.innx = 65
					usr.inny = 48
					usr.innz = 6

		Shopkeeper
			icon = 'slimes.dmi'
			icon_state = "merchant"
			verb
				Converse()
					set src in oview(2)
					switch(input("Shopkeeper:  Ehem.  If my prices are high, I am sorry, I must be able to get foods for my family or else they will die.","Shop")in list("Cancel","Perfect Herb - 1,000 Gold","Perfect Magic Herb - 1,500 Gold","Disease Nuller - 1,000 Gold","Antidote - 800 Gold","Miracle Potion - 1,500,000 Gold","Large Miracle Potion - 5,000,000 Gold","Huge Miracle Potion - 12,000,000 Gold"))
						if("Cancel")
							return ..()
						if("Perfect Herb - 1,000 Gold")
							if(usr.gold >= 1000)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Perfect_Herb (usr)
								usr.gold -= 1000
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Perfect Magic Herb - 1,500 Gold")
							if(usr.gold >= 1500)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Perfect_Magic_Herb (usr)
								usr.gold -= 1500
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Disease Nuller - 1,000 Gold")
							if(usr.gold >= 1000)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Disease_Nuller (usr)
								usr.gold -= 1000
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Antidote - 800 Gold")
							if(usr.gold >= 800)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Antidote (usr)
								usr.gold -= 800
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Miracle Potion - 1,500,000 Gold")
							if(usr.gold >= 1500000)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Miracle_Potion (usr)
								usr.gold -= 1500000
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Large Miracle Potion - 5,000,000 Gold")
							if(usr.gold >= 5000000)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Large_Miracle_Potion (usr)
								usr.gold -= 5000000
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."
						if("Huge Miracle Potion - 12,000,000 Gold")
							if(usr.gold >= 12000000)
								usr << "<b><font color = olive>[src]:</b><font color = blue> Here you go!"
								new /obj/NormalItems/Huge_Miracle_Potion (usr)
								usr.gold -= 12000000
							else
								usr << "<b><font color = olive>[src]:</b><font color = blue> Sorry sir, you don't have enouph gold."

		Guard
			icon = 'slimes.dmi'
			icon_state = "blue"
			verb
				Converse()
					set src in oview(1)
					usr.islocked = 1
					usr << "I see...you are the one he has expected for so long.  The one that would ''fool'' his plans."
					sleep(10)
					usr << "He is ready for you behind me, but, if you know that you are too weak for him, then you should leave."
					sleep(10)
					usr << "It is obvious that he will overpower you.  He is the most powerful creature in the world."
					sleep(10)
					usr << "He cannot talk to an inferior creature such as yourself, but I will tell you one thing."
					sleep(10)
					usr << "It was I who was talking to you through that voice.  You have been fooled from the begining to your doom."
					sleep(10)
					usr << "Yes, you are the chosen one, but that does not matter.  He is the Chosen one of the Gods."
					sleep(10)
					usr << "You are just the chosen one to DIE!  If you really wish to be destroied by my master, then go ahead."
					sleep(10)
					usr << "I will not stop you.  Just be prepared to die quickly and painfully."
					sleep(10)
					switch(alert("Are you ready to be killed by my master?","The choice","Yes","No"))
						if("Yes")
							usr.x += 2
							usr << "This is your own choice, beyond here, there is no return, be prepared to die."
							sleep(10)
							usr << "Also, be warned my Master will multiply randomly, so your death is enevitable."
							usr.islocked = 0
						if("No")
							usr << "So be it, you will have to die by his hands sooner or later..."
							usr.islocked = 0