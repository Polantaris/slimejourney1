mob
	proc
		Battle()
			if(usr.defend == 1)
				usr.defense /= 2
				usr.defend = 0
			if(usr.poisoned == 1)
				var
					poisondmg = usr.hp / 25
				usr << "You recieve damage from poison!"
				sleep(10)
				usr.hp -= poisondmg
				usr.hp = round(usr.hp)
				if(usr.hp <= 0)
					Deathcheck()
			if(usr.mem == 0)
				usr.memattack = usr.attack
				usr.memdefense = usr.defense
				usr.memintelligence = usr.intelligence
				usr.memagility = usr.agility
				usr.memluck = usr.luck
				usr.mem = 1
			switch(input("You encountered [monsters] [src](s)!  Command?","Battle!") in list("Attack","Spell","Item","Defend","Run"))
				if("Attack")
					Attack()
				if("Spell")
					Spell()
				if("Item")
					Item()
				if("Defend")
					Defend()
				if("Run")
					Run()

		Attack()
			var
				damage = usr.attack - src.defense + rand (-10,10)
				chancehit = usr.agility - src.agility + rand(-25,25)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(chancehit <= 0)
				usr << "You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "You miss!"
				usr << 'dodge.wav'
				sleep(10)
				NBattle()
			if(damage <= 0)
				var
					onedmgchance = rand(0,7)
				if(onedmgchance == 3)
					usr << "You attack the [src]!"
					usr << 'attack.wav'
					sleep(10)
					usr << "You barely hit the [src], scraching it for 1 damage!"
					usr << 'hit.wav'
					src.hp -= 1
					sleep(10)
					if(src.hp <= 0)
						Deathcheck()
					else
						NBattle()
				else
					usr << "You attack the [src]!"
					usr << 'attack.wav'
					sleep(10)
					usr << "You miss!"
					usr << 'dodge.wav'
					sleep(10)
					NBattle()
			if(critchance == 9)
				usr << "You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "Critical Hit!"
				usr << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					usr << "You attack powerfully but you wildly miss!"
					usr << 'dodge.wav'
					sleep(10)
					NBattle()
				if(critdamage >> 0)
					usr << "You hit the [src] for [critdamage]!"
					usr << 'hit.wav'
					src.hp -= critdamage
					sleep(10)
					if(src.hp <= 0)
						Deathcheck()
					else
						NBattle()
			if(chancehit > 0 && damage > 0)
				usr << "You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "You hit the [src] for [damage] damage!"
				usr << 'hit.wav'
				src.hp -= damage
				sleep(10)
				if(src.hp <= 0)
					Deathcheck()
				else
					NBattle()

		Spell()
			var/list/choice = list()
			if(isnull(usr.spelllist))
				usr << "<font color = blue><b>You don't have any spells!"
				Battle()
			else if(usr.diseased == 1)
				usr << "<font color = blue><b>You are too weak to cast spells!"
				Battle()
			else if(usr.job == "Swordsman")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP")
				if(choose == "Power Slash - 50 MP")
					if(usr.powerslash >> 0)
						Power_Slash()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Rapid Slash - 50 MP")
					if(usr.rapidslash >> 0)
						Rapid_Slash()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Money Slash - 50 MP")
					if(usr.moneyslash >> 0)
						Money_Slash()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Attack Up - 50 MP")
					if(usr.attup >> 0)
						Attack_Up()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Defense Up - 50 MP")
					if(usr.defup >> 0)
						Defense_Up()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(usr.job == "Spellcaster")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP")
				if(choose == "Fire - 75 MP")
					if(usr.fire >> 0)
						Fire()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice - 75 MP")
					if(usr.ice >> 0)
						Ice()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder - 75 MP")
					if(usr.thunder >> 0)
						Thunder()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind - 75 MP")
					if(usr.wind >> 0)
						Wind()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(usr.earth >> 0)
						Earth()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(usr.job == "Thief")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP")
				if(choose == "Double Hit - 50 MP")
					if(usr.doublehit >> 0)
						Double_Hit()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Luck Up - 50 MP")
					if(usr.lukup >> 0)
						Luck_Up()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spark - 60 MP")
					if(usr.spark >> 0)
						Spark()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Agility Up - 50 MP")
					if(usr.aglup >> 0)
						Agility_Up()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Steal - 50 MP")
					if(usr.steal >> 0)
						Steal()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(usr.job == "Priest")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP")
				if(choose == "Heal - 50 MP")
					if(usr.heal >> 0)
						Healskill()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Devenom - 50 MP")
					if(usr.devenom >> 0)
						Devenom()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Bolt - 75 MP")
					if(usr.holybolt >> 0)
						Holy_Bolt()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Intelligence Up - 50 MP")
					if(usr.intup >> 0)
						Intelligence_Up()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(usr.mindgames >> 0)
						Mind_Games()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(usr.job == "Equaler")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP")
				if(choose == "Power Slash - 50 MP")
					if(usr.powerslash >> 0)
						Power_Slash()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(usr.earth >> 0)
						Earth()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Hit - 50 MP")
					if(usr.doublehit >> 0)
						Double_Hit()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(usr.mindgames >> 0)
						Mind_Games()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Veil - 150 MP")
					if(usr.holyveil >> 0)
						Holy_Veil()
					else
						usr << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(usr.job == "Beginner")
				if(usr.spelllist.Find("Blaze"))
					choice.Add("Blaze - 2 MP")
				if(usr.spelllist.Find("Heal"))
					choice.Add("Heal - 4 MP")
				if(usr.spelllist.Find("Firebal"))
					choice.Add("Firebal - 4 MP")
				if(usr.spelllist.Find("Icebolt"))
					choice.Add("Icebolt - 6 MP")
				if(usr.spelllist.Find("Bolt"))
					choice.Add("Bolt - 8 MP")
				if(usr.spelllist.Find("Sleep"))
					choice.Add("Sleep - 5 MP")
				if(usr.spelllist.Find("Boltmore"))
					choice.Add("Boltmore - 12 MP")
				if(usr.spelllist.Find("Blazemore"))
					choice.Add("Blazemore - 14 MP")
				if(usr.spelllist.Find("Firebane"))
					choice.Add("Firebane - 18 MP")
				if(usr.spelllist.Find("Snowstorm"))
					choice.Add("Snowstorm - 22 MP")
				if(usr.spelllist.Find("Healmore"))
					choice.Add("Healmore - 10 MP")
				if(usr.spelllist.Find("Boltmost"))
					choice.Add("Boltmost - 28 MP")
				if(usr.spelllist.Find("Blazemost"))
					choice.Add("Blazemost - 30 MP")
				if(usr.spelllist.Find("Firebolt"))
					choice.Add("Firebolt - 36 MP")
				if(usr.spelllist.Find("Sleepmore"))
					choice.Add("Sleepmore - 12 MP")
				if(usr.spelllist.Find("Blizzard"))
					choice.Add("Blizzard - 44 MP")
				if(usr.spelllist.Find("Healmost"))
					choice.Add("Healmost - 22 MP")
				if(usr.spelllist.Find("Zap"))
					choice.Add("Zap - 48 MP")
				if(usr.spelllist.Find("Extreme Blaze"))
					choice.Add("Extreme Blaze - 58 MP")
				if(usr.spelllist.Find("Firevolt"))
					choice.Add("Firevolt - 64 MP")
				if(usr.spelllist.Find("Sleepmost"))
					choice.Add("Sleepmost - 18 MP")
				if(usr.spelllist.Find("Blizmore"))
					choice.Add("Blizmore - 70 MP")
				if(usr.spelllist.Find("Healall"))
					choice.Add("Healall - 30 MP")
				if(usr.spelllist.Find("Zapmore"))
					choice.Add("Zapmore - 74 MP")
				if(usr.spelllist.Find("Extreme Blazemore"))
					choice.Add("Extreme Blazemore - 78 MP")
				if(usr.spelllist.Find("Fireroar"))
					choice.Add("Fireroar - 86 MP")
				if(usr.spelllist.Find("Blizmost"))
					choice.Add("Blizmost - 90 MP")
				if(usr.spelllist.Find("Zapmost"))
					choice.Add("Zapmost - 96 MP")
				if(usr.spelllist.Find("Extreme Blazemost"))
					choice.Add("Extreme Blazemost - 102 MP")
				if(usr.spelllist.Find("Firesoar"))
					choice.Add("Firesoar - 106 MP")
				if(usr.spelllist.Find("Master Blizzard"))
					choice.Add("Master Blizzard - 112 MP")
				if(usr.spelllist.Find("Thordain"))
					choice.Add("Thordain - 120 MP")
				if(usr.spelllist.Find("Death Blaze"))
					choice.Add("Death Blaze - 132 MP")
				if(usr.spelllist.Find("Firerage"))
					choice.Add("Firerage - 150 MP")
				if(usr.spelllist.Find("Death Icebolt"))
					choice.Add("Death Icebolt - 166 MP")
				if(usr.spelllist.Find("Thordainmore"))
					choice.Add("Thordainmore - 174 MP")
				if(usr.spelllist.Find("Death Blazemore"))
					choice.Add("Death Blazemore - 186 MP")
				if(usr.spelllist.Find("Fireplow"))
					choice.Add("Fireplow - 200 MP")
				if(usr.spelllist.Find("Death Snowstorm"))
					choice.Add("Death Snowstorm - 208 MP")
				if(usr.spelllist.Find("Thordainmost"))
					choice.Add("Thordainmost - 220 MP")
				if(usr.spelllist.Find("Death Blazemost"))
					choice.Add("Death Blazemost - 232 MP")
				if(usr.spelllist.Find("Firestreak"))
					choice.Add("Firestreak - 250 MP")
				if(usr.spelllist.Find("Death Blizzard"))
					choice.Add("Death Blizzard - 264 MP")
				choice += "Cancel"
				var/choose = input("What spell do you wish to cast?","Spells") in choice
				if(choose == "Blaze - 2 MP")
					Blaze()
				if(choose == "Heal - 4 MP")
					Heal()
				if(choose == "Firebal - 4 MP")
					Firebal()
				if(choose == "Icebolt - 6 MP")
					Icebolt()
				if(choose == "Bolt - 8 MP")
					Bolt()
				if(choose == "Sleep - 5 MP")
					Sleep()
				if(choose == "Boltmore - 12 MP")
					Boltmore()
				if(choose == "Blazemore - 14 MP")
					Blazemore()
				if(choose == "Firebane - 18 MP")
					Firebane()
				if(choose == "Snowstorm - 22 MP")
					Snowstorm()
				if(choose == "Healmore - 10 MP")
					Healmore()
				if(choose == "Boltmost - 28 MP")
					Boltmost()
				if(choose == "Blazemost - 30 MP")
					Blazemost()
				if(choose == "Firebolt - 36 MP")
					Firebolt()
				if(choose == "Sleepmore - 12 MP")
					Sleepmore()
				if(choose == "Blizzard - 44 MP")
					Blizzard()
				if(choose == "Healmost - 22 MP")
					Healmost()
				if(choose == "Zap - 48 MP")
					Zap()
				if(choose == "Extreme Blaze - 58 MP")
					Extreme_Blaze()
				if(choose == "Firevolt - 64 MP")
					Firevolt()
				if(choose == "Sleepmost - 18 MP")
					Sleepmost()
				if(choose == "Blizmore - 70 MP")
					Blizmore()
				if(choose == "Healall - 30 MP")
					Healall()
				if(choose == "Zapmore - 74 MP")
					Zapmore()
				if(choose == "Extreme Blazemore - 78 MP")
					Extreme_Blazemore()
				if(choose == "Fireroar - 86 MP")
					Fireroar()
				if(choose == "Blizmost - 90 MP")
					Blizmost()
				if(choose == "Zapmost - 96 MP")
					Zapmost()
				if(choose == "Extreme Blazemost - 102 MP")
					Extreme_Blazemost()
				if(choose == "Firesoar - 106 MP")
					Firesoar()
				if(choose == "Master Blizzard - 112 MP")
					Master_Blizzard()
				if(choose == "Thordain - 120 MP")
					Thordain()
				if(choose == "Death Blaze - 132 MP")
					Death_Blaze()
				if(choose == "Firerage - 150 MP")
					Firerage()
				if(choose == "Death Icebolt - 166 MP")
					Death_Icebolt()
				if(choose == "Thordainmore - 174 MP")
					Thordainmore()
				if(choose == "Death Blazemore - 186 MP")
					Death_Blazemore()
				if(choose == "Fireplow - 200 MP")
					Fireplow()
				if(choose == "Death Snowstorm - 208 MP")
					Death_Snowstorm()
				if(choose == "Thordainmost - 220 MP")
					Thordainmost()
				if(choose == "Death Blazemost - 232 MP")
					Death_Blazemost()
				if(choose == "Firestreak - 250 MP")
					Firestreak()
				if(choose == "Death Blizzard- 264 MP")
					Death_Blizzard()
				if(choose == "Cancel")
					Battle()
				else
					usr << "<font color = blue><b>Thats not a spell!"
					Battle()

		Defend()
			usr << "You take a defensive pause."
			usr.defense *= 2
			usr.defend = 1
			NBattle()

		Item()
			var/list/owitems = new()
			var/tempval
			var/useitem
			for(var/x in usr.contents)
				owitems += x
			owitems += "Cancel"
			if (owitems.len == 1)
				usr << "You don't have any items."
				Battle()
			else
				var/useordrop = input("Would you like to use an item") in list("Use","Cancel")
				switch(useordrop)
					if("Cancel")
						Battle()
					if("Use")
						useitem = input("Which item would you like to use?") in owitems
						if(useitem == "Cancel")
							Battle()
						else if(istype(useitem,/obj/NormalItems/Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							usr.hp += tempval
							usr << "<font color = blue><b>You were healed for [tempval] HP."
							if(usr.hp >= usr.maxhp)
								usr.hp = usr.maxhp
								NBattle()
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Magic_Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							usr.mp += tempval
							usr << "<font color = blue><b>You restored [tempval] MP."
							if(usr.mp >= usr.maxmp)
								usr.mp = usr.maxmp
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Large_Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(50,100)
							usr.hp += tempval
							usr << "<font color = blue><b>You were healed for [tempval] HP."
							if(usr.hp >= usr.maxhp)
								usr.hp = usr.maxhp
								NBattle()
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Large_Magic_Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(40,80)
							usr.mp += tempval
							usr << "<font color = blue><b>You restored [tempval] MP."
							if(usr.mp >= usr.maxmp)
								usr.mp = usr.maxmp
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Huge_Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(150,300)
							usr.hp += tempval
							usr << "<font color = blue><b>You were healed for [tempval] HP."
							if(usr.hp >= usr.maxhp)
								usr.hp = usr.maxhp
								NBattle()
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Huge_Magic_Herb))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(100,200)
							usr.mp += tempval
							usr << "<font color = blue><b>You restored [tempval] MP."
							if(usr.mp >= usr.maxmp)
								usr.mp = usr.maxmp
							del(useitem)
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Lunch))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(15,25)
							usr.hp += tempval
							usr << "<font color = blue><b>You were healed for [tempval] HP."
							if(usr.hp >= usr.maxhp)
								usr.hp = usr.maxhp
							del(useitem)
							usr.lunch = 0
							NBattle()
						else if(istype(useitem,/obj/NormalItems/Antidote))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(usr.poisoned == 1)
								usr << "<font color = blue><b>The poison leaves your body!"
								usr.poisoned = 0
								del(useitem)
								NBattle()
							else
								usr << "<font color = blue><b>You're not poisoned!"
								Battle()
						else if(istype(useitem,/obj/NormalItems/Disease_Nuller))
							usr << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(usr.diseased == 1)
								usr << "<font color = blue><b>The disease in your body has been nullifed!"
								usr.diseased = 0
								del(useitem)
								NBattle()
							else
								usr << "<font color = blue><b>You're not diseased!"
								Battle()
						else
							usr << "<font color = blue><b>This item is not to be used in combat!"
							Battle()

		Run()
			var
				chancerun = usr.agility - src.agility + rand(-50,50)
			usr << "You start to flee..."
			sleep(10)
			if(usr.diseased == 1)
				usr << "You are too weak to run!"
				sleep(10)
				Battle()
			if(chancerun >> 0)
				usr << "You get away safely!"
				usr.islocked = 0
				src.islocked = 0
				src.hp = src.maxhp
				src.mp = src.maxmp
				usr.lib = 0
				usr.battle = 0
				usr.attack = usr.memattack
				usr.defense = usr.memdefense
				usr.intelligence = usr.memintelligence
				usr.agility = usr.memagility
				usr.luck = usr.memluck
				usr.battle = 0
				src.battle = 0
				if(usr.attackdoubled == 1)
					usr.attackdoubled = 0
				if(usr.defensedoubled == 1)
					usr.defensedoubled = 0
				if(usr.intelligencedoubled == 1)
					usr.intelligencedoubled = 0
				if(usr.luckdoubled == 1)
					usr.luckdoubled = 0
				if(usr.agilitydoubled == 1)
					usr.agilitydoubled = 0
				usr.mem = 0
				return 0
			else
				usr << "You were blocked by the [src]!"
				sleep(10)
				NBattle()
				return 1

		Deathcheck()
			if(src.hp <= 0)
				usr << "You have killed the [src]!"
				usr << 'winbattle.wav'
				sleep(10)
				usr << "You recieve [src.expreward] exp and [src.gold] gold!"
				if(src.jobexpreward >= 1)
					usr << "<font color = blue><b>You recieve [src.jobexpreward] job exp!"
					usr.jobexp += jobexpreward
					checkjoblevel(usr)
				usr.attack = usr.memattack
				usr.defense = usr.memdefense
				usr.intelligence = usr.memintelligence
				usr.agility = usr.memagility
				usr.luck = usr.memluck
				if(usr.attackdoubled == 1)
					usr.attackdoubled = 0
				if(usr.defensedoubled == 1)
					usr.defensedoubled = 0
				if(usr.intelligencedoubled == 1)
					usr.intelligencedoubled = 0
				if(usr.luckdoubled == 1)
					usr.luckdoubled = 0
				if(usr.agilitydoubled == 1)
					usr.agilitydoubled = 0
				usr.exp += src.expreward
				usr.gold += src.gold
				checklevel(usr)
				usr.islocked = 0
				usr.battle = 0
				usr.lib = 0
				usr.mem = 0
				if(usr.boss1 == 1)
					usr.boss1 = 0
					usr.boss1defeated = 1
					usr.loc = locate(16,9,1)
				del src
			if(usr.hp <= 0)
				var
					goldlost = usr.gold/2
				usr << "<b><font color = blue>You died!  The [src] runs away with half your gold!"
				usr.gold -= goldlost
				usr.gold = round(usr.gold)
				src.gold += goldlost
				src.gold = round(src.gold)
				usr.islocked = 0
				src.islocked = 0
				usr.hp = usr.maxhp
				usr.lefttown = 0
				usr.battle = 0
				src.battle = 0
				usr.lib = 0
				usr.poisoned = 0
				usr.diseased = 0
				usr.x = usr.innx
				usr.y = usr.inny
				usr.z = usr.innz
				usr.attack = usr.memattack
				usr.defense = usr.memdefense
				usr.intelligence = usr.memintelligence
				usr.agility = usr.memagility
				usr.luck = usr.memluck
				if(usr.attackdoubled == 1)
					usr.attackdoubled = 0
				if(usr.defensedoubled == 1)
					usr.defensedoubled = 0
				if(usr.intelligencedoubled == 1)
					usr.intelligencedoubled = 0
				if(usr.luckdoubled == 1)
					usr.luckdoubled = 0
				if(usr.agilitydoubled == 1)
					usr.agilitydoubled = 0
				usr.mem = 0
				return

		NBattle()
			if(src.defend == 1)
				src.defense /= 2
				src.defend = 0
			var
				attackrand = rand(0,9)
				wakechance = rand(0,7)
			if(src.sleep == 1)
				usr << "The [src] is sleeping!"
				sleep(10)
				if(wakechance == 3)
					usr << "The [src] suddenly awakens!"
					src.sleep = 0
					sleep(10)
					Battle()
				else
					usr << "The [src] sleeps peacefully."
					sleep(10)
					Battle()
			if(attackrand == 0)
				NAttack()
			if(attackrand == 1)
				NAttack()
			if(attackrand == 2)
				NAttack()
			if(attackrand == 3)
				NDefend()
			if(attackrand == 4)
				if(src.spell1 == null)
					NAttack()
				else
					NSpell1()
			if(attackrand == 5)
				if(src.spell1 == null)
					NAttack()
				else
					NSpell1()
			if(attackrand == 6)
				if(src.spell2 == null)
					NAttack()
				else
					NSpell2()
			if(attackrand == 7)
				if(src.spell2 == null)
					NAttack()
				else
					NSpell2()
			if(attackrand == 8)
				if(src.spell3 == null)
					NAttack()
				else
					NSpell3()
			if(attackrand == 9)
				NRun()

		NAttack()
			var
				damage = src.attack - usr.defense + rand (-10,10)
				chancehit = src.agility - usr.agility + rand(-25,25)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(chancehit <= 0)
				usr << "The [src] attacks you!"
				usr << 'enemyattack.wav'
				sleep(10)
				usr << "The [src] misses!"
				usr << 'dodge.wav'
				sleep(10)
				Battle()
			if(damage <= 0)
				var
					onedmgchance = rand(0,7)
				if(onedmgchance == 3)
					usr << "The [src] attacks you!"
					usr << 'enemyattack.wav'
					sleep(10)
					usr << "The [src] barely hits you scratching it for 1 damage!"
					usr << 'hit.wav'
					usr.hp -= 1
					sleep(10)
					if(usr.hp <= 0)
						Deathcheck()
					else
						Battle()
				else
					usr << "The [src] attacks you!"
					usr << 'enemyattack.wav'
					sleep(10)
					usr << "The [src] misses!"
					usr << 'dodge.wav'
					sleep(10)
					Battle()
			if(critchance == 9)
				usr << "The [src] attacks you!"
				usr << 'enemyattack.wav'
				sleep(10)
				usr << "Critical Hit!"
				usr << 'criticalhit.wav'
				sleep(10)
				if(critdamage >> 0)
					usr << "The [src] hits you for [critdamage]!"
					usr << 'hit.wav'
					usr.hp -= critdamage
					sleep(10)
					if(usr.hp <= 0)
						Deathcheck()
					else
						Battle()
				if(critdamage <= 0)
					usr << "The [src] attacks powerfully but wildly misses!"
					usr << 'dodge.wav'
					sleep(10)
					Battle()
			if(chancehit > 0 && damage > 0)
				usr << "The [src] attacks you!"
				usr << 'enemyattack.wav'
				sleep(10)
				usr << "The [src] hits you for [damage] damage!"
				usr << 'hit.wav'
				usr.hp -= damage
				sleep(10)
				if(usr.hp <= 0)
					Deathcheck()
				else
					Battle()



		NSpell1()
			if(src.spell1 == "Blaze")
				MBlaze()
			if(src.spell1 == "Bolt")
				MBolt()
			if(src.spell1 == "Firebal")
				MFirebal()
			if(src.spell1 == "Poison")
				MPoison()
			if(src.spell1 == "Blazemore")
				MBlazemore()
			if(src.spell1 == "Icebolt")
				MIcebolt()
			if(src.spell1 == "Boltmore")
				MBoltmore()
			if(src.spell1 == "Heal")
				MHeal()
			if(src.spell1 == "Poisonmore")
				MPoisonmore()
			if(src.spell1 == "Quake")
				MQuake()
			if(src.spell1 == "Bone Throw")
				MBone_Throw()
			if(src.spell1 == "Boom")
				MBoom()
			if(src.spell1 == "Healmore")
				MHealmore()
			if(src.spell1 == "Flame Breath")
				MFlame_Breath()
			if(src.spell1 == "Flaming Breath")
				MFlaming_Breath()
			if(src.spell1 == "Boommore")
				MBoommore()
			if(src.spell1 == "Tornado")
				MTornado()
			if(src.spell1 == "Pounce")
				MPounce()
			if(src.spell1 == "Disease")
				MDisease()
			if(src.spell1 == "Blazemost")
				MBlazemost()
			if(src.spell1 == "Ram")
				MRam()
			if(src.spell1 == "Evil Flare")
				MEvil_Flare()
			if(src.spell1 == "Spiked Bone Throw")
				MSpiked_Bone_Throw()
			if(src.spell1 == "Heavy Flame Breath")
				MHeavy_Flame_Breath()
			if(src.spell1 == "Fire Slash")
				MFire_Slash()
			if(src.spell1 == "Flame Tornado")
				MFlame_Tornado()
			if(src.spell1 == "Fire Bite")
				MFire_Bite()
			if(src.spell1 == "Snowstorm")
				MSnowstorm()
			if(src.spell1 == "Healmost")
				MHealmost()
			if(src.spell1 == "Explodet")
				MExplodet()
			if(src.spell1 == "Diseasemore")
				MDiseasemore()
			if(src.spell1 == "Firevolt")
				MFirevolt()
			if(src.spell1 == "Death Blaze")
				MDeath_Blaze()
			if(src.spell1 == "Zap")
				MZap()
			if(src.spell1 == "Poisonmost")
				MPoisonmost()
			if(src.spell1 == "Gale")
				MGale()
			if(src.spell1 == "Earthquake")
				MEarthquake()
			else
				NBattle()

		NSpell2()
			if(src.spell2 == "Blaze")
				MBlaze()
			if(src.spell2 == "Bolt")
				MBolt()
			if(src.spell2 == "Firebal")
				MFirebal()
			if(src.spell2 == "Poison")
				MPoison()
			if(src.spell2 == "Blazemore")
				MBlazemore()
			if(src.spell2 == "Icebolt")
				MIcebolt()
			if(src.spell2 == "Boltmore")
				MBoltmore()
			if(src.spell2 == "Heal")
				MHeal()
			if(src.spell2 == "Poisonmore")
				MPoisonmore()
			if(src.spell2 == "Quake")
				MQuake()
			if(src.spell2 == "Bone Throw")
				MBone_Throw()
			if(src.spell2 == "Boom")
				MBoom()
			if(src.spell2 == "Healmore")
				MHealmore()
			if(src.spell2 == "Flame Breath")
				MFlame_Breath()
			if(src.spell2 == "Flaming Breath")
				MFlaming_Breath()
			if(src.spell2 == "Boommore")
				MBoommore()
			if(src.spell2 == "Tornado")
				MTornado()
			if(src.spell2 == "Pounce")
				MPounce()
			if(src.spell2 == "Disease")
				MDisease()
			if(src.spell2 == "Blazemost")
				MBlazemost()
			if(src.spell2 == "Ram")
				MRam()
			if(src.spell2 == "Evil Flare")
				MEvil_Flare()
			if(src.spell2 == "Spiked Bone Throw")
				MSpiked_Bone_Throw()
			if(src.spell2 == "Heavy Flame Breath")
				MHeavy_Flame_Breath()
			if(src.spell2 == "Fire Slash")
				MFire_Slash()
			if(src.spell2 == "Flame Tornado")
				MFlame_Tornado()
			if(src.spell2 == "Fire Bite")
				MFire_Bite()
			if(src.spell2 == "Snowstorm")
				MSnowstorm()
			if(src.spell2 == "Healmost")
				MHealmost()
			if(src.spell2 == "Explodet")
				MExplodet()
			if(src.spell2 == "Diseasemore")
				MDiseasemore()
			if(src.spell2 == "Firevolt")
				MFirevolt()
			if(src.spell2 == "Death Blaze")
				MDeath_Blaze()
			if(src.spell2 == "Zap")
				MZap()
			if(src.spell2 == "Poisonmost")
				MPoisonmost()
			if(src.spell2 == "Gale")
				MGale()
			if(src.spell2 == "Earthquake")
				MEarthquake()
			else
				NBattle()

		NSpell3()
			if(src.spell3 == "Blaze")
				MBlaze()
			if(src.spell3 == "Bolt")
				MBolt()
			if(src.spell3 == "Firebal")
				MFirebal()
			if(src.spell3 == "Poison")
				MPoison()
			if(src.spell3 == "Blazemore")
				MBlazemore()
			if(src.spell3 == "Icebolt")
				MIcebolt()
			if(src.spell3 == "Boltmore")
				MBoltmore()
			if(src.spell3 == "Heal")
				MHeal()
			if(src.spell3 == "Poisonmore")
				MPoisonmore()
			if(src.spell3 == "Quake")
				MQuake()
			if(src.spell3 == "Bone Throw")
				MBone_Throw()
			if(src.spell3 == "Boom")
				MBoom()
			if(src.spell3 == "Healmore")
				MHealmore()
			if(src.spell3 == "Flame Breath")
				MFlame_Breath()
			if(src.spell3 == "Flaming Breath")
				MFlaming_Breath()
			if(src.spell3 == "Boommore")
				MBoommore()
			if(src.spell3 == "Tornado")
				MTornado()
			if(src.spell3 == "Pounce")
				MPounce()
			if(src.spell3 == "Disease")
				MDisease()
			if(src.spell3 == "Blazemost")
				MBlazemost()
			if(src.spell3 == "Ram")
				MRam()
			if(src.spell3 == "Evil Flare")
				MEvil_Flare()
			if(src.spell3 == "Spiked Bone Throw")
				MSpiked_Bone_Throw()
			if(src.spell3 == "Heavy Flame Breath")
				MHeavy_Flame_Breath()
			if(src.spell3 == "Fire Slash")
				MFire_Slash()
			if(src.spell3 == "Flame Tornado")
				MFlame_Tornado()
			if(src.spell3 == "Fire Bite")
				MFire_Bite()
			if(src.spell3 == "Snowstorm")
				MSnowstorm()
			if(src.spell3 == "Healmost")
				MHealmost()
			if(src.spell3 == "Explodet")
				MExplodet()
			if(src.spell3 == "Diseasemore")
				MDiseasemore()
			if(src.spell3 == "Firevolt")
				MFirevolt()
			if(src.spell3 == "Death Blaze")
				MDeath_Blaze()
			if(src.spell3 == "Zap")
				MZap()
			if(src.spell3 == "Poisonmost")
				MPoisonmost()
			if(src.spell3 == "Gale")
				MGale()
			if(src.spell3 == "Earthquake")
				MEarthquake()
			else
				NBattle()

		NDefend()
			src.defense *= 2
			src.defend = 1
			Battle()

		NRun()
			var
				chancerun = src.agility - usr.agility + rand(-250,250)
			usr << "The [src] starts to flee..."
			sleep(10)
			if(chancerun >> 0)
				usr << "The [src] gets away safely!"
				usr.islocked = 0
				src.islocked = 0
				usr.lib = 0
				usr.battle = 0
				src.battle = 0
				usr.attack = usr.memattack
				usr.defense = usr.memdefense
				usr.intelligence = usr.memintelligence
				usr.agility = usr.memagility
				usr.luck = usr.memluck
				if(usr.attackdoubled == 1)
					usr.attackdoubled = 0
				if(usr.defensedoubled == 1)
					usr.defensedoubled = 0
				if(usr.intelligencedoubled == 1)
					usr.intelligencedoubled = 0
				if(usr.luckdoubled == 1)
					usr.luckdoubled = 0
				if(usr.agilitydoubled == 1)
					usr.agilitydoubled = 0
				usr.mem = 0
				del src
			else
				usr << "You blocked the [src]!"
				sleep(10)
				Battle()