mob
	proc
		Battle(mob/M)
			world<<"{Battle}- src=[src],usr=[usr],M=[M]"
			if(usr.defend == 1)
				usr.defense /= 2
				usr.defend = 0
			if(usr.mem == 0)
				usr.memattack = usr.attack
				usr.memdefense = usr.defense
				usr.memintelligence = usr.intelligence
				usr.memagility = usr.agility
				usr.memluck = usr.luck
				usr.mem = 1
			usr.lib = 1
			usr.battle = 1
			switch(alert("[M] encountered!  Command?",,"Commence Battle","Defend","Run"))
				if("Commence Battle")
					CommencedBattle(M)
				if("Defend")
					usr.defense *= 2
					usr.defend = 1
					NPCDeathCheck(M)
				if("Run")
					Run(M)

		CommencedBattle(mob/M)
			world<<"{Commenced Battle}- src=[src],usr=[usr],M=[M]"
			switch(alert(usr,"Command?",,"Attack","Spell","Item"))
				if("Attack")
					Attack(M)
				if("Spell")
					Spell(M)
				if("Item")
					Item(M)

		Fire_Slash(mob/M)
			if(M.fs >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(-50,50)
						spelldmg = dmg * M.fs
					M << "<font color = blue><b>You engulf a part of your body in flames and attack!"
					if(src.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>You missed the [src] and almost hit yourself in the head with flames!"
						M.mp -= 100
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>Your flamed body hits the [src] for [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Ice_Slash(mob/M)
			if(M.is >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(-50,50)
						spelldmg = dmg * M.is
					M << "<font color = blue><b>You freeze a part of your body in ice and attack!"
					if(src.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>You missed the [src] and almost completly froze yourself!"
						M.mp -= 100
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>Your frozen body hits the [src] for [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Thunder_Slash(mob/M)
			if(M.ts >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(-50,50)
						spelldmg = dmg * M.ts
					M << "<font color = blue><b>You electrocute a part of your body and attack!"
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>You missed the [src] and almost completly electrocuted yourself!"
						M.mp -= 100
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>Your electrocuted body hits the [src] for [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Wind_Slash(mob/M)
			if(M.ws >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(-50,50)
						spelldmg = dmg * M.ws
					M << "<font color = blue><b>You engulf in winds a part of your body and attack!"
					if(src.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>You missed the [src] and almost completly blew yourself away!"
						M.mp -= 100
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>Your winded body hits the [src] for [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Earth_Slash(mob/M)
			if(M.es >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(-50,50)
						spelldmg = dmg * M.es
					M << "<font color = blue><b>You stone a part of your body and attack!"
					if(src.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>You missed the [src] and almost completly stoned yourself!"
						M.mp -= 100
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>Your stoned body hits the [src] for [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Power_Slash(mob/M)
			if(M.powerslash >> 0)
				if(M.mp >= 50)
					var
						dmg = M.attack - src.defense + rand(-5,5)
						powerslashdmg = dmg * 3
						powerslashhit = powerslash + rand(-10,10)
					M << "<font color = blue><b>You unleash a Power Slash!"
					M << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						M << "<font color = blue><b>You missed!"
						M.mp -= 50
						NPCDeathCheck(M)
					else
						if(powerslashhit >= 3)
							M << "<font color = blue><b>You hit the [src] for [powerslashdmg]!"
							src.hp -= powerslashdmg
							M.mp -= 50
						else
							M << "<font color = blue><b>The Power Slash failed and you only hit the [src] for [dmg]!"
							src.hp -= dmg
							M.mp -= 50
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Rapid_Slash(mob/M)
			if(M.rapidslash >> 0)
				if(M.mp >= 50)
					var
						dmg = M.attack - src.defense + rand(-5,5)
						rapidslashhit = rapidslash + rand(-10,7)
						halfdmg = dmg / 2
					M << "<font color = blue><b>You unleash a Rapid Slash!"
					M << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						M << "<font color = blue><b>You missed!"
						M.mp -= 50
						NPCDeathCheck(M)
					else
						if(rapidslashhit >= 3)
							M << "<font color = blue><b>You hit the [src] for [dmg]!"
							src.hp -= dmg
							sleep(10)
							M << "<font color = blue><b>You hit the [src] for [dmg]!"
							src.hp -= dmg
							sleep(10)
							M << "<font color = blue><b>You hit the [src] for [dmg]!"
							src.hp -= dmg
							sleep(10)
							halfdmg = round(halfdmg)
							M << "<font color = blue><b>You hit the [src] for [halfdmg]!"
							src.hp -= halfdmg
							M.mp -= 50
						else
							M << "<font color = blue><b>The Rapid Slash failed and you only hit the [src] for [dmg]!"
							src.hp -= dmg
							M.mp -= 50
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Multiple_Hit(mob/M)
			if(M.multihit >> 0)
				if(M.mp >= 200)
					var
						dmg = M.attack - src.defense + rand(-5,5)
						multi = (multihit * 5 / 3) * dmg
					M << "<font color = blue><b>You start to slash multiple times!"
					M << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						M << "<font color = blue><b>You missed everytime!"
						M.mp -= 200
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You hit the [src] [multi] times for [dmg]!"
						M.mp -= 200
						src.hp -= dmg
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Money_Slash(mob/M)
			if(M.moneyslash >> 0)
				if(M.mp >= 50)
					var
						dmg = M.attack - src.defense + rand(-5,5)
						moneychance = moneyslash + rand(-10,10)
					M << "<font color = blue><b>You unleash a Money Slash!"
					M << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						M << "<font color = blue><b>You missed!"
						M.mp -= 50
						NPCDeathCheck(M)
					else
						if(moneychance >= 3)
							M << "<font color = blue><b>You hit the [src] for [dmg]!"
							src.hp -= dmg
							M.mp -= 50
							sleep(5)
							M << "<font color = blue><b>Money splaters everywhere!"
							sleep(10)
							M << "<font color = blue><b>You pick up [dmg + rand(-50,50)] of it!"
						else
							M << "<font color = blue><b>The Money Slash failed and you hit the [src] for [dmg]!"
							src.hp -= dmg
							M.mp -= 50
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Attack_Up(mob/M)
			if(M.attup >> 0)
				if(M.mp >= 50)
					var
						attd = M.attup/10 * M.attack
					M << "<font color = blue><b>You summon a burst of attack power!"
					if(M.attackdoubled == 0)
						M << "<font color = blue><b>Your attack increases!"
						attd = round(attd)
						M.attack += attd
						M.attackdoubled = 1
						M.mp -= 50
						NPCDeathCheck(M)
					else if(M.attackdoubled == 1)
						M << "<font color = blue><b>The energy combinding in you suddenly bursts away!"
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Defense_Up(mob/M)
			if(M.defup >> 0)
				if(M.mp >= 50)
					var
						defd = M.defup/10 * M.defense
					M << "<font color = blue><b>You summon a burst of defense power!"
					if(M.defensedoubled == 0)
						M << "<font color = blue><b>Your defense increases!"
						defd = round(defd)
						M.defense += defd
						M.defensedoubled = 1
						M.mp -= 50
						NPCDeathCheck(M)
					else if(M.defensedoubled == 1)
						M << "<font color = blue><b>The energy combinding in you suddenly bursts away!"
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Fire(mob/M)
			if(M.fire >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.fire
					M << "<font color = blue><b>You summon Fire!"
					if(src.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Fire has no affect on [src]!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Fire hits the [src] [M.fire] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Ice(mob/M)
			if(M.ice >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.ice
					M << "<font color = blue><b>You summon Ice!"
					if(src.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Ice has no affect on [src]!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Ice hits the [src] [M.ice] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Thunder(mob/M)
			if(M.thunder >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.thunder
					M << "<font color = blue><b>You summon Thunder!"
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Thunder has no affect on [src]!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Thunder hits the [src] [M.thunder] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Wind(mob/M)
			if(M.wind >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.wind
					M << "<font color = blue><b>You summon Wind!"
					if(src.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Wind has no affect on [src]!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Wind hits the [src] [M.wind] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Earth(mob/M)
			if(M.earth >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.earth
					M << "<font color = blue><b>You summon Earth!"
					if(src.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Earth has no affect on [src]!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Earth hits the [src] [M.earth] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		EFire(mob/M)
			if(M.efire >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.efire * 2)
					M << "<font color = blue><b>You summon Fire!"
					if(src.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Fire has no affect on [src]!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Fire hits the [src] [M.efire] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		EIce(mob/M)
			if(M.eice >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.eice * 2)
					M << "<font color = blue><b>You summon Ice!"
					if(src.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Ice has no affect on [src]!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Ice hits the [src] [M.eice] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		EThunder(mob/M)
			if(M.ethunder >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.ethunder * 2)
					M << "<font color = blue><b>You summon Thunder!"
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Thunder has no affect on [src]!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Thunder hits the [src] [M.ethunder] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		EWind(mob/M)
			if(M.ewind >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.ewind * 2)
					M << "<font color = blue><b>You summon Wind!"
					if(src.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Wind has no affect on [src]!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Wind hits the [src] [M.ewind] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		EEarth(mob/M)
			if(M.eearth >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.eearth * 2)
					M << "<font color = blue><b>You summon Earth!"
					if(src.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Earth has no affect on [src]!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Earth hits the [src] [M.earth] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Double_Hit(mob/M)
			if(M.doublehit >> 0)
				if(M.mp >= 50)
					var
						dmg = M.attack - src.defense + rand(-5,5)
						doublehitchance = doublehit + rand(-10,7)
						dmgm = dmg * 3 / 2
					M << "<font color = blue><b>You unleash a Double Hit!"
					M << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						M << "<font color = blue><b>You missed!"
						M.mp -= 30
						NPCDeathCheck(M)
					else
						if(doublehitchance >> 0)
							dmgm = round(dmgm)
							M << "<font color = blue><b>You hit the [src] for [dmgm]!"
							src.hp -= dmgm
							sleep(10)
							M << "<font color = blue><b>You hit the [src] for [dmgm]!"
							src.hp -= dmgm
							M.mp -= 30
							sleep(10)
						else
							M << "<font color = blue><b>The Double Hit failed and you only hit the [src] for [dmg]!"
							src.hp -= dmg
							M.mp -= 30
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Luck_Up(mob/M)
			if(M.lukup >> 0)
				if(M.mp >= 50)
					var
						lukd = M.lukup/10 * M.luck
					M << "<font color = blue><b>You summon a burst of luck!"
					if(M.defensedoubled == 0)
						M << "<font color = blue><b>Your luck increases!"
						lukd = round(lukd)
						M.luck += lukd
						M.luckdoubled = 1
						M.mp -= 50
						NPCDeathCheck(M)
					else if(M.luckdoubled == 1)
						M << "<font color = blue><b>The energy combinding in you suddenly bursts away!"
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Spark(mob/M)
			if(M.spark >> 0)
				if(M.mp >= 60)
					var
						dmg = M.intelligence - src.intelligence + rand(-100,100)
						spelldmg = dmg * M.spark
					M << "<font color = blue><b>You flare a Spark into the air!"
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
						sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Spark has no affect on [src]!"
						M.mp -= 60
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Spark hits the [src] [M.spark] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 60
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Fireworks(mob/M)
			if(M.fworks >> 0)
				if(M.mp >= 300)
					var
						dmg = M.intelligence - src.intelligence + rand(-100,100)
						spelldmg = dmg * (M.fworks * 3)
					M << "<font color = blue><b>You flare Fireworks into the air!"
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
						sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But the Fireworks had no affect on [src]!"
						M.mp -= 300
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Fireworks hits the [src] [M.fworks * 6] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 300
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)


		Agility_Up(mob/M)
			if(M.aglup >> 0)
				if(M.mp >= 50)
					var
						agld = M.aglup/10 * M.agility
					M << "<font color = blue><b>You summon a burst of agility!"
					if(M.defensedoubled == 0)
						M << "<font color = blue><b>Your agility increases!"
						agld = round(agld)
						M.agility += agld
						M.agilitydoubled = 1
						M.mp -= 50
						NPCDeathCheck(M)
					else if(M.agilitydoubled == 1)
						M << "<font color = blue><b>The energy combinding in you suddenly bursts away!"
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Intelligence_Up(mob/M)
			if(M.intup >> 0)
				if(M.mp >= 50)
					var
						intd = M.intup/10 * M.intelligence
					M << "<font color = blue><b>You summon a burst of intelligence!"
					if(M.defensedoubled == 0)
						M << "<font color = blue><b>Your intelligence increases!"
						intd = round(intd)
						M.intelligence += intd
						M.intelligencedoubled = 1
						M.mp -= 50
						NPCDeathCheck(M)
					else if(M.intelligencedoubled == 1)
						M << "<font color = blue><b>The energy combinding in you suddenly bursts away!"
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Steal(mob/M)
			if(M.steal >> 0)
				if(M.mp >= 50)
					var
						stealchance = M.agility - src.agility - src.attack + rand(-10,10)
						stealpower = M.attack - src.attack
						stealgold = stealchance * stealpower
					if(stealchance >> 1000)
						M << "<font color = blue><b>You sneak around to the [src]!"
						sleep(10)
						M << "<font color = blue><b>You steal [stealgold] from the [src]!"
						M.gold += stealgold
						M.mp -= 50
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>While you were sneaking to the [src], it caught you!"
						sleep(10)
						M.mp -= 50
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Healskill(mob/M)
			if(M.heal >> 0)
				if(M.mp >= 50)
					var
						healamount = M.intelligence - src.intelligence + rand(-50,50)
						healrand = healamount * M.heal
					M << "<font color = blue><b>You summon God for healing!"
					sleep(10)
					if(healamount <= 0)
						M << "<font color = blue><b>God does not answer your call!"
						M.mp -= 50
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>God heals you for [healrand]!"
						M.hp += healrand
						M.mp -= 50
						sleep(10)
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Devenom(mob/M)
			if(M.devenom >> 0)
				if(M.mp >= 50)
					if(M.poisoned == 1)
						var
							devenomchance = M.devenom + rand(-10,8)
						M << "<font color = blue><b>You summon God for him to remove your poison!"
						sleep(10)
						if(devenomchance <= 0)
							M << "<font color = blue><b>God does not answer your call."
							M.mp -= 50
							sleep(10)
							NPCDeathCheck(M)
						else
							M << "<font color = blue><b>God comes and removes your poison!"
							M.poisoned = 0
							M.mp -= 50
							sleep(10)
							NPCDeathCheck(M)
					else
						M << "<font color = blue><b>God will not come because you are not poisoned!"
						Battle(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Holy_Bolt(mob/M)
			if(M.holybolt >> 0)
				if(M.mp >= 75)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * M.holybolt
					M << "<font color = blue><b>You call apon God to summon a Holy Bolt on your enemy!!"
					if(src.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But God did not answer your call!"
						M.mp -= 75
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Holy Bolt hit the [src] [M.holybolt] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 75
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Sleeps(mob/M)
			if(M.sleeps >> 0)
				if(M.mp >= 175)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spellch = dmg * M.sleeps
					M << "<font color = blue><b>You call apon God to summon rest on your enemy!!"
					sleep(10)
					if(spellch <= 0)
						M << "<font color = blue><b>But God did not answer your call!"
						M.mp -= 175
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The restful power pulls the [src] to sleep!"
						src.sleep = 1
						sleep(10)
						M.mp -= 175
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Holy_Lightning(mob/M)
			if(M.holylit >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-50,50)
						spelldmg = dmg * (M.holylit * 2)
					M << "<font color = blue><b>You call apon God to summon Holy Lightning on your enemy!!"
					if(src.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					if(src.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>But God did not answer your call!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Holy Lightning hit the [src] [M.holylit] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Holy_Veil(mob/M)
			if(M.holyveil >> 0)
				if(M.mp >= 150)
					var
						dmg = M.intelligence - src.intelligence + rand(-150,150)
						spelldmg = (dmg * 2) * M.holyveil
					M << "<font color = blue><b>You use your everlasting holy power to create a Veil of it!"
					if(src.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>The Veil breaks down at the last second!"
						M.mp -= 150
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Holy Veil hits the [src] [M.holyveil] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 150
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Almighty_Veil(mob/M)
			if(M.alveil >> 0)
				if(M.mp >= 500)
					var
						dmg = M.intelligence - src.intelligence + rand(-1000,1000)
						spelldmg = (dmg * 2) * (M.alveil * 3)
					M << "<font color = blue><b>You use your everlasting holy power to create a Veil of it!"
					if(src.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						M << "<font color = blue><b>The Veil breaks down at the last second!"
						M.mp -= 500
						sleep(10)
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>The Holy Veil hits the [src] [M.alveil] times and does [spelldmg]!"
						src.hp -= spelldmg
						sleep(10)
						M.mp -= 500
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You dont have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Mind_Games(mob/M)
			if(M.mindgames >> 0)
				if(M.mp >= 50)
					var
						chance = M.intelligence - src.intelligence + rand(-50,50)
						mgcw = chance * M.mindgames
					if(mgcw <= 0)
						M << "<font color = blue><b>You play mind games on the [src]!"
						sleep(10)
						M << "<font color = blue><b>But the [src] didn't fall for your trick!"
						sleep(10)
						M.mp -= 50
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You play mind games on the [src]!"
						sleep(10)
						M << "<font color = blue><b>The [src] falls for your trick and is confused!"
						sleep(10)
						M.mp -= 50
						src.mindgamed = 1
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Scare(mob/M)
			if(M.scare >> 0)
				if(M.mp >= 100)
					var
						chance = M.intelligence - src.intelligence + rand(-50,50)
						mgcw = chance * M.scare
					if(mgcw <= 0)
						M << "<font color = blue><b>You try to scare the [src]!"
						sleep(10)
						M << "<font color = blue><b>But the [src] didn't fall for your tactic!"
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You try to scare the [src]!"
						sleep(10)
						M << "<font color = blue><b>The [src] falls for your tactic and is too scared to attack!"
						sleep(10)
						M.mp -= 100
						PlayerDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Spikes(mob/M)
			if(M.sp >> 0)
				if(M.mp >= 100)
					var
						dmg = M.attack - src.defense + rand(120,-120)
						chance = M.intelligence - src.intelligence + rand(-50,50)
						mgcw = chance * M.sp
					if(mgcw <= 0)
						M << "<font color = blue><b>You throw spikes at the [src]!"
						sleep(10)
						M << "<font color = blue><b>But the spikes missed!"
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You throw spikes at the [src]!"
						sleep(10)
						M << "<font color = blue><b>The spikes trap the [src], he gets hit for [dmg] and he can't get out!!"
						sleep(10)
						M.mp -= 100
						PlayerDeathCheck()
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Scary_Eyes(mob/M)
			if(M.seyes >> 0)
				if(M.mp >= 100)
					var
						chance = M.intelligence - src.intelligence + rand(-50,50)
						mgcw = chance * M.seyes
					if(mgcw <= 0)
						M << "<font color = blue><b>You try to scare the [src]!"
						sleep(10)
						M << "<font color = blue><b>But the [src] didn't fall for your scary eyes!"
						sleep(10)
						M.mp -= 100
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You try to scare the [src]!"
						sleep(10)
						M << "<font color = blue><b>The [src] falls for your scary eyes and is too scared to attack!"
						sleep(10)
						M.mp -= 100
						PlayerDeathCheck(M)
				else
					M << "<font color = blue><b>You don't have enouph MP!"
					Battle(M)
			else
				M << "<font color = blue><b>You don't know this skill!"
				Battle(M)

		Spell(mob/M)
			//var/list/choice = M.spelllist.Copy()
			var/choice[0]
			if(isnull(M.spelllist))
				M << "<font color = blue><b>You don't have any spells!"
				Battle(M)
			else if(M.diseased == 1)
				M << "<font color = blue><b>You are too weak to cast spells!"
				Battle(M)
			else if(M.job == "Bladesman")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP","Fire Slash - 100 MP","Ice Slash - 100 MP","Thunder Slash - 100 MP","Wind Slash - 100 MP","Earth Slash - 100 MP")
				if(choose == "Power Slash - 50 MP")
					if(M.powerslash >> 0)
						Power_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Rapid Slash - 50 MP")
					if(M.rapidslash >> 0)
						Rapid_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Money Slash - 50 MP")
					if(M.moneyslash >> 0)
						Money_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Attack Up - 50 MP")
					if(M.attup >> 0)
						Attack_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Defense Up - 50 MP")
					if(M.defup >> 0)
						Defense_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Fire Slash - 100 MP")
					if(M.fs >> 0)
						Fire_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Ice Slash - 100 MP")
					if(M.is >> 0)
						Ice_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Thunder Slash - 100 MP")
					if(M.ts >> 0)
						Thunder_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Earth Slash - 100 MP")
					if(M.es >> 0)
						Earth_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Wind Slash - 100 MP")
					if(M.ws >> 0)
						Wind_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Multicaster")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP","Extreme Fire - 150 MP","Extreme Ice - 150 MP","Extreme Thunder - 150 MP","Extreme Wind - 150 MP","Extreme Earth - 150 MP")
				if(choose == "Fire - 75 MP")
					if(M.fire >> 0)
						Fire(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Ice - 75 MP")
					if(M.ice >> 0)
						Ice(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Thunder - 75 MP")
					if(M.thunder >> 0)
						Thunder(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Wind - 75 MP")
					if(M.wind >> 0)
						Wind(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Earth - 75 MP")
					if(M.earth >> 0)
						Earth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Fire - 150 MP")
					if(M.efire >> 0)
						EFire(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Ice - 150 MP")
					if(M.eice >> 0)
						EIce(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Thunder - 150 MP")
					if(M.ethunder >> 0)
						EThunder(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Wind - 150 MP")
					if(M.ewind >> 0)
						Wind(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Earth - 150 MP")
					if(M.eearth >> 0)
						EEarth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Assassin")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP","Multiple Hit - 200 MP","Scare - 100 MP","Fireworks - 300 MP","Extreme Wind - 150 MP","Spikes - 100 MP")
				if(choose == "Double Hit - 50 MP")
					if(M.doublehit >> 0)
						Double_Hit(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Luck Up - 50 MP")
					if(M.lukup >> 0)
						Luck_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Spark - 60 MP")
					if(M.spark >> 0)
						Spark(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Agility Up - 50 MP")
					if(M.aglup >> 0)
						Agility_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Steal - 50 MP")
					if(M.steal >> 0)
						Steal(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Multiple Hit - 200 MP")
					if(M.multihit >> 0)
						Multiple_Hit(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Scare - 100 MP")
					if(M.scare >> 0)
						Scare(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Fireworks - 300 MP")
					if(M.fworks >> 0)
						Fireworks(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Wind - 150 MP")
					if(M.ewind >> 0)
						EWind(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Spikes - 100 MP")
					if(M.sp >> 0)
						Spikes(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Monk")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP","Scary Eyes - 100 MP","Holy Lightning - 150 MP","Sleep - 100 MP","Extreme Wind - 150 MP")
				if(choose == "Heal - 50 MP")
					if(M.heal >> 0)
						Healskill(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Devenom - 50 MP")
					if(M.devenom >> 0)
						Devenom(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Holy Bolt - 75 MP")
					if(M.holybolt >> 0)
						Holy_Bolt(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Intelligence Up - 50 MP")
					if(M.intup >> 0)
						Intelligence_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Mind Games - 50 MP")
					if(M.mindgames >> 0)
						Mind_Games(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Scary Eyes - 100 MP")
					if(M.seyes >> 0)
						Scary_Eyes(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Holy Lightning - 150 MP")
					if(M.holylit >> 0)
						Holy_Lightning(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Sleep - 100 MP")
					if(M.sleeps >> 0)
						Sleeps(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Wind - 150 MP")
					if(M.ewind >> 0)
						EWind(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Greatener")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP","Fire Slash - 100 MP","Extreme Earth - 150 MP","Scare - 100 MP","Heal - 50 MP","Almighty Veil - 500 MP")
				if(choose == "Power Slash - 50 MP")
					if(M.powerslash >> 0)
						Power_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Earth - 75 MP")
					if(M.earth >> 0)
						Earth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Double Hit - 50 MP")
					if(M.doublehit >> 0)
						Double_Hit(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Mind Games - 50 MP")
					if(M.mindgames >> 0)
						Mind_Games(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Holy Veil - 150 MP")
					if(M.holyveil >> 0)
						Holy_Veil(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Fire Slash - 100 MP")
					if(M.fs >> 0)
						Fire_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Scare - 100 MP")
					if(M.scare >> 0)
						Scare(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Extreme Earth - 150 MP")
					if(M.eearth >> 0)
						EEarth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Heal - 50 MP")
					if(M.heal >> 0)
						Healskill(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Almighty Veil - 500 MP")
					if(M.alveil >> 0)
						Almighty_Veil(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Swordsman")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Rapid Slash - 50 MP","Money Slash - 50 MP","Attack Up - 50 MP","Defense Up - 50 MP")
				if(choose == "Power Slash - 50 MP")
					if(M.powerslash >> 0)
						Power_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Rapid Slash - 50 MP")
					if(M.rapidslash >> 0)
						Rapid_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Money Slash - 50 MP")
					if(M.moneyslash >> 0)
						Money_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Attack Up - 50 MP")
					if(M.attup >> 0)
						Attack_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Defense Up - 50 MP")
					if(M.defup >> 0)
						Defense_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Spellcaster")
				var/choose = input("What spell/skill do you want to use?")in list("Fire - 75 MP","Ice - 75 MP","Thunder - 75 MP","Wind - 75 MP","Earth - 75 MP")
				if(choose == "Fire - 75 MP")
					if(M.fire >> 0)
						Fire(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Ice - 75 MP")
					if(M.ice >> 0)
						Ice(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Thunder - 75 MP")
					if(M.thunder >> 0)
						Thunder(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Wind - 75 MP")
					if(M.wind >> 0)
						Wind(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Earth - 75 MP")
					if(M.earth >> 0)
						Earth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Thief")
				var/choose = input("What spell/skill do you want to use?")in list("Double Hit - 50 MP","Luck Up - 50 MP","Spark - 60 MP","Agility Up - 50 MP","Steal - 50 MP")
				if(choose == "Double Hit - 50 MP")
					if(M.doublehit >> 0)
						Double_Hit(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Luck Up - 50 MP")
					if(M.lukup >> 0)
						Luck_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Spark - 60 MP")
					if(M.spark >> 0)
						Spark(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Agility Up - 50 MP")
					if(M.aglup >> 0)
						Agility_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Steal - 50 MP")
					if(M.steal >> 0)
						Steal(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Priest")
				var/choose = input("What spell/skill do you want to use?")in list("Heal - 50 MP","Devenom - 50 MP","Holy Bolt - 75 MP","Intelligence Up - 50 MP","Mind Games - 50 MP")
				if(choose == "Heal - 50 MP")
					if(M.heal >> 0)
						Healskill(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Devenom - 50 MP")
					if(M.devenom >> 0)
						Devenom(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Holy Bolt - 75 MP")
					if(M.holybolt >> 0)
						Holy_Bolt(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Intelligence Up - 50 MP")
					if(M.intup >> 0)
						Intelligence_Up(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Mind Games - 50 MP")
					if(M.mindgames >> 0)
						Mind_Games(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Equaler")
				var/choose = input("What spell/skill do you want to use?")in list("Power Slash - 50 MP","Earth - 75 MP","Double Hit - 50 MP","Mind Games - 50 MP","Holy Veil - 150 MP")
				if(choose == "Power Slash - 50 MP")
					if(M.powerslash >> 0)
						Power_Slash(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Earth - 75 MP")
					if(M.earth >> 0)
						Earth(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Double Hit - 50 MP")
					if(M.doublehit >> 0)
						Double_Hit(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Mind Games - 50 MP")
					if(M.mindgames >> 0)
						Mind_Games(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
				if(choose == "Holy Veil - 150 MP")
					if(M.holyveil >> 0)
						Holy_Veil(M)
					else
						M << "<font color = blue><b>You don't know this skill!"
						Battle(M)
			else if(M.job == "Beginner")
				if(M.spelllist.Find("Blaze"))
					choice.Add("Blaze - 2 MP")
				if(M.spelllist.Find("Heal"))
					choice.Add("Heal - 4 MP")
				if(M.spelllist.Find("Firebal"))
					choice.Add("Firebal - 4 MP")
				if(M.spelllist.Find("Icebolt"))
					choice.Add("Icebolt - 6 MP")
				if(M.spelllist.Find("Bolt"))
					choice.Add("Bolt - 8 MP")
				if(M.spelllist.Find("Sleep"))
					choice.Add("Sleep - 5 MP")
				if(M.spelllist.Find("Boltmore"))
					choice.Add("Boltmore - 12 MP")
				if(M.spelllist.Find("Blazemore"))
					choice.Add("Blazemore - 14 MP")
				if(M.spelllist.Find("Firebane"))
					choice.Add("Firebane - 18 MP")
				if(M.spelllist.Find("Snowstorm"))
					choice.Add("Snowstorm - 22 MP")
				if(M.spelllist.Find("Healmore"))
					choice.Add("Healmore - 10 MP")
				if(M.spelllist.Find("Boltmost"))
					choice.Add("Boltmost - 28 MP")
				if(M.spelllist.Find("Blazemost"))
					choice.Add("Blazemost - 30 MP")
				if(M.spelllist.Find("Firebolt"))
					choice.Add("Firebolt - 36 MP")
				if(M.spelllist.Find("Sleepmore"))
					choice.Add("Sleepmore - 12 MP")
				if(M.spelllist.Find("Blizzard"))
					choice.Add("Blizzard - 44 MP")
				if(M.spelllist.Find("Healmost"))
					choice.Add("Healmost - 22 MP")
				if(M.spelllist.Find("Zap"))
					choice.Add("Zap - 48 MP")
				if(M.spelllist.Find("Extreme Blaze"))
					choice.Add("Extreme Blaze - 58 MP")
				if(M.spelllist.Find("Firevolt"))
					choice.Add("Firevolt - 64 MP")
				if(M.spelllist.Find("Sleepmost"))
					choice.Add("Sleepmost - 18 MP")
				if(M.spelllist.Find("Blizmore"))
					choice.Add("Blizmore - 70 MP")
				if(M.spelllist.Find("Healall"))
					choice.Add("Healall - 30 MP")
				if(M.spelllist.Find("Zapmore"))
					choice.Add("Zapmore - 74 MP")
				if(M.spelllist.Find("Extreme Blazemore"))
					choice.Add("Extreme Blazemore - 78 MP")
				if(M.spelllist.Find("Fireroar"))
					choice.Add("Fireroar - 86 MP")
				if(M.spelllist.Find("Blizmost"))
					choice.Add("Blizmost - 90 MP")
				if(M.spelllist.Find("Zapmost"))
					choice.Add("Zapmost - 96 MP")
				if(M.spelllist.Find("Extreme Blazemost"))
					choice.Add("Extreme Blazemost - 102 MP")
				if(M.spelllist.Find("Firesoar"))
					choice.Add("Firesoar - 106 MP")
				if(M.spelllist.Find("Master Blizzard"))
					choice.Add("Master Blizzard - 112 MP")
				if(M.spelllist.Find("Thordain"))
					choice.Add("Thordain - 120 MP")
				if(M.spelllist.Find("Death Blaze"))
					choice.Add("Death Blaze - 132 MP")
				if(M.spelllist.Find("Firerage"))
					choice.Add("Firerage - 150 MP")
				if(M.spelllist.Find("Death Icebolt"))
					choice.Add("Death Icebolt - 166 MP")
				if(M.spelllist.Find("Thordainmore"))
					choice.Add("Thordainmore - 174 MP")
				if(M.spelllist.Find("Death Blazemore"))
					choice.Add("Death Blazemore - 186 MP")
				if(M.spelllist.Find("Fireplow"))
					choice.Add("Fireplow - 200 MP")
				if(M.spelllist.Find("Death Snowstorm"))
					choice.Add("Death Snowstorm - 208 MP")
				if(M.spelllist.Find("Thordainmost"))
					choice.Add("Thordainmost - 220 MP")
				if(M.spelllist.Find("Death Blazemost"))
					choice.Add("Death Blazemost - 232 MP")
				if(M.spelllist.Find("Firestreak"))
					choice.Add("Firestreak - 250 MP")
				if(M.spelllist.Find("Death Blizzard"))
					choice.Add("Death Blizzard - 264 MP")
				choice += "Cancel"
				choice.Remove(M.name)
				var/choose = input("What spell do you wish to cast?","Spells") in choice
				if(choose == "Blaze - 2 MP")
					Blaze(M)
				if(choose == "Heal - 4 MP")
					Heal(M)
				if(choose == "Firebal - 4 MP")
					Firebal(M)
				if(choose == "Icebolt - 6 MP")
					Icebolt(M)
				if(choose == "Bolt - 8 MP")
					Bolt(M)
				if(choose == "Sleep - 5 MP")
					Sleep(M)
				if(choose == "Boltmore - 12 MP")
					Boltmore(M)
				if(choose == "Blazemore - 14 MP")
					Blazemore(M)
				if(choose == "Firebane - 18 MP")
					Firebane(M)
				if(choose == "Snowstorm - 22 MP")
					Snowstorm(M)
				if(choose == "Healmore - 10 MP")
					Healmore(M)
				if(choose == "Boltmost - 28 MP")
					Boltmost(M)
				if(choose == "Blazemost - 30 MP")
					Blazemost(M)
				if(choose == "Firebolt - 36 MP")
					Firebolt(M)
				if(choose == "Sleepmore - 12 MP")
					Sleepmore(M)
				if(choose == "Blizzard - 44 MP")
					Blizzard(M)
				if(choose == "Healmost - 22 MP")
					Healmost(M)
				if(choose == "Zap - 48 MP")
					Zap(M)
				if(choose == "Extreme Blaze - 58 MP")
					Extreme_Blaze(M)
				if(choose == "Firevolt - 64 MP")
					Firevolt(M)
				if(choose == "Sleepmost - 18 MP")
					Sleepmost(M)
				if(choose == "Blizmore - 70 MP")
					Blizmore(M)
				if(choose == "Healall - 30 MP")
					Healall(M)
				if(choose == "Zapmore - 74 MP")
					Zapmore(M)
				if(choose == "Extreme Blazemore - 78 MP")
					Extreme_Blazemore(M)
				if(choose == "Fireroar - 86 MP")
					Fireroar(M)
				if(choose == "Blizmost - 90 MP")
					Blizmost(M)
				if(choose == "Zapmost - 96 MP")
					Zapmost(M)
				if(choose == "Extreme Blazemost - 102 MP")
					Extreme_Blazemost(M)
				if(choose == "Firesoar - 106 MP")
					Firesoar(M)
				if(choose == "Master Blizzard - 112 MP")
					Master_Blizzard(M)
				if(choose == "Thordain - 120 MP")
					Thordain(M)
				if(choose == "Death Blaze - 132 MP")
					Death_Blaze(M)
				if(choose == "Firerage - 150 MP")
					Firerage(M)
				if(choose == "Death Icebolt - 166 MP")
					Death_Icebolt(M)
				if(choose == "Thordainmore - 174 MP")
					Thordainmore(M)
				if(choose == "Death Blazemore - 186 MP")
					Death_Blazemore(M)
				if(choose == "Fireplow - 200 MP")
					Fireplow(M)
				if(choose == "Death Snowstorm- 208 MP")
					Death_Snowstorm(M)
				if(choose == "Thordainmost - 220 MP")
					Thordainmost(M)
				if(choose == "Death Blazemost - 232 MP")
					Death_Blazemost(M)
				if(choose == "Firestreak - 250 MP")
					Firestreak(M)
				if(choose == "Death Blizzard- 264 MP")
					Death_Blizzard(M)
				if(choose == "Cancel")
					Battle(M)

		Blaze(mob/M)
			if(M.mp >= 2)
				var
					spelldamage = rand(4,10) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blaze!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 2
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 2
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Blazemore(mob/M)
			if(M.mp >= 14)
				var
					spelldamage = rand(30,50) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blazemore!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 14
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 14
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Blazemost(mob/M)
			if(M.mp >= 30)
				var
					spelldamage = rand(90,125) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blazemost!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 30
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 30
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Extreme_Blaze(mob/M)
			if(M.mp >= 58)
				var
					spelldamage = rand(250,500) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Extreme Blaze!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 58
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 58
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Extreme_Blazemore(mob/M)
			if(M.mp >= 78)
				var
					spelldamage = rand(500,900) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Extreme Blazemore!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 78
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 78
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Extreme_Blazemost(mob/M)
			if(M.mp >= 102)
				var
					spelldamage = rand(850,1700) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Extreme Blazemost!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 102
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 102
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Blaze(mob/M)
			if(M.mp >= 132)
				var
					spelldamage = rand(1400,2800) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Death Blaze!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 132
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 132
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Blazemore(mob/M)
			if(M.mp >= 186)
				var
					spelldamage = rand(2200,4400) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Death Blazemore!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 186
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 186
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Blazemost(mob/M)
			if(M.mp >= 232)
				var
					spelldamage = rand(3000,6000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Death Blazemost!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 232
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 232
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firebal(mob/M)
			if(M.mp >= 4)
				var
					spelldamage = rand(6,12) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firebal!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 4
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 4
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firebane(mob/M)
			if(M.mp >= 18)
				var
					spelldamage = rand(40,55) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firebane!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 18
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 18
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firebolt(mob/M)
			if(M.mp >= 36)
				var
					spelldamage = rand(100,150) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firebolt!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 36
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 36
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firevolt(mob/M)
			if(M.mp >= 64)
				var
					spelldamage = rand(280,550) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firevolt!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 64
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 64
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Fireroar(mob/M)
			if(M.mp >= 86)
				var
					spelldamage = rand(550,1000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Fireroar!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 86
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 86
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firesoar(mob/M)
			if(M.mp >= 106)
				var
					spelldamage = rand(1000,2000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firesoar!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 106
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 106
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firerage(mob/M)
			if(M.mp >= 150)
				var
					spelldamage = rand(1750,3500) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firerage!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 150
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 150
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Fireplow(mob/M)
			if(M.mp >= 200)
				var
					spelldamage = rand(2500,5000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Fireplow!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 200
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 200
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Firestreak(mob/M)
			if(M.mp >= 250)
				var
					spelldamage = rand(3400,6800) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Firestreak!"
				M << 'spell.wav'
				if(src.weakfire == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 250
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 250
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Icebolt(mob/M)
			if(M.mp >= 6)
				var
					spelldamage = rand(14,24) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Icebolt!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 6
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 6
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Snowstorm(mob/M)
			if(M.mp >= 22)
				var
					spelldamage = rand(50,70) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Snowstorm!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 22
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 22
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Blizzard(mob/M)
			if(M.mp >= 44)
				var
					spelldamage = rand(120,200) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blizzard!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 44
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 44
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Blizmore(mob/M)
			if(M.mp >= 70)
				var
					spelldamage = rand(360,700) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blizmore!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 70
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 70
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Blizmost(mob/M)
			if(M.mp >= 90)
				var
					spelldamage = rand(600,1100) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Blizmost!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 90
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 90
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Master_Blizzard(mob/M)
			if(M.mp >= 112)
				var
					spelldamage = rand(1100,2200) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Master Blizzard!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 112
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 112
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Icebolt(mob/M)
			if(M.mp >= 166)
				var
					spelldamage = rand(1900,3800) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Death Icebolt!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 166
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 166
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Snowstorm(mob/M)
			if(M.mp >= 208)
				var
					spelldamage = rand(2750,5500) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Snowstorm!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 208
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 208
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Death_Blizzard(mob/M)
			if(M.mp >= 264)
				var
					spelldamage = rand(3750,7500) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Death Blizzard!"
				M << 'spell.wav'
				if(src.weakice == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 264
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 264
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Bolt(mob/M)
			if(M.mp >= 8)
				var
					spelldamage = rand(20,30) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Bolt!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 8
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 8
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Boltmore(mob/M)
			if(M.mp >= 12)
				var
					spelldamage = rand(26,40) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Boltmore!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 12
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 12
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Boltmost(mob/M)
			if(M.mp >= 28)
				var
					spelldamage = rand(80,110) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Boltmost!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 28
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 28
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Zap(mob/M)
			if(M.mp >= 48)
				var
					spelldamage = rand(150,220) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Zap!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 48
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 48
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Zapmore(mob/M)
			if(M.mp >= 74)
				var
					spelldamage = rand(400,750) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Zapmore!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 74
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 74
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Zapmost(mob/M)
			if(M.mp >= 96)
				var
					spelldamage = rand(700,1400) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Zapmost!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 96
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 96
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Thordain(mob/M)
			if(M.mp >= 120)
				var
					spelldamage = rand(1250,2500) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Thordain!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 120
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 120
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Thordainmore(mob/M)
			if(M.mp >= 174)
				var
					spelldamage = rand(2000,4000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Thordainmore!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 174
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 174
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Thordainmost(mob/M)
			if(M.mp >= 220)
				var
					spelldamage = rand(3000,6000) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Thordainmost!"
				M << 'spell.wav'
				if(src.weakthunder == 1)
					spelldamage *= 3
					spelldamage /= 2
					spelldamage = round(spelldamage)
				sleep(10)
				if(spelldamage <= 0)
					M << "<font color = blue><b>The [src] was unaffected!"
					M.mp -= 220
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The spell hits the [src] for [spelldamage] damage!"
					M << 'hit.wav'
					src.hp -= spelldamage
					M.mp -= 220
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Sleep(mob/M)
			if(M.mp >= 5)
				var
					sleepchance = rand(-5,5) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Sleep!"
				M << 'spell.wav'
				sleep(10)
				if(sleepchance >> 120)
					M << "<font color = blue><b>The [src] falls asleep!"
					src.sleep = 1
					M.mp -= 5
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The [src] is unaffected!"
					M.mp -= 5
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Sleepmore(mob/M)
			if(M.mp >= 12)
				var
					sleepchance = rand(-3,10) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Sleepmore!"
				M << 'spell.wav'
				sleep(10)
				if(sleepchance >> 100)
					M << "<font color = blue><b>The [src] falls asleep!"
					src.sleep = 1
					M.mp -= 12
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The [src] is unaffected!"
					M.mp -= 12
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Sleepmost(mob/M)
			if(M.mp >= 18)
				var
					sleepchance = rand(-1,20) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Sleepmost!"
				M << 'spell.wav'
				sleep(10)
				if(sleepchance >> 90)
					M << "<font color = blue><b>The [src] falls asleep!"
					src.sleep = 1
					M.mp -= 18
					NPCDeathCheck(M)
				else
					M << "<font color = blue><b>The [src] is unaffected!"
					M.mp -= 18
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Heal(mob/M)
			if(M.mp >= 4)
				var
					healed = rand(0,20) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Heal!"
				M << 'spell.wav'
				sleep(10)
				if(healed >= 0)
					M.hp += healed
					if(M.hp >= M.maxhp)
						M.hp = M.maxhp
						M << "<font color = blue><b>You are fully healed!"
						M.mp -= 4
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You are healed for [healed] HP!"
						M.mp -= 4
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You are unaffected!"
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Healmore(mob/M)
			if(M.mp >= 10)
				var
					healed = rand(30,60) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Healmore!"
				M << 'spell.wav'
				sleep(10)
				if(healed >= 0)
					M.hp += healed
					if(M.hp >= M.maxhp)
						M.hp = M.maxhp
						M << "<font color = blue><b>You are fully healed!"
						M.mp -= 10
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You are healed for [healed] HP!"
						M.mp -= 10
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You are unaffected!"
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Healmost(mob/M)
			if(M.mp >= 22)
				var
					healed = rand(80,120) + M.intelligence - src.intelligence
				M << "<font color = blue><b>You cast Healmost!"
				M << 'spell.wav'
				sleep(10)
				if(healed >= 0)
					M.hp += healed
					if(M.hp >= M.maxhp)
						M.hp = M.maxhp
						M << "<font color = blue><b>You are fully healed!"
						M.mp -= 22
						NPCDeathCheck(M)
					else
						M << "<font color = blue><b>You are healed for [healed] HP!"
						M.mp -= 22
						NPCDeathCheck(M)
				else
					M << "<font color = blue><b>You are unaffected!"
					NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)
		Healall(mob/M)
			if(M.mp >= 30)
				M << "<font color = blue><b>You cast Healall!"
				M << 'spell.wav'
				sleep(10)
				M << "<font color = blue><b>You are fully healed!"
				M.mp -= 30
				M.hp = M.maxhp
				NPCDeathCheck(M)
			else
				M << "<font color = blue><b>You don't have enouph MP!"
				Battle(M)

		Item(mob/M)
			var/list/owitems = new(M)
			var/tempval
			var/useitem
			for(var/x in M.contents)
				owitems += x
			owitems += "Cancel"
			if (owitems.len == 1)
				M << "You don't have any items."
				Battle(M)
			else
				var/useordrop = input("Would you like to use an item") in list("Use","Cancel")
				switch(useordrop)
					if("Cancel")
						Battle(M)
					if("Use")
						useitem = input("Which item would you like to use?") in owitems
						if(useitem == "Cancel")
							Battle(M)
						else if(istype(useitem,/obj/NormalItems/Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							M.hp += tempval
							M << "<font color = blue><b>You were healed for [tempval] HP."
							if(M.hp >= M.maxhp)
								M.hp = M.maxhp
								NPCDeathCheck(M)
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Magic_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(10,30)
							M.mp += tempval
							M << "<font color = blue><b>You restored [tempval] MP."
							if(M.mp >= M.maxmp)
								M.mp = M.maxmp
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Large_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(50,100)
							M.hp += tempval
							M << "<font color = blue><b>You were healed for [tempval] HP."
							if(M.hp >= M.maxhp)
								M.hp = M.maxhp
								NPCDeathCheck(M)
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Large_Magic_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(40,80)
							M.mp += tempval
							M << "<font color = blue><b>You restored [tempval] MP."
							if(M.mp >= M.maxmp)
								M.mp = M.maxmp
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Huge_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(150,300)
							M.hp += tempval
							M << "<font color = blue><b>You were healed for [tempval] HP."
							if(M.hp >= M.maxhp)
								M.hp = M.maxhp
								NPCDeathCheck(M)
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Huge_Magic_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(100,200)
							M.mp += tempval
							M << "<font color = blue><b>You restored [tempval] MP."
							if(M.mp >= M.maxmp)
								M.mp = M.maxmp
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Perfect_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							M << "<font color = blue><b>Your HP is fully restored!"
							M.hp = M.maxhp
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Perfect_Magic_Herb))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							M << "<font color = blue><b>Your MP is fully restored!"
							M.mp = M.maxmp
							del(useitem)
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Lunch))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							tempval = rand(15,25)
							M.hp += tempval
							M << "<font color = blue><b>You were healed for [tempval] HP."
							if(M.hp >= M.maxhp)
								M.hp = M.maxhp
							del(useitem)
							M.lunch = 0
							NPCDeathCheck(M)
						else if(istype(useitem,/obj/NormalItems/Antidote))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(M.poisoned == 1)
								M << "<font color = blue><b>The poison leaves your body!"
								M.poisoned = 0
								del(useitem)
								NPCDeathCheck(M)
							else
								M << "<font color = blue><b>You're not poisoned!"
								Battle(M)
						else if(istype(useitem,/obj/NormalItems/Disease_Nuller))
							M << "<font color = blue><b>You use the [useitem]!"
							sleep(10)
							if(M.diseased == 1)
								M << "<font color = blue><b>The disease in your body has been nullifed!"
								M.diseased = 0
								del(useitem)
								NPCDeathCheck(M)
							else
								M << "<font color = blue><b>You're not diseased!"
								Battle(M)
						else
							M << "<font color = blue><b>This item is not to be used in combat!"
							Battle(M)
		FirstAttack(mob/M)
			if(M.agility >> src.agility)
				Attack(M)
			else if(src.agility >> M.agility)
				NPCAttack(M)
		Attack(mob/M)
			world<<"{Attack}- src=[src],usr=[usr],M=[M]"
			var
				chancetohit = rand(0,10)
				damage = (usr.attack - M.defense) + rand(-5,5)
				luckchance = rand(0,19)
				hitchance = rand(0,3)
				critdamage = damage * 3 - rand(-10,10)
			if(chancetohit == 5)
				usr << "<b><font color = blue>You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "<b><font color = blue>You missed!"
				usr << 'dodge.wav'
				sleep(10)
				NPCDeathCheck(M)
			else if(damage <= 0)
				usr << "<b><font color = blue>You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				if(hitchance == 1)
					usr << "<b><font color = blue>You barely hit the [src] damaging it for 1 HP!"
					usr << 'hit.wav'
					M.hp -= 1
				else
					usr << "<b><font color = blue>The [src] dodges the attack!"
					usr << 'dodge.wav'
				sleep(10)
				NPCDeathCheck(M)
			else if(luckchance == 10)
				usr << "<b><font color = blue>You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "<b><font color = blue>Critical hit!"
				usr << 'criticalhit.wav'
				sleep(10)
				if(chancetohit == 5)
					usr << "<b><font color = blue>You miss!"
					usr << 'dodge.wav'
					sleep(10)
					NPCDeathCheck(M)
				else if(critdamage <= 0)
					usr << "<b><font color = blue>The [src] dodges your attack!"
					usr << 'dodge.wav'
					sleep(10)
					NPCDeathCheck(M)
				else
					usr << "<b><font color = blue>You hit the [src] for [critdamage] HP!"
					usr << 'hit.wav'
					M.hp -= critdamage
					sleep(10)
					NPCDeathCheck(M)
			else
				usr << "<b><font color = blue>You attack the [src]!"
				usr << 'attack.wav'
				sleep(10)
				usr << "<b><font color = blue>You hit the [src] for [damage] HP!"
				usr << 'hit.wav'
				M.hp -= damage
				sleep(10)
				NPCDeathCheck(M)
  NPCDeathCheck(mob/M)
   world<<"{NPC DeathCheck}- src=[src],usr=[usr],M=[M]"
   //if(client)
   if(src.hp <= 0)
    M << "<font color = blue><b>You have killed the [src]!"
    M << 'winbattle.wav'
    M << "<font color = blue><b>You recieve [src.expreward] exp and [src.gold] Gold!"
    if(src.jobexpreward >= 1)
     M << "<font color = blue><b>You recieve [src.jobexpreward] job exp!"
     M.jobexp += jobexpreward
    M.attack = M.memattack
    M.defense = M.memdefense
    M.intelligence = M.memintelligence
    M.agility = M.memagility
    M.luck = M.memluck
    if(M.attackdoubled == 1)
     M.attackdoubled = 0
    if(M.defensedoubled == 1)
     M.defensedoubled = 0
    if(M.intelligencedoubled == 1)
     M.intelligencedoubled = 0
    if(M.luckdoubled == 1)
     M.luckdoubled = 0
    if(M.agilitydoubled == 1)
     M.agilitydoubled = 0
    M.exp += src.expreward
    M.gold += src.gold
    M.islocked = 0
    M.battle = 0
    M.lib = 0
    checkjoblevel(M)
    checklevel(M)
    M.mem = 0
    if(M.boss1 == 1)
     M.boss1 = 0
     M.boss1defeated = 1
     M.loc = locate(16,9,1)
    del src
   else
    NPCAttack(M)
  // else
  // 	PlayerDeathCheck(M)
  //checklevel(M)
  NPCAttack(mob/M)
   world<<"{NPC Attack}- src=[src],usr=[usr],M=[M]"
   var
    damage = (src.attack - M.defense) + rand(-3,3)
    chancetohit = rand(0,4)
    luckchance = rand(0,19)
    hitchance = rand(0,3)
    critdamage = damage * 3 - rand(-10,10)
    poisonchance = rand(0,10)
    diseasechance = rand(0,10)
    wakechance = rand(1,5)
    uncchance = rand(1,5)
   if(src.sleep == 1)
    M << "<font color = blue><b>The [src] is sleeping!"
    sleep(10)
    if(wakechance == 3)
     M << "<font color = blue><b>The [src] awakens!"
     src.sleep = 0
     PlayerDeathCheck(M)
    else
     PlayerDeathCheck(M)
   if(src.mindgamed == 1)
    M << "<font color = blue><b>The [src] is confused and doesn't know what to do!"
    sleep(10)
    if(uncchance == 3)
     M << "<font color = blue><b>The [src] gets a hold of himself!"
     src.mindgamed = 0
     PlayerDeathCheck(M)
    else
     PlayerDeathCheck(M)
   else
    if(chancetohit == 4)
     M << "<b><font color = blue>The [src] attacks!"
     M << 'enemyattack.wav'
     sleep(10)
     M << "<b><font color = blue>The [src] misses!"
     M << 'dodge.wav'
     sleep(10)
     PlayerDeathCheck(M)
    else if(damage <= 0)
     M << "<b><font color = blue>The [src] attacks!"
     M << 'enemyattack.wav'
     sleep(10)
     if(hitchance == 1)
      M << "<b><font color = blue>The [src] barely hits you and you recieve 1 HP of damage!"
      M << 'hit.wav'
      M.hp -= 1
      if(src.poisondamage == 1)
       if(poisonchance == 5)
        M << "<b><font color = blue>You have been poisoned!"
        M.poisoned = 1
      if(src.disease == 1)
       if(diseasechance == 5)
        M << "<b><font color = blue>You have been diseased!"
        M.diseased = 1
     else
      M << "<b><font color = blue>You dodge the attack!"
      M << 'dodge.wav'
     sleep(10)
     PlayerDeathCheck(M)
    else if(luckchance == 10)
     M << "<b><font color = blue>The [src] attacks!"
     M << 'enemyattack.wav'
     sleep(10)
     M << "<b><font color = blue>Critical hit!"
     M << 'criticalhit.wav'
     sleep(10)
     if(chancetohit == 4)
      M << "<b><font color = blue>The [src] misses!"
      M << 'dodge.wav'
      sleep(10)
      PlayerDeathCheck(M)
     else if(critdamage <= 0)
      M << "<b><font color = blue>You barely dodge [src]'s attack!"
      M << 'dodge.wav'
      sleep(10)
      NPCDeathCheck(M)
     else
      M << "<b><font color = blue>The [src] hits you for [critdamage] HP!"
      M << 'hit.wav'
      M.hp -= critdamage
      if(src.poisondamage == 1)
       if(poisonchance == 5)
        M << "<b><font color = blue>You have been poisoned!"
        M.poisoned = 1
      if(src.disease == 1)
       if(diseasechance == 5)
        M << "<b><font color = blue>You have been diseased!"
        M.diseased = 1
      sleep(10)
      PlayerDeathCheck(M)
    else
     M << "<b><font color = blue>The [src] attacks!"
     M << 'enemyattack.wav'
     sleep(10)
     M << "<b><font color = blue>The [src] hits you for [damage] HP!"
     M << 'hit.wav'
     M.hp -= damage
     if(src.poisondamage == 1)
      if(poisonchance == 5)
       M << "<b><font color = blue>You have been poisoned!"
       M.poisoned = 1
     if(src.disease == 1)
      if(diseasechance == 5)
       M << "<b><font color = blue>You have been diseased!"
       M.diseased = 1
     sleep(10)
     PlayerDeathCheck(M)
		PlayerDeathCheck(mob/M)
			world<<"{Player DeathCheck}- src=[src],usr=[usr],M=[M]"
			if(M.poisoned == 1)
				var
					poisond = M.maxhp/20
				M << "<b><font color = blue>You lose HP due to poison!"
				M.hp -= poisond
				M.hp = round(M.hp)
				if(M.hp <= 0)
					M << "<b><font color = blue>You died!  The [src] runs away with half your gold!"
					M.gold/=2
					M.gold = round(M.gold)
					M.islocked = 0
					M.hp = M.maxhp
					M.lefttown = 0
					M.battle = 0
					M.lib = 0
					M.poisoned = 0
					M.x = M.innx
					M.y = M.inny
					M.z = M.innz
					M.attack = M.memattack
					M.defense = M.memdefense
					M.intelligence = M.memintelligence
					M.agility = M.memagility
					M.luck = M.memluck
					if(M.attackdoubled == 1)
						M.attackdoubled = 0
					if(M.defensedoubled == 1)
						M.defensedoubled = 0
					if(M.intelligencedoubled == 1)
						M.intelligencedoubled = 0
					if(M.luckdoubled == 1)
						M.luckdoubled = 0
					if(M.agilitydoubled == 1)
						M.agilitydoubled = 0
					M.mem = 0
					del src
				else
					Battle(M)
			else
				if(M.hp <= 0)
					M << "<b><font color = blue>You died!  The [src] runs away with half your gold!"
					M.gold/=2
					M.gold = round(M.gold)
					M.islocked = 0
					M.hp = M.maxhp
					M.lefttown = 0
					M.battle = 0
					M.lib = 0
					M.x = M.innx
					M.y = M.inny
					M.z = M.innz
					M.attack = M.memattack
					M.defense = M.memdefense
					M.intelligence = M.memintelligence
					M.agility = M.memagility
					M.luck = M.memluck
					if(M.attackdoubled == 1)
						M.attackdoubled = 0
					if(M.defensedoubled == 1)
						M.defensedoubled = 0
					if(M.intelligencedoubled == 1)
						M.intelligencedoubled = 0
					if(M.luckdoubled == 1)
						M.luckdoubled = 0
					if(M.agilitydoubled == 1)
						M.agilitydoubled = 0
					del src
					M.mem = 0
				else
					Battle(M)
  Run(mob/M)
   world<<"{Run}- src=[src],usr=[usr],M=[M]"
   chancetorun = M.agility - src.agility + rand(-20,20)
   if(M.diseased == 1)
   	M << "<font color = blue><b>You are too weak to run!"
   	Battle(M)
   if(chancetorun >> 0)
    M << "<b><font color = blue>You start to flee..."
    sleep(10)
    M << "<b><font color = blue>You successfully run away!"
    M.islocked = 0
    src.islocked = 0
    M.lib = 0
    M.battle = 0
    M.attack = M.memattack
    M.defense = M.memdefense
    M.intelligence = M.memintelligence
    M.agility = M.memagility
    M.luck = M.memluck
    if(M.attackdoubled == 1)
     M.attackdoubled = 0
    if(M.defensedoubled == 1)
     M.defensedoubled = 0
    if(M.intelligencedoubled == 1)
     M.intelligencedoubled = 0
    if(M.luckdoubled == 1)
     M.luckdoubled = 0
    if(M.agilitydoubled == 1)
     M.agilitydoubled = 0
   	M.mem = 0
   else
    M << "<b><font color = blue>You start to flee..."
    sleep(10)
    M << "<b><font color = blue>The enemy cuts off your escape route!"
    NPCDeathCheck(M)