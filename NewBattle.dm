mob
	var
		dead = 0
		ran = 0

mob
	proc
		MasterBattle(mob/enemy)
			if(src.islocked == 0)
				src.islocked = 1
			var/found=0
			for(var/mob/M in monstergroup)
				found=1
			if(!found)
				src.stolen = 0
				src.attack = src.memattack
				src.defense = src.memdefense
				src.intelligence = src.memintelligence
				src.agility = src.memagility
				src.luck = src.memluck
				if(src.attackdoubled == 1)
					src.attackdoubled = 0
				if(src.defensedoubled == 1)
					src.defensedoubled = 0
				if(src.intelligencedoubled == 1)
					src.intelligencedoubled = 0
				if(src.luckdoubled == 1)
					src.luckdoubled = 0
				if(src.agilitydoubled == 1)
					src.agilitydoubled = 0
				src.battle = 0
				src.lib = 0
				src.mem = 0
				src << "You have defeated the [monster_number]!"
				del (enemy)
				src << 'winbattle.wav'
				checklevel(src)
				checkjoblevel(src)
				src.islocked = 0
				return
			Battle()
			if(src.ran == 1)
				for(var/mob/M in monstergroup)
					del(M)
				src.ran = 0
				return
			for(var/mob/M in monstergroup)
				if(src.dead)
					dead=0
					src.stolen = 0
					src.attack = src.memattack
					src.defense = src.memdefense
					src.intelligence = src.memintelligence
					src.agility = src.memagility
					src.luck = src.memluck
					if(src.attackdoubled == 1)
						src.attackdoubled = 0
					if(src.defensedoubled == 1)
						src.defensedoubled = 0
					if(src.intelligencedoubled == 1)
						src.intelligencedoubled = 0
					if(src.luckdoubled == 1)
						src.luckdoubled = 0
					if(src.agilitydoubled == 1)
						src.agilitydoubled = 0
					src.islocked = 0
					src.battle = 0
					src.lib = 0
					src.mem = 0
					return
				M.Battle(src)
				if(dead)
					dead=0
					src.stolen = 0
					src.attack = src.memattack
					src.defense = src.memdefense
					src.intelligence = src.memintelligence
					src.agility = src.memagility
					src.luck = src.memluck
					if(src.attackdoubled == 1)
						src.attackdoubled = 0
					if(src.defensedoubled == 1)
						src.defensedoubled = 0
					if(src.intelligencedoubled == 1)
						src.intelligencedoubled = 0
					if(src.luckdoubled == 1)
						src.luckdoubled = 0
					if(src.agilitydoubled == 1)
						src.agilitydoubled = 0
					src.islocked = 0
					src.battle = 0
					src.lib = 0
					src.mem = 0
					return
			if(monstergroup.len)
				spawn()MasterBattle(enemy)

		Battle(mob/player)
			for(var/index in monstergroup)
				if(!ismob(index))
					monstergroup-=index
			var/mob/M=monstergroup[1]
			var/monstername=initial(M.name)
			monstername="[monstername][plural(monstergroup)]"
			if(src.defend == 1)
				src.defense /= 2
				src.defend = 0
			if(src.poisoned == 1)
				var
					poisondmg = src.hp / 25
				src << "You recieve damage from poison!"
				sleep(10)
				src.hp -= poisondmg
				src.hp = round(src.hp)
				if(src.hp <= 0)
					M.Deathcheck(player)
			if(src.mem == 0)
				src.memattack = src.attack
				src.memdefense = src.defense
				src.memintelligence = src.intelligence
				src.memagility = src.agility
				src.memluck = src.luck
				src.mem = 1
			//switch(input("You encountered [monstergroup.len] [monster_number][plural(monstergroup)]!  Command?","Battle!") in list("Attack","Spell","Item","Defend","Run"))
			switch(input("You encountered [monstergroup.len] [monstername]!  Command?","Battle!") in list("Attack","Spell","Item","Defend","Run"))
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
			var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
			var
				damage = src.attack - enemy.defense + rand (-10,10)
				chancehit = src.agility - enemy.agility + rand(-25,25)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(critchance == 9)
				src << "You attack the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "Critical Hit!"
				src << 'criticalhit.wav'
				sleep(10)
				if(critdamage >> 0)
					src << "You hit the [enemy] for [critdamage]!"
					src << 'hit.wav'
					enemy.hp -= critdamage
					sleep(10)
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else if(critdamage <= 0)
					src << "You attack powerfully but you wildly miss!"
					src << 'dodge.wav'
					sleep(10)
			else if(chancehit > 0 && damage > 0)
				src << "You attack the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "You hit the [enemy] for [damage] damage!"
				src << 'hit.wav'
				enemy.hp -= damage
				sleep(10)
				if(enemy.hp <= 0)
					Deathcheck(enemy)
			else if(chancehit <= 0)
				src << "You attack the [enemy]!"
				src << 'attack.wav'
				sleep(10)
				src << "You miss!"
				src << 'dodge.wav'
				sleep(10)
			else if(damage <= 0)
				var
					onedmgchance = rand(0,7)
				if(onedmgchance == 3)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You barely hit the [enemy], scraching it for 1 damage!"
					src << 'hit.wav'
					enemy.hp -= 1
					sleep(10)
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else if(onedmgchance == 1)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 2)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 4)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 5)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 6)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 7)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)
				else if(onedmgchance == 0)
					src << "You attack the [enemy]!"
					src << 'attack.wav'
					sleep(10)
					src << "You miss!"
					src << 'dodge.wav'
					sleep(10)


		Spell()
			var/list/choice = list()
			if(isnull(src.spelllist))
				src << "<font color = blue><b>You don't have any spells or skills!"
				Battle()
			else if(src.diseased == 1)
				src << "<font color = blue><b>You are too weak to cast spells or use skills!"
				Battle()
			else if(src.job == "Swordsman")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Rapid Slash - 50 MP")
					if(src.rapidslash >> 0)
						Rapid_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Money Slash - 50 MP")
					if(src.moneyslash >> 0)
						Money_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Attack Up - 50 MP")
					if(src.attup >> 0)
						Attack_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Defense Up - 50 MP")
					if(src.defup >> 0)
						Defense_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Spellcaster")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Fire - 75 MP")
					if(src.fire >> 0)
						Fire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice - 75 MP")
					if(src.ice >> 0)
						Ice(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder - 75 MP")
					if(src.thunder >> 0)
						Thunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind - 75 MP")
					if(src.wind >> 0)
						Wind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Thief")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Luck Up - 50 MP")
					if(src.lukup >> 0)
						Luck_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spark - 60 MP")
					if(src.spark >> 0)
						Spark(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Agility Up - 50 MP")
					if(src.aglup >> 0)
						Agility_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Steal - 50 MP")
					if(src.steal >> 0)
						Steal(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Priest")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Heal - 50 MP")
					if(src.heal >> 0)
						Healskill(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Devenom - 50 MP")
					if(src.devenom >> 0)
						Devenom(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Bolt - 75 MP")
					if(src.holybolt >> 0)
						Holy_Bolt(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Intelligence Up - 50 MP")
					if(src.intup >> 0)
						Intelligence_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(src.mindgames >> 0)
						Mind_Games(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Equaler")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(src.mindgames >> 0)
						Mind_Games(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Veil - 150 MP")
					if(src.holyveil >> 0)
						Holy_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Bladesman")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP","Fire Slash - 500 MP","Ice Slash - 500 MP","Thunder Slash - 500 MP","Wind Slash - 500 MP","Earth Slash - 500 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Rapid Slash - 50 MP")
					if(src.rapidslash >> 0)
						Rapid_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Money Slash - 50 MP")
					if(src.moneyslash >> 0)
						Money_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Attack Up - 50 MP")
					if(src.attup >> 0)
						Attack_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Defense Up - 50 MP")
					if(src.defup >> 0)
						Defense_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fire Slash - 500 MP")
					if(src.fs >> 0)
						Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice Slash - 500 MP")
					if(src.is >> 0)
						Ice_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder Slash - 500 MP")
					if(src.ts >> 0)
						Thunder_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth Slash - 500 MP")
					if(src.es >> 0)
						Earth_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind Slash - 500 MP")
					if(src.ws >> 0)
						Wind_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Multicaster")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP","Extreme Fire - 750 MP","Extreme Ice - 750 MP","Extreme Thunder - 750 MP","Extreme Wind - 750 MP","Extreme Earth - 750 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Fire - 75 MP")
					if(src.fire >> 0)
						Fire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice - 75 MP")
					if(src.ice >> 0)
						Ice(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder - 75 MP")
					if(src.thunder >> 0)
						Thunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind - 75 MP")
					if(src.wind >> 0)
						Wind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Fire - 750 MP")
					if(src.efire >> 0)
						EFire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Ice - 750 MP")
					if(src.eice >> 0)
						EIce(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Thunder - 750 MP")
					if(src.ethunder >> 0)
						EThunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Earth - 750 MP")
					if(src.eearth >> 0)
						EEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Assassin")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP","Multiple Hit - 1000 MP","Scare - 500 MP","Fireworks - 800 MP","Extreme Wind - 750 MP","Spikes - 500 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Luck Up - 50 MP")
					if(src.lukup >> 0)
						Luck_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spark - 60 MP")
					if(src.spark >> 0)
						Spark(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Agility Up - 50 MP")
					if(src.aglup >> 0)
						Agility_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Steal - 50 MP")
					if(src.steal >> 0)
						Steal(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Multiple Hit - 1000 MP")
					if(src.multihit >> 0)
						Multiple_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scare - 500 MP")
					if(src.scare >> 0)
						Scare(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fireworks - 800 MP")
					if(src.fworks >> 0)
						Fireworks(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spikes - 500 MP")
					if(src.sp >> 0)
						Spikes(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Monk")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP","Scary Eyes - 500 MP","Holy Lightning - 750 MP","Sleep - 500 MP","Extreme Wind - 750 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Heal - 50 MP")
					if(src.heal >> 0)
						Healskill(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Devenom - 50 MP")
					if(src.devenom >> 0)
						Devenom(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Bolt - 75 MP")
					if(src.holybolt >> 0)
						Holy_Bolt(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Intelligence Up - 50 MP")
					if(src.intup >> 0)
						Intelligence_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(src.mindgames >> 0)
						Mind_Games(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scary Eyes - 500 MP")
					if(src.seyes >> 0)
						Scary_Eyes(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Lightning - 750 MP")
					if(src.holylit >> 0)
						Holy_Lightning(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Sleep - 500 MP")
					if(src.sleeps >> 0)
						Sleeps(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Greatener")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP","Fire Slash - 500 MP","Extreme Earth - 750 MP","Scare - 500 MP","Heal - 50 MP","Almighty Veil - 1500 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(src.mindgames >> 0)
						Mind_Games(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Veil - 150 MP")
					if(src.holyveil >> 0)
						Holy_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fire Slash - 500 MP")
					if(src.fs >> 0)
						Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scare - 500 MP")
					if(src.scare >> 0)
						Scare(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Earth - 750 MP")
					if(src.eearth >> 0)
						EEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Heal - 50 MP")
					if(src.heal >> 0)
						Healskill(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Almighty Veil - 1500 MP")
					if(src.alveil >> 0)
						Almighty_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Warrior")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP","Fire Slash - 500 MP","Ice Slash - 500 MP","Thunder Slash - 500 MP","Wind Slash - 500 MP","Earth Slash - 500 MP","Double Fire Slash - 2500 MP","Double Ice Slash - 2500 MP","Double Thunder Slash - 2500 MP","Double Wind Slash - 2500 MP","Double Earth Slash - 2500 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Rapid Slash - 50 MP")
					if(src.rapidslash >> 0)
						Rapid_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Money Slash - 50 MP")
					if(src.moneyslash >> 0)
						Money_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Attack Up - 50 MP")
					if(src.attup >> 0)
						Attack_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Defense Up - 50 MP")
					if(src.defup >> 0)
						Defense_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fire Slash - 500 MP")
					if(src.fs >> 0)
						Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice Slash - 500 MP")
					if(src.is >> 0)
						Ice_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder Slash - 500 MP")
					if(src.ts >> 0)
						Thunder_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth Slash - 500 MP")
					if(src.es >> 0)
						Earth_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind Slash - 500 MP")
					if(src.ws >> 0)
						Wind_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Fire Slash - 2500 MP")
					if(src.dfs >> 0)
						Double_Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Ice Slash - 2500 MP")
					if(src.dis >> 0)
						Double_Ice_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Thunder Slash - 2500 MP")
					if(src.dts >> 0)
						Double_Thunder_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Earth Slash - 2500 MP")
					if(src.des >> 0)
						Double_Earth_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Wind Slash - 2500 MP")
					if(src.dws >> 0)
						Double_Wind_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Mage")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP","Extreme Fire - 750 MP","Extreme Ice - 750 MP","Extreme Thunder - 750 MP","Extreme Wind - 750 MP","Extreme Earth - 750 MP","Godly Fire - 3750 MP","Godly Ice - 3750 MP","Godly Thunder - 3750 MP","Godly Wind - 3750 MP","Godly Earth - 3750 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Fire - 75 MP")
					if(src.fire >> 0)
						Fire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Ice - 75 MP")
					if(src.ice >> 0)
						Ice(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Thunder - 75 MP")
					if(src.thunder >> 0)
						Thunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Wind - 75 MP")
					if(src.wind >> 0)
						Wind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Fire - 750 MP")
					if(src.efire >> 0)
						EFire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Ice - 750 MP")
					if(src.eice >> 0)
						EIce(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Thunder - 750 MP")
					if(src.ethunder >> 0)
						EThunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Earth - 750 MP")
					if(src.eearth >> 0)
						EEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Fire - 3750 MP")
					if(src.gfire >> 0)
						GFire(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Ice - 3750 MP")
					if(src.gice >> 0)
						GIce(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Thunder - 3750 MP")
					if(src.gthunder >> 0)
						GThunder(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Wind - 3750 MP")
					if(src.gwind >> 0)
						GWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Earth - 3750 MP")
					if(src.gearth >> 0)
						GEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Rouge")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP","Multiple Hit - 1000 MP","Scare - 500 MP","Fireworks - 800 MP","Extreme Wind - 750 MP","Spikes - 500 MP","Backstrike - 5000 MP","Envenom - 3000 MP","Explosions - 12000 MP","Godly Wind - 3750 MP","Spike Rain - 30500 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Luck Up - 50 MP")
					if(src.lukup >> 0)
						Luck_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spark - 60 MP")
					if(src.spark >> 0)
						Spark(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Agility Up - 50 MP")
					if(src.aglup >> 0)
						Agility_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Steal - 50 MP")
					if(src.steal >> 0)
						Steal(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Multiple Hit - 1000 MP")
					if(src.multihit >> 0)
						Multiple_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scare - 500 MP")
					if(src.scare >> 0)
						Scare(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fireworks - 800 MP")
					if(src.fworks >> 0)
						Fireworks(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spikes - 500 MP")
					if(src.sp >> 0)
						Spikes(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Backstrike - 5000 MP")
					if(src.backs >> 0)
						Backstrike(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Envenom - 3000 MP")
					if(src.env >> 0)
						Envenom(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Explosions - 12000 MP")
					if(src.explosion >> 0)
						Explosion(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Wind - 3750 MP")
					if(src.gwind >> 0)
						GWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Spike Rain - 30500 MP")
					if(src.sprain >> 0)
						SpikeRain(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Pope")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP","Scary Eyes - 500 MP","Holy Lightning - 7000 MP","Sleep - 500 MP","Extreme Wind - 750 MP","Holy Blast - 15000 MP","Holy Ice Shards - 7000 MP","Holy Flames - 7000 MP","Beat - 10000 MP","Godly Wind - 3750 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Heal - 50 MP")
					if(src.heal >> 0)
						Healskill(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Devenom - 50 MP")
					if(src.devenom >> 0)
						Devenom(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Bolt - 75 MP")
					if(src.holybolt >> 0)
						Holy_Bolt(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Intelligence Up - 50 MP")
					if(src.intup >> 0)
						Intelligence_Up(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scary Eyes - 500 MP")
					if(src.seyes >> 0)
						Scary_Eyes(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Lightning - 7000 MP")
					if(src.holylit >> 0)
						Holy_Lightning(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Sleep - 500 MP")
					if(src.sleeps >> 0)
						Sleeps(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Wind - 750 MP")
					if(src.ewind >> 0)
						EWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Blast - 15000 MP")
					if(src.hb >> 0)
						Holy_Blast(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Beat - 10000 MP")
					if(src.beat >> 0)
						Beat(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Flames - 7000 MP")
					if(src.hflames >> 0)
						Holy_Flames(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Ice Shards - 7000 MP")
					if(src.hices >> 0)
						Holy_Ice_Shards(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Wind - 3750 MP")
					if(src.gwind >> 0)
						GWind(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Master")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP","Fire Slash - 500 MP","Extreme Earth - 750 MP","Scare - 500 MP","Heal - 50 MP","Almighty Veil - 1500 MP","Double Fire Slash - 2500 MP","Godly Earth - 3750 MP","Envenom - 3000 MP","Holy Flames - 7000 MP","Deadly Frozen Veil - 50000 MP")
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Power Slash - 50 MP")
					if(src.powerslash >> 0)
						Power_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Earth - 75 MP")
					if(src.earth >> 0)
						Earth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Hit - 50 MP")
					if(src.doublehit >> 0)
						Double_Hit(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Mind Games - 50 MP")
					if(src.mindgames >> 0)
						Mind_Games(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Veil - 150 MP")
					if(src.holyveil >> 0)
						Holy_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Double Fire Slash - 2500 MP")
					if(src.dfs >> 0)
						Double_Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Godly Earth - 3750 MP")
					if(src.gearth >> 0)
						GEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Envenom - 3000 MP")
					if(src.env >> 0)
						Envenom(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Holy Flames - 7000 MP")
					if(src.hflames >> 0)
						Holy_Flames(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Deadly Frozen Veil - 50000 MP")
					if(src.deadfveil >> 0)
						Deadly_Frozen_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Fire Slash - 500 MP")
					if(src.fs >> 0)
						Fire_Slash(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Scare - 500 MP")
					if(src.scare >> 0)
						Scare(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Extreme Earth - 750 MP")
					if(src.eearth >> 0)
						EEarth(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Heal - 50 MP")
					if(src.heal >> 0)
						Healskill(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
				if(choose == "Almighty Veil - 1500 MP")
					if(src.alveil >> 0)
						Almighty_Veil(enemy)
					else
						src << "<font color = blue><b>You don't know this skill!"
						Battle()
			else if(src.job == "Beginner")
				if(src.spelllist.Find("Blaze"))
					choice.Add("Blaze - 2 MP")
				if(src.spelllist.Find("Heal"))
					choice.Add("Heal - 4 MP")
				if(src.spelllist.Find("Firebal"))
					choice.Add("Firebal - 4 MP")
				if(src.spelllist.Find("Icebolt"))
					choice.Add("Icebolt - 6 MP")
				if(src.spelllist.Find("Bolt"))
					choice.Add("Bolt - 8 MP")
				if(src.spelllist.Find("Sleep"))
					choice.Add("Sleep - 5 MP")
				if(src.spelllist.Find("Boltmore"))
					choice.Add("Boltmore - 12 MP")
				if(src.spelllist.Find("Blazemore"))
					choice.Add("Blazemore - 14 MP")
				if(src.spelllist.Find("Firebane"))
					choice.Add("Firebane - 18 MP")
				if(src.spelllist.Find("Snowstorm"))
					choice.Add("Snowstorm - 22 MP")
				if(src.spelllist.Find("Healmore"))
					choice.Add("Healmore - 10 MP")
				if(src.spelllist.Find("Boltmost"))
					choice.Add("Boltmost - 28 MP")
				if(src.spelllist.Find("Blazemost"))
					choice.Add("Blazemost - 30 MP")
				if(src.spelllist.Find("Firebolt"))
					choice.Add("Firebolt - 36 MP")
				if(src.spelllist.Find("Sleepmore"))
					choice.Add("Sleepmore - 12 MP")
				if(src.spelllist.Find("Blizzard"))
					choice.Add("Blizzard - 44 MP")
				if(src.spelllist.Find("Healmost"))
					choice.Add("Healmost - 22 MP")
				if(src.spelllist.Find("Zap"))
					choice.Add("Zap - 48 MP")
				if(src.spelllist.Find("Extreme Blaze"))
					choice.Add("Extreme Blaze - 58 MP")
				if(src.spelllist.Find("Firevolt"))
					choice.Add("Firevolt - 64 MP")
				if(src.spelllist.Find("Sleepmost"))
					choice.Add("Sleepmost - 18 MP")
				if(src.spelllist.Find("Blizmore"))
					choice.Add("Blizmore - 70 MP")
				if(src.spelllist.Find("Healall"))
					choice.Add("Healall - 30 MP")
				if(src.spelllist.Find("Zapmore"))
					choice.Add("Zapmore - 74 MP")
				if(src.spelllist.Find("Extreme Blazemore"))
					choice.Add("Extreme Blazemore - 78 MP")
				if(src.spelllist.Find("Fireroar"))
					choice.Add("Fireroar - 86 MP")
				if(src.spelllist.Find("Blizmost"))
					choice.Add("Blizmost - 90 MP")
				if(src.spelllist.Find("Zapmost"))
					choice.Add("Zapmost - 96 MP")
				if(src.spelllist.Find("Extreme Blazemost"))
					choice.Add("Extreme Blazemost - 102 MP")
				if(src.spelllist.Find("Firesoar"))
					choice.Add("Firesoar - 106 MP")
				if(src.spelllist.Find("Master Blizzard"))
					choice.Add("Master Blizzard - 112 MP")
				if(src.spelllist.Find("Thordain"))
					choice.Add("Thordain - 120 MP")
				if(src.spelllist.Find("Death Blaze"))
					choice.Add("Death Blaze - 132 MP")
				if(src.spelllist.Find("Firerage"))
					choice.Add("Firerage - 150 MP")
				if(src.spelllist.Find("Death Icebolt"))
					choice.Add("Death Icebolt - 166 MP")
				if(src.spelllist.Find("Thordainmore"))
					choice.Add("Thordainmore - 174 MP")
				if(src.spelllist.Find("Death Blazemore"))
					choice.Add("Death Blazemore - 186 MP")
				if(src.spelllist.Find("Fireplow"))
					choice.Add("Fireplow - 200 MP")
				if(src.spelllist.Find("Death Snowstorm"))
					choice.Add("Death Snowstorm - 208 MP")
				if(src.spelllist.Find("Thordainmost"))
					choice.Add("Thordainmost - 220 MP")
				if(src.spelllist.Find("Death Blazemost"))
					choice.Add("Death Blazemost - 232 MP")
				if(src.spelllist.Find("Firestreak"))
					choice.Add("Firestreak - 250 MP")
				if(src.spelllist.Find("Death Blizzard"))
					choice.Add("Death Blizzard - 264 MP")
				choice += "Cancel"
				var/choose = input("What spell do you wish to cast?","Spells") in choice
				var/mob/enemy=input("Who will you attack?","Select Target")in monstergroup
				if(choose == "Blaze - 2 MP")
					Blaze(enemy)
				if(choose == "Heal - 4 MP")
					Heal(enemy)
				if(choose == "Firebal - 4 MP")
					Firebal(enemy)
				if(choose == "Icebolt - 6 MP")
					Icebolt(enemy)
				if(choose == "Bolt - 8 MP")
					Bolt(enemy)
				if(choose == "Sleep - 5 MP")
					Sleep(enemy)
				if(choose == "Boltmore - 12 MP")
					Boltmore(enemy)
				if(choose == "Blazemore - 14 MP")
					Blazemore(enemy)
				if(choose == "Firebane - 18 MP")
					Firebane(enemy)
				if(choose == "Snowstorm - 22 MP")
					Snowstorm(enemy)
				if(choose == "Healmore - 10 MP")
					Healmore(enemy)
				if(choose == "Boltmost - 28 MP")
					Boltmost(enemy)
				if(choose == "Blazemost - 30 MP")
					Blazemost(enemy)
				if(choose == "Firebolt - 36 MP")
					Firebolt(enemy)
				if(choose == "Sleepmore - 12 MP")
					Sleepmore(enemy)
				if(choose == "Blizzard - 44 MP")
					Blizzard(enemy)
				if(choose == "Healmost - 22 MP")
					Healmost(enemy)
				if(choose == "Zap - 48 MP")
					Zap(enemy)
				if(choose == "Extreme Blaze - 58 MP")
					Extreme_Blaze(enemy)
				if(choose == "Firevolt - 64 MP")
					Firevolt(enemy)
				if(choose == "Sleepmost - 18 MP")
					Sleepmost(enemy)
				if(choose == "Blizmore - 70 MP")
					Blizmore(enemy)
				if(choose == "Healall - 30 MP")
					Healall(enemy)
				if(choose == "Zapmore - 74 MP")
					Zapmore(enemy)
				if(choose == "Extreme Blazemore - 78 MP")
					Extreme_Blazemore(enemy)
				if(choose == "Fireroar - 86 MP")
					Fireroar(enemy)
				if(choose == "Blizmost - 90 MP")
					Blizmost(enemy)
				if(choose == "Zapmost - 96 MP")
					Zapmost(enemy)
				if(choose == "Extreme Blazemost - 102 MP")
					Extreme_Blazemost(enemy)
				if(choose == "Firesoar - 106 MP")
					Firesoar(enemy)
				if(choose == "Master Blizzard - 112 MP")
					Master_Blizzard(enemy)
				if(choose == "Thordain - 120 MP")
					Thordain(enemy)
				if(choose == "Death Blaze - 132 MP")
					Death_Blaze(enemy)
				if(choose == "Firerage - 150 MP")
					Firerage(enemy)
				if(choose == "Death Icebolt - 166 MP")
					Death_Icebolt(enemy)
				if(choose == "Thordainmore - 174 MP")
					Thordainmore(enemy)
				if(choose == "Death Blazemore - 186 MP")
					Death_Blazemore(enemy)
				if(choose == "Fireplow - 200 MP")
					Fireplow(enemy)
				if(choose == "Death Snowstorm - 208 MP")
					Death_Snowstorm(enemy)
				if(choose == "Thordainmost - 220 MP")
					Thordainmost(enemy)
				if(choose == "Death Blazemost - 232 MP")
					Death_Blazemost(enemy)
				if(choose == "Firestreak - 250 MP")
					Firestreak(enemy)
				if(choose == "Death Blizzard- 264 MP")
					Death_Blizzard(enemy)
				if(choose == "Cancel")
					Battle()

		Defend()
			src << "<font color = blue><b>Currently Disabled"
			Battle()

		Item()
			var/list/owitems = new()
			var/tempval
			var/useitem
			for(var/x in src.contents)
				owitems += x
			owitems += "Cancel"
			if (owitems.len == 1)
				src << "You don't have any items."
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
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							src.hp += tempval
							src << "<font color = blue><b>You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Magic_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							src.mp += tempval
							src << "<font color = blue><b>You restored [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(50,100)
							src.hp += tempval
							src << "<font color = blue><b>You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Large_Magic_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(40,80)
							src.mp += tempval
							src << "<font color = blue><b>You restored [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Huge_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(150,300)
							src.hp += tempval
							src << "<font color = blue><b>You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Huge_Magic_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(100,200)
							src.mp += tempval
							src << "<font color = blue><b>You restored [tempval] MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Perfect_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(150,300)
							src.hp = src.maxhp
							src << "<font color = blue><b>You were completly healed."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Perfect_Magic_Herb))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(100,200)
							src.mp = src.maxmp
							src << "<font color = blue><b>You restored all of your MP."
							if(src.mp >= src.maxmp)
								src.mp = src.maxmp
							del(useitem)
						else if(istype(useitem,/obj/NormalItems/Lunch))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(15,25)
							src.hp += tempval
							src << "<font color = blue><b>You were healed for [tempval] HP."
							if(src.hp >= src.maxhp)
								src.hp = src.maxhp
							del(useitem)
							src.lunch = 0
						else if(istype(useitem,/obj/NormalItems/Antidote))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(src.poisoned == 1)
								src << "<font color = blue><b>The poison leaves your body!"
								src.poisoned = 0
								del(useitem)
							else
								src << "<font color = blue><b>You're not poisoned!"
								Battle()
						else if(istype(useitem,/obj/NormalItems/Disease_Nuller))
							src << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(src.diseased == 1)
								src << "<font color = blue><b>The disease in your body has been nullifed!"
								src.diseased = 0
								del(useitem)
							else
								src << "<font color = blue><b>You're not diseased!"
								Battle()
						else
							src << "<font color = blue><b>This item is not to be used in combat!"
							Battle()

		Run()
			var
				chancerun = src.agility - src.agility + rand(-50,50)
			src << "You start to flee..."
			sleep(10)
			if(src.diseased == 1)
				src << "You are too weak to run!"
				sleep(10)
				Battle()
			if(chancerun >> 0)
				src << "You get away safely!"
				src.islocked = 0
				src.islocked = 0
				src.lib = 0
				src.battle = 0
				src.attack = src.memattack
				src.defense = src.memdefense
				src.intelligence = src.memintelligence
				src.agility = src.memagility
				src.luck = src.memluck
				src.battle = 0
				src.battle = 0
				if(src.attackdoubled == 1)
					src.attackdoubled = 0
				if(src.defensedoubled == 1)
					src.defensedoubled = 0
				if(src.intelligencedoubled == 1)
					src.intelligencedoubled = 0
				if(src.luckdoubled == 1)
					src.luckdoubled = 0
				if(src.agilitydoubled == 1)
					src.agilitydoubled = 0
				src.mem = 0
				src.dead = 1
				src.ran = 1
				return 0
			else
				src << "You were blocked by the [src]!"
				sleep(10)

		Deathcheck(mob/enemy)
			src << "You have killed the [enemy]!"
			sleep(10)
			src << "The [enemy] gave you [enemy.expreward] exp and [enemy.gold] gold!"
			src.exp += enemy.expreward
			src.gold += enemy.gold
			if(enemy.jobexpreward >= 1)
				src << "<font color = blue><b>The [enemy] gave you [enemy.jobexpreward] job exp!"
				src.jobexp += enemy.jobexpreward
			if(enemy.boss1 == 1)
				src.boss1 = 0
				src.boss1defeated = 1
				src.loc = locate(16,9,1)
			del enemy

mob
	monster
		Deathcheck(mob/blue/player)
			usr << "<b><font color = blue>You died!  The [src] runs away with half your gold!"
			usr << "This is a note left by Metroid.  ''As of now, I have disabled regaining of your Gold from monsters due to the new multimonstered battles.  Next update will readd this feature, because it will take alot of coding, and I'm just busy gettinging this working and not any add-on features.''"
			usr.dead += 1
			usr.gold /= 2
			usr.gold = round(usr.gold)
			src.gold += usr.gold
			src.gold = round(src.gold)
			usr.islocked = 0
			src.islocked = 0
			usr.hp = usr.maxhp  // 1099
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
			del src

		Battle(mob/blue/player)
			for(var/mob/M in monstergroup)
			if(src.defend == 1)
				src.defense /= 2
				src.defend = 0
			var/action=pick(
				prob(50)
					"Attack",
				prob(5)
					"Run",
				prob(45)
					"Spell",
			)
			if(action == "Attack")
				Attack(player)
			if(action == "Spell")
				Spell(player)
			if(action == "Run")
				Run(player)


		Attack(mob/blue/player)
			var
				damage = src.attack - player.defense + rand (-10,10)
				chancehit = src.agility - player.agility + rand(-25,25)
				critchance = rand (0,19)
				critdamage = damage * 1.5
			critdamage = round(critdamage)
			if(critchance == 9)
				player << "The [src] attacks you!"
				player << 'enemyattack.wav'
				sleep(10)
				player << "Critical Hit!"
				player << 'criticalhit.wav'
				sleep(10)
				if(critdamage <= 0)
					player << "The [src] attacks powerfully but wildly misses!"
					player << 'dodge.wav'
					sleep(10)
				else if(critdamage >> 0)
					player << "The [src] hits you for [critdamage]!"
					player << 'hit.wav'
					player.hp -= critdamage
					sleep(10)
					if(player.hp <= 0)
						Deathcheck()
			else if(chancehit > 0 && damage > 0)
				player << "The [src] attacks you!"
				player << 'enemyattack.wav'
				sleep(10)
				player << "The [src] hits you for [damage] damage!"
				player << 'hit.wav'
				player.hp -= damage
				sleep(10)
				if(player.hp <= 0)
					Deathcheck()
			else if(chancehit <= 0)
				player << "The [src] attacks you!"
				player << 'enemyattack.wav'
				sleep(10)
				player << "The [src] misses!"
				player << 'dodge.wav'
				sleep(10)
			else if(damage <= 0)
				var
					onedmgchance = rand(0,7)
				if(onedmgchance == 3)
					player << "The [src] attacks you!"
					player << 'enemyattack.wav'
					sleep(10)
					player << "The [src] barely hits you scratching you for 1 damage!"
					player << 'hit.wav'
					player.hp -= 1
					sleep(10)
					if(player.hp <= 0)
						Deathcheck()
				else
					player << "The [src] attacks you!"
					player << 'enemyattack.wav'
					sleep(10)
					player << "The [src] misses!"
					player << 'dodge.wav'
					sleep(10)



		Spell(mob/blue/player)
			var/spellselect=pick(src.spell)
			if(spellselect == "Blaze")
				Blaze(player)
			if(spellselect == "Bolt")
				Bolt(player)
			if(spellselect == "Firebal")
				Firebal(player)
			if(spellselect == "Poison")
				Poison(player)
			if(spellselect== "Blazemore")
				Blazemore(player)
			if(spellselect == "Icebolt")
				Icebolt(player)
			if(spellselect == "Boltmore")
				Boltmore(player)
			if(spellselect == "Heal")
				Heal(player)
			if(spellselect == "Poisonmore")
				Poisonmore(player)
			if(spellselect == "Quake")
				Quake(player)
			if(spellselect == "Bone Throw")
				Bone_Throw(player)
			if(spellselect == "Boom")
				Boom(player)
			if(spellselect == "Healmore")
				Healmore(player)
			if(spellselect == "Flame Breath")
				Flame_Breath(player)
			if(spellselect == "Flaming Breath")
				Flaming_Breath(player)
			if(spellselect == "Boommore")
				Boommore(player)
			if(spellselect == "Tornado")
				Tornado(player)
			if(spellselect == "Pounce")
				Pounce(player)
			if(spellselect == "Disease")
				Disease(player)
			if(spellselect == "Blazemost")
				Blazemost(player)
			if(spellselect == "Ram")
				Ram(player)
			if(spellselect == "Evil Flare")
				Evil_Flare(player)
			if(spellselect == "Spiked Bone Throw")
				Spiked_Bone_Throw(player)
			if(spellselect == "Heavy Flame Breath")
				Heavy_Flame_Breath(player)
			if(spellselect == "Fire Slash")
				Fire_Slash(player)
			if(spellselect == "Flame Tornado")
				Flame_Tornado(player)
			if(spellselect == "Fire Bite")
				Fire_Bite(player)
			if(spellselect == "Snowstorm")
				Snowstorm(player)
			if(spellselect == "Healmost")
				Healmost(player)
			if(spellselect == "Explodet")
				Explodet(player)
			if(spellselect == "Diseasemore")
				Diseasemore(player)
			if(spellselect == "Firevolt")
				Firevolt(player)
			if(spellselect == "Death Blaze")
				Death_Blaze(player)
			if(spellselect == "Zap")
				Zap(player)
			if(spellselect == "Poisonmost")
				Poisonmost(player)
			if(spellselect == "Gale")
				Gale(player)
			if(spellselect == "Earthquake")
				Earthquake(player)
			if(spellselect == "Earth Roar")
				EarthRoar(player)
			if(spellselect == "Super Heal")
				SuperHeal(player)
			if(spellselect == "Engulph")
				Engulph(player)
			if(spellselect == "Ice Blades")
				IceBlades(player)
			else if(spellselect == null)
				Battle(player)

		Defend()
			src.defense *= 2
			src.defend = 1
			usr << "The [src] is defending!"

		Run(mob/blue/player)
			var
				chancerun = src.agility - player.agility + rand(-250,250)
			player << "The [src] starts to flee..."
			sleep(10)
			if(chancerun >> 0)
				player << "The [src] gets away safely!"
				player.islocked = 0
				src.islocked = 0
				player.lib = 0
				player.battle = 0
				src.battle = 0
				player.attack = player.memattack
				player.defense = player.memdefense
				player.intelligence = player.memintelligence
				player.agility = player.memagility
				player.luck = player.memluck
				if(player.attackdoubled == 1)
					player.attackdoubled = 0
				if(player.defensedoubled == 1)
					player.defensedoubled = 0
				if(player.intelligencedoubled == 1)
					player.intelligencedoubled = 0
				if(player.luckdoubled == 1)
					player.luckdoubled = 0
				if(player.agilitydoubled == 1)
					player.agilitydoubled = 0
				player.mem = 0
				del src
			else
				player << "You blocked the [src]!"
				sleep(10)