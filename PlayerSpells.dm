mob
	proc
		Double_Fire_Slash(mob/enemy)
			if(usr.dfs >> 0)
				if(usr.mp >= 2500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * 2 * usr.dfs
					usr << "<font color = blue><b>You engulf a part of your body in flames and attack!"
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost hit yourself in the head with flames!"
						usr.mp -= 2500
						sleep(10)
					else
						usr << "<font color = blue><b>Your flamed body hits the [enemy] for [spelldmg/2] twice!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 2500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Double_Ice_Slash(mob/enemy)
			if(usr.dis >> 0)
				if(usr.mp >= 2500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * 2 * usr.dis
					usr << "<font color = blue><b>You freeze a part of your body in ice and attack!"
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly froze yourself!"
						usr.mp -= 2500
						sleep(10)
					else
						usr << "<font color = blue><b>Your frozen body hits the [enemy] for [spelldmg/2] twice!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 2500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Double_Thunder_Slash(mob/enemy)
			if(usr.dts >> 0)
				if(usr.mp >= 2500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * 2 * usr.dts
					usr << "<font color = blue><b>You electrocute a part of your body and attack!"
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly electrocuted yourself!"
						usr.mp -= 2500
						sleep(10)
					else
						usr << "<font color = blue><b>Your electrocuted body hits the [enemy] for [spelldmg/2] twice!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 2500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Double_Wind_Slash(mob/enemy)
			if(usr.dws >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * 2 * usr.dws
					usr << "<font color = blue><b>You engulf in winds a part of your body and attack!"
					if(enemy.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly blew yourself away!"
						usr.mp -= 2500
						sleep(10)
					else
						usr << "<font color = blue><b>Your winded body hits the [enemy] for [spelldmg/2] twice!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 2500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Double_Earth_Slash(mob/enemy)
			if(usr.des >> 0)
				if(usr.mp >= 2500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * 2 * usr.des
					usr << "<font color = blue><b>You stone a part of your body and attack!"
					if(enemy.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly stoned yourself!"
						usr.mp -= 2500
						sleep(10)
					else
						usr << "<font color = blue><b>Your stoned body hits the [enemy] for [spelldmg/2] twice!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 2500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Fire_Slash(mob/enemy)
			if(usr.fs >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * usr.fs
					usr << "<font color = blue><b>You engulf a part of your body in flames and attack!"
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost hit yourself in the head with flames!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>Your flamed body hits the [enemy] for [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Ice_Slash(mob/enemy)
			if(usr.is >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * usr.is
					usr << "<font color = blue><b>You freeze a part of your body in ice and attack!"
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly froze yourself!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>Your frozen body hits the [enemy] for [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Thunder_Slash(mob/enemy)
			if(usr.ts >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * usr.ts
					usr << "<font color = blue><b>You electrocute a part of your body and attack!"
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly electrocuted yourself!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>Your electrocuted body hits the [enemy] for [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Wind_Slash(mob/enemy)
			if(usr.ws >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * usr.ws
					usr << "<font color = blue><b>You engulf in winds a part of your body and attack!"
					if(enemy.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly blew yourself away!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>Your winded body hits the [enemy] for [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Earth_Slash(mob/enemy)
			if(usr.es >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(-50,50)
						spelldmg = dmg * usr.es
					usr << "<font color = blue><b>You stone a part of your body and attack!"
					if(enemy.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>You missed the [enemy] and almost completly stoned yourself!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>Your stoned body hits the [enemy] for [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Power_Slash(mob/enemy)
			if(usr.powerslash >> 0)
				if(usr.mp >= 50)
					var
						dmg = usr.attack - enemy.defense + rand(-5,5)
						powerslashdmg = dmg * 3
						powerslashhit = powerslash + rand(-10,10)
					usr << "You unleash a Power Slash!"
					usr << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						usr << "You missed!"
						usr.mp -= 50
					else
						if(powerslashhit >= 2)
							usr << "You hit the [enemy] for [powerslashdmg]!"
							enemy.hp -= powerslashdmg
							usr.mp -= 50
						else
							usr << "The Power Slash failed and you only hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							usr.mp -= 50
						sleep(10)
						if(enemy.hp <= 0)
							Deathcheck(enemy)
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Rapid_Slash(mob/enemy)
			if(usr.rapidslash >> 0)
				if(usr.mp >= 50)
					var
						dmg = usr.attack - enemy.defense + rand(-5,5)
						rapidslashhit = rapidslash + rand(-10,7)
						halfdmg = dmg / 2
					usr << "You unleash a Rapid Slash!"
					usr << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						usr << "You missed!"
						usr.mp -= 50
					else
						if(rapidslashhit >= 2)
							usr << "You hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							sleep(10)
							usr << "You hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							sleep(10)
							usr << "You hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							sleep(10)
							halfdmg = round(halfdmg)
							usr << "You hit the [enemy] for [halfdmg]!"
							enemy.hp -= halfdmg
							usr.mp -= 50
						else
							usr << "The Rapid Slash failed and you only hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							usr.mp -= 50
						if(enemy.hp <= 0)
							Deathcheck(enemy)
						sleep(10)
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Money_Slash(mob/enemy)
			if(usr.moneyslash >> 0)
				if(usr.mp >= 50)
					var
						dmg = usr.attack - enemy.defense + rand(-5,5)
						moneychance = moneyslash + rand(-10,10)
					usr << "You unleash a Money Slash!"
					usr << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						usr << "You missed!"
						usr.mp -= 50
					else
						if(moneychance >= 2)
							usr << "You hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							usr.mp -= 50
							sleep(5)
							usr << "Money splaters everywhere!"
							sleep(10)
							var/moneygot = dmg + rand(-50,50)
							usr << "You pick up [moneygot] of it!"
							usr.gold += moneygot
						else
							usr << "The Money Slash failed and you hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							usr.mp -= 50
						if(enemy.hp <= 0)
							Deathcheck(enemy)
						sleep(10)
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Attack_Up(mob/enemy)
			if(usr.attup >> 0)
				if(usr.mp >= 50)
					var
						attd = usr.attack / usr.attup
					usr << "You summon a burst of attack power!"
					if(usr.attackdoubled == 0)
						usr << "Your attack increases!"
						attd = round(attd)
						usr.attack += attd
						usr.attackdoubled = 1
						usr.mp -= 50
					else if(usr.attackdoubled == 1)
						usr << "The energy combinding in you suddenly bursts away!"
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Defense_Up(mob/enemy)
			if(usr.defup >> 0)
				if(usr.mp >= 50)
					var
						defd = usr.defense / usr.defup
					usr << "You summon a burst of defense power!"
					if(usr.defensedoubled == 0)
						usr << "Your defense increases!"
						defd = round(defd)
						usr.defense += defd
						usr.defensedoubled = 1
						usr.mp -= 50
					else if(usr.defensedoubled == 1)
						usr << "The energy combinding in you suddenly bursts away!"
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Fire(mob/enemy)
			if(usr.fire >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.fire
					usr << "You summon Fire!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Fire has no affect on [enemy]!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Fire hits the [enemy] [usr.fire] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Ice(mob/enemy)
			if(usr.ice >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.ice
					usr << "You summon Ice!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Ice has no affect on [enemy]!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Ice hits the [enemy] [usr.ice] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Thunder(mob/enemy)
			if(usr.thunder >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.thunder
					usr << "You summon Thunder!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Thunder has no affect on [enemy]!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Thunder hits the [enemy] [usr.thunder] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Wind(mob/enemy)
			if(usr.wind >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.wind
					usr << "You summon Wind!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Wind has no affect on [enemy]!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Wind hits the [enemy] [usr.wind] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Earth(mob/enemy)
			if(usr.earth >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.earth
					usr << "You summon Earth!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Earth has no affect on [enemy]!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Earth hits the [enemy] [usr.earth] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		GFire(mob/enemy)
			if(usr.efire >> 0)
				if(usr.mp >= 3750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 3 * usr.gfire
					usr <<  "<font color = blue><b>You summon Godly Fire!"
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Fire has no affect on [enemy]!"
						usr.mp -= 3750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Fire hits the [enemy] [usr.gfire] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		GIce(mob/enemy)
			if(usr.gice >> 0)
				if(usr.mp >= 3750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 3 * usr.gice
					usr <<  "<font color = blue><b>You summon Godly Ice!"
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Ice has no affect on [enemy]!"
						usr.mp -= 3750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Ice hits the [enemy] [usr.gice] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		GThunder(mob/enemy)
			if(usr.gthunder >> 0)
				if(usr.mp >= 3750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 3 * usr.gthunder
					usr <<  "<font color = blue><b>You summon Godly Thunder!"
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Thunder has no affect on [enemy]!"
						usr.mp -= 3750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Thunder hits the [enemy] [usr.gthunder] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		GWind(mob/enemy)
			if(usr.gwind >> 0)
				if(usr.mp >= 3750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 3 * usr.gwind
					usr <<  "<font color = blue><b>You summon Godly Wind!"
					if(enemy.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Wind has no affect on [enemy]!"
						usr.mp -= 3750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Wind hits the [enemy] [usr.gwind] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		GEarth(mob/enemy)
			if(usr.gearth >> 0)
				if(usr.mp >= 3750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 3 * usr.gearth
					usr <<  "<font color = blue><b>You summon Godly Earth!"
					if(enemy.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Earth has no affect on [enemy]!"
						usr.mp -= 3750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Earth hits the [enemy] [usr.gearth] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		EFire(mob/enemy)
			if(usr.efire >> 0)
				if(usr.mp >= 750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 2 * usr.efire
					usr <<  "<font color = blue><b>You summon Extreme Fire!"
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Fire has no affect on [enemy]!"
						usr.mp -= 750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Fire hits the [enemy] [usr.efire] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		EIce(mob/enemy)
			if(usr.eice >> 0)
				if(usr.mp >= 750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 2 * usr.eice
					usr <<  "<font color = blue><b>You summon Extreme Ice!"
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Ice has no affect on [enemy]!"
						usr.mp -= 750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Ice hits the [enemy] [usr.eice] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		EThunder(mob/enemy)
			if(usr.ethunder >> 0)
				if(usr.mp >= 750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 2 * usr.ethunder
					usr <<  "<font color = blue><b>You summon Extreme Thunder!"
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Thunder has no affect on [enemy]!"
						usr.mp -= 750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Thunder hits the [enemy] [usr.ethunder] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		EWind(mob/enemy)
			if(usr.ewind >> 0)
				if(usr.mp >= 750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 2 * usr.ewind
					usr <<  "<font color = blue><b>You summon Extreme Wind!"
					if(enemy.weakwind == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Wind has no affect on [enemy]!"
						usr.mp -= 750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Wind hits the [enemy] [usr.ewind] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		EEarth(mob/enemy)
			if(usr.eearth >> 0)
				if(usr.mp >= 750)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * 2 * usr.eearth
					usr <<  "<font color = blue><b>You summon Extreme Earth!"
					if(enemy.weakearth == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr <<  "<font color = blue><b>But the Earth has no affect on [enemy]!"
						usr.mp -= 750
						sleep(10)
					else
						usr <<  "<font color = blue><b>The Earth hits the [enemy] [usr.eearth] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 750
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr <<  "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr <<  "<font color = blue><b>You don't know this skill!"
				Battle()

		Double_Hit(mob/enemy)
			if(usr.doublehit >> 0)
				if(usr.mp >= 50)
					var
						dmg = usr.attack - enemy.defense + rand(-5,5)
						doublehitchance = doublehit + rand(-10,7)
						dmgm = dmg * 3 / 2
					usr << "You unleash a Double Hit!"
					usr << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						usr << "You missed!"
						usr.mp -= 30
					else
						if(doublehitchance >= 2)
							dmgm = round(dmgm)
							usr << "You hit the [enemy] for [dmgm]!"
							enemy.hp -= dmgm
							sleep(10)
							usr << "You hit the [enemy] for [dmgm]!"
							enemy.hp -= dmgm
							usr.mp -= 30
							sleep(10)
						else
							usr << "The Double Hit failed and you only hit the [enemy] for [dmg]!"
							enemy.hp -= dmg
							usr.mp -= 30
						sleep(10)
						if(enemy.hp <= 0)
							Deathcheck(enemy)
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Luck_Up(mob/enemy)
			if(usr.lukup >> 0)
				if(usr.mp >= 50)
					var
						lukd = usr.luck / usr.lukup
					usr << "You summon a burst of luck power!"
					if(usr.luckdoubled == 0)
						usr << "Your luck increases!"
						lukd = round(lukd)
						usr.luck += lukd
						usr.luckdoubled = 1
						usr.mp -= 50
					else if(usr.luckdoubled == 1)
						usr << "The energy combinding in you suddenly bursts away!"
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Spark(mob/enemy)
			if(usr.spark >> 0)
				if(usr.mp >= 60)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-100,100)
						spelldmg = dmg * usr.spark
					usr << "You flare a Spark into the air!"
					sleep(10)
					if(dmg <= 0)
						usr << "But the Spark has no affect on [enemy]!"
						usr.mp -= 60
						sleep(10)
					else
						usr << "The Spark hits the [enemy] [usr.fire] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 60
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Agility_Up(mob/enemy)
			if(usr.aglup >> 0)
				if(usr.mp >= 50)
					var
						agld = usr.agility / usr.aglup
					usr << "You summon a burst of agility power!"
					if(usr.agilitydoubled == 0)
						usr << "Your agility increases!"
						agld = round(agld)
						usr.agility += agld
						usr.agilitydoubled = 1
						usr.mp -= 50
					else if(usr.agilitydoubled == 1)
						usr << "The energy combinding in you suddenly bursts away!"
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Intelligence_Up(mob/enemy)
			if(usr.intup >> 0)
				if(usr.mp >= 50)
					var
						intd = usr.intelligence / usr.intup
					usr << "You summon a burst of intelligence power!"
					if(usr.intelligencedoubled == 0)
						usr << "Your intelligence increases!"
						intd = round(intd)
						usr.intelligence += intd
						usr.intelligencedoubled = 1
						usr.mp -= 50
					else if(usr.intelligencedoubled == 1)
						usr << "The energy combinding in you suddenly bursts away!"
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Steal(mob/enemy)
			if(usr.steal >> 0)
				if(usr.mp >= 50)
					var
						stealchance = usr.agility - enemy.agility + rand(-10,10)
						stealgold = (usr.agility - enemy.agility) * (usr.attack - enemy.attack)
					stealgold =  stealgold*0.125
					stealgold = round(stealgold)
					if(stealchance >> 500)
						usr << "You sneak around to the [enemy]!"
						sleep(10)
						if(usr.stolen == 0)
							usr << "You steal [stealgold] from the [enemy]!"
							usr.gold += stealgold
							usr.mp -= 50
							usr.stolen += 1
						else
							usr << "This monster has no gold left!"
							usr.mp -= 50
					else
						usr << "While you were sneaking to the [enemy], it caught you!"
						sleep(10)
						usr.mp -= 50
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Multiple_Hit(mob/enemy)
			if(usr.multihit >> 0)
				if(usr.mp >= 1000)
					var
						dmg = usr.attack - enemy.defense + rand(-5,5)
						multi = (multihit * 5 / 3) * dmg
					usr << "<font color = blue><b>You start to slash multiple times!"
					usr << 'attack.wav'
					sleep(10)
					if(dmg == 0)
						usr << "<font color = blue><b>You missed everytime!"
						usr.mp -= 1000
					else
						usr << "<font color = blue><b>You hit the [enemy] [multi] times for [dmg]!"
						usr.mp -= 1000
						enemy.hp -= dmg
						if(enemy.hp <= 0)Deathcheck(enemy)
						sleep(10)
				else
					usr << "<font color = blue><b>You don't have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Scare(mob/enemy)
			if(usr.scare >> 0)
				if(usr.mp >= 500)
					var
						chance = usr.intelligence - enemy.intelligence + rand(-50,50)
						mgcw = chance * usr.scare
					if(mgcw <= 0)
						usr << "<font color = blue><b>You try to scare the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>But the [enemy] didn't fall for your tactic!"
						sleep(10)
						usr.mp -= 500
					else
						usr << "<font color = blue><b>You try to scare the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>The [enemy] falls for your tactic and is too scared to attack!"
						sleep(10)
						usr.mp -= 500
						Battle()
				else
					usr << "<font color = blue><b>You don't have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Fireworks(mob/enemy)
			if(usr.fworks >> 0)
				if(usr.mp >= 800)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-100,100)
						spelldmg = dmg * (usr.fworks * 3)
					usr << "<font color = blue><b>You flare Fireworks into the air!"
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
						sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But the Fireworks had no affect on [enemy]!"
						usr.mp -= 800
						sleep(10)
					else
						usr << "<font color = blue><b>The Fireworks hits the [enemy] [usr.fworks * 6] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 800
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Spikes(mob/enemy)
			if(usr.sp >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.attack - enemy.defense + rand(1000,250)
						chance = usr.intelligence - enemy.intelligence + rand(-50,50)
						mgcw = chance * usr.sp
					if(mgcw <= 0)
						usr << "<font color = blue><b>You throw spikes at the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>But the spikes missed!"
						sleep(10)
						usr.mp -= 500
					else
						usr << "<font color = blue><b>You throw spikes at the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>The spikes trap the [enemy], it gets hit for [dmg] and it can't get out!!"
						sleep(10)
						usr.mp -= 500
						enemy.hp -= dmg
						if(enemy.hp <= 0)
							Deathcheck(enemy)
						else
							Battle()
				else
					usr << "<font color = blue><b>You don't have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		SpikeRain(mob/enemy)
			if(usr.sprain >> 0)
				if(usr.mp >= 30500)
					var
						dmg = usr.attack - enemy.defense + rand(1000,250)
						chance = usr.intelligence - enemy.intelligence + rand(-50,50)
						mgcw = chance * usr.sprain
					dmg=dmg*10
					if(mgcw <= 0)
						usr << "<font color = blue><b>Spikes rain down from the skies and attack the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>But the spikes missed!"
						sleep(10)
						usr.mp -= 30500
					else
						usr << "<font color = blue><b>Spikes rain down from the skies and attack the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>The spikes trap the [enemy], it gets hit for [dmg] and it can't get out!!"
						sleep(10)
						usr.mp -= 30500
						enemy.hp -= dmg
						if(enemy.hp <= 0)
							Deathcheck(enemy)
						else
							Battle()
				else
					usr << "<font color = blue><b>You don't have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Explosion(mob/enemy)
			if(usr.explosion >> 0)
				if(usr.mp >= 12000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-100,100)
						spelldmg = dmg * 6 * usr.explosion
					usr << "<font color = blue><b>You cause a series of Explosions on the [enemy]!"
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
						sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But the Explosions had no affect on the [enemy]!"
						usr.mp -= 12000
						sleep(10)
					else
						usr << "<font color = blue><b>The Fireworks hits the [enemy] [usr.explosion * 10] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 12000
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Envenom(mob/enemy)
			if(usr.env >> 0)
				if(usr.mp >= 3000)
					var
						dmg = usr.attack - enemy.defense + rand(-100,100)
						spelldmg = dmg * 2 * usr.env
						poisonchance = rand(1,4)
						poisondmg = enemy.hp / 50
					poisondmg = round(poisondmg)
					usr << "<font color = blue><b>You hit the [enemy] with a poisonous attack!"
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But the attack was avoided!"
						usr.mp -= 3000
						sleep(10)
					else
						usr << "<font color = blue><b>The attack hit the [enemy] and did [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 3000
						if(enemy.hp <= 0)Deathcheck(enemy)
						if(poisonchance == 2)
							usr << "<font color = blue><b>Poison seeped through the [enemy]'s veins and caused [poisondmg] damage in poison, but the poison was then worn off by the [enemy]!"
							enemy.hp -= poisondmg
							sleep(10)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Backstrike(mob/enemy)
			if(usr.backs >> 0)
				if(usr.mp >= 5000)
					var
						dmg = usr.attack - enemy.defense + rand(-100,100)
						spelldmg = dmg * usr.backs * 3
					usr << "<font color = blue><b>You sneak behind the [enemy] and try to continually stab him in the back!"
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But the attack was avoided!"
						usr.mp -= 5000
						sleep(10)
					else
						usr << "<font color = blue><b>The [enemy] was caught by surprise and you stabed him in the back [backs] times and did [spelldmg] damage!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 5000
						if(enemy.hp <= 0)Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Healskill(mob/enemy)
			if(usr.heal >> 0)
				if(usr.mp >= 50)
					var
						healamount = usr.intelligence - enemy.intelligence + rand(-50,50)
						healrand = healamount * usr.heal
					usr << "You summon God for healing!"
					sleep(10)
					if(healamount <= 0)
						usr << "God does not answer your call!"
						usr.mp -= 50
						sleep(10)
					else
						usr << "God heals you for [healrand]!"
						usr.hp += healrand
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
							usr << "You are fully healed!"
						usr.mp -= 50
						sleep(10)
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Devenom(mob/enemy)
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
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Holy_Bolt(mob/enemy)
			if(usr.holybolt >> 0)
				if(usr.mp >= 75)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * usr.holybolt
					usr << "You call apon God to summon Holt Bolts on your enemy!!"
					sleep(10)
					if(dmg <= 0)
						usr << "But God did not answer your call!"
						usr.mp -= 75
						sleep(10)
					else
						usr << "The Holy Bolts hit the [enemy] [usr.holybolt] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 75
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Holy_Veil(mob/enemy)
			if(usr.holyveil >> 0)
				if(usr.mp >= 150)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-150,150)
						spelldmg = (dmg * 2) * usr.holyveil
					usr << "You use your everlasting holy power to create a Veil of it!"
					sleep(10)
					if(dmg <= 0)
						usr << "The Veil breaks down at the last second!"
						usr.mp -= 150
						sleep(10)
					else
						usr << "The Holy Veil hits the [enemy] [usr.holyveil] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 150
					if(enemy.hp <= 0)
						Deathcheck(enemy)
				else
					usr << "You dont have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Mind_Games(mob/enemy)
			if(usr.mindgames >> 0)
				if(usr.mp >= 50)
					var
						chance = usr.intelligence - enemy.intelligence + rand(-50,50)
						mgcw = chance * usr.mindgames
					if(mgcw <= 0)
						usr << "You play mind games on the [enemy]!"
						sleep(10)
						usr << "But the [enemy] didn't fall for your trick!"
						sleep(10)
						usr.mp -= 50
					else
						usr << "You play mind games on the [enemy]!"
						sleep(10)
						usr << "The [enemy] falls for your trick and is confused!"
						sleep(10)
						usr.mp -= 50
						enemy.mindgamed = 1
				else
					usr << "You don't have enouph MP!"
					Battle()
			else
				usr << "You don't know this skill!"
				Battle()

		Scary_Eyes(mob/enemy)
			if(usr.seyes >> 0)
				if(usr.mp >= 100)
					var
						chance = usr.intelligence - enemy.intelligence + rand(-50,50)
						mgcw = chance * usr.seyes
					if(mgcw <= 0)
						usr << "<font color = blue><b>You try to scare the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>But the [enemy] didn't fall for your scary eyes!"
						sleep(10)
						usr.mp -= 100
					else
						usr << "<font color = blue><b>You try to scare the [enemy]!"
						sleep(10)
						usr << "<font color = blue><b>The [enemy] falls for your scary eyes and is too scared to attack!"
						sleep(10)
						usr.mp -= 100
						Battle()
				else
					usr << "<font color = blue><b>You don't have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Sleeps(mob/enemy)
			if(usr.sleeps >> 0)
				if(usr.mp >= 175)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spellch = dmg * usr.sleeps
					usr << "<font color = blue><b>You call apon God to summon rest on your enemy!!"
					sleep(10)
					if(spellch <= 0)
						usr << "<font color = blue><b>But God did not answer your call!"
						usr.mp -= 175
						sleep(10)
					else
						usr << "<font color = blue><b>The restful power pulls the [enemy] to sleep!"
						enemy.sleep = 1
						sleep(10)
						usr.mp -= 175
						Battle()
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Holy_Lightning(mob/enemy)
			if(usr.holylit >> 0)
				if(usr.mp >= 7000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * (usr.holylit * 2)
					usr << "<font color = blue><b>You call apon God to summon Holy Lightning on your enemy!!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					if(enemy.weakthunder == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But God did not answer your call!"
						usr.mp -= 7000
						sleep(10)
					else
						usr << "<font color = blue><b>The Holy Lightning hit the [enemy] [usr.holylit] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 7000
						if(enemy.hp <=0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Beat(mob/enemy)
			if(usr.beat >> 0)
				if(usr.mp >= 10000)
					var
						beatchance = usr.intelligence - src.intelligence * usr.beat
					usr << "<font color = blue><b>You cast Beat!"
					sleep(10)
					if(beatchance<=5000)
						usr << "<font color = blue><b>No effect."
						usr.mp -= 10000
						sleep(10)
					else
						usr << "<font color = blue><b>The [enemy] was shattered into pieces."
						enemy.hp = 0
						sleep(10)
						usr.mp -= 10000
						Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Holy_Flames(mob/enemy)
			if(usr.hflames >> 0)
				if(usr.mp >= 7000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * (usr.hflames * 2)
					usr << "<font color = blue><b>You call apon God to summon Holy Flames on your enemy!!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					if(enemy.weakfire == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But God did not answer your call!"
						usr.mp -= 7000
						sleep(10)
					else
						usr << "<font color = blue><b>The Holy Flames hit the [enemy] [usr.hflames] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 7000
						if(enemy.hp <=0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Holy_Ice_Shards(mob/enemy)
			if(usr.hices >> 0)
				if(usr.mp >= 7000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * (usr.hices * 2)
					usr << "<font color = blue><b>You call apon God to summon Holy Ice Shards on your enemy!!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But God did not answer your call!"
						usr.mp -= 7000
						sleep(10)
					else
						usr << "<font color = blue><b>The Holy Ice Shards hit the [enemy] [usr.hices] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 7000
						if(enemy.hp <=0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Holy_Blast(mob/enemy)
			if(usr.hb >> 0)
				if(usr.mp >= 15000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-50,50)
						spelldmg = dmg * (usr.hb * 5)
					usr << "<font color = blue><b>You call apon God to summon Holy Blasts on your enemy!!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>But God did not answer your call!"
						usr.mp -= 15000
						sleep(10)
					else
						usr << "<font color = blue><b>The Holy Blasts hit the [enemy] [usr.hb] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 15000
						if(enemy.hp <=0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Almighty_Veil(mob/enemy)
			if(usr.alveil >> 0)
				if(usr.mp >= 500)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-1000,1000)
						spelldmg = (dmg * 2) * (usr.alveil * 3)
					usr << "<font color = blue><b>You use your everlasting holy power to create a Veil of it!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>The Veil breaks down at the last second!"
						usr.mp -= 500
						sleep(10)
					else
						usr << "<font color = blue><b>The Holy Veil hits the [enemy] [usr.alveil] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 500
						if(enemy.hp <= 0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()

		Deadly_Frozen_Veil(mob/enemy)
			if(usr.deadfveil >> 0)
				if(usr.mp >= 50000)
					var
						dmg = usr.intelligence - enemy.intelligence + rand(-1000,1000)
						spelldmg = (dmg * 4) * (usr.deadfveil * 6)
					usr << "<font color = blue><b>You use your everlasting holy power to create a Frozen Veil of it!"
					if(enemy.weakholy == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					if(enemy.weakice == 1)
						spelldmg *= 3
						spelldmg /= 2
						spelldmg = round(spelldmg)
					sleep(10)
					if(dmg <= 0)
						usr << "<font color = blue><b>The Frozen Veil breaks down at the last second!"
						usr.mp -= 50000
						sleep(10)
					else
						usr << "<font color = blue><b>The Frozen Holy Veil hits the [enemy] [usr.deadfveil] times and does [spelldmg]!"
						enemy.hp -= spelldmg
						sleep(10)
						usr.mp -= 50000
						if(enemy.hp <= 0)
							Deathcheck(enemy)
				else
					usr << "<font color = blue><b>You dont have enouph MP!"
					Battle()
			else
				usr << "<font color = blue><b>You don't know this skill!"
				Battle()


		Blaze(mob/enemy)
			if(usr.mp >= 2)
				var
					spelldamage = rand(4,10) + usr.intelligence - enemy.intelligence
				usr << "You cast Blaze!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 2
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 2
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Blazemore(mob/enemy)
			if(usr.mp >= 14)
				var
					spelldamage = rand(30,50) + usr.intelligence - enemy.intelligence
				usr << "You cast Blazemore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 14
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 14
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Blazemost(mob/enemy)
			if(usr.mp >= 30)
				var
					spelldamage = rand(90,125) + usr.intelligence - enemy.intelligence
				usr << "You cast Blazemost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 30
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 30
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Extreme_Blaze(mob/enemy)
			if(usr.mp >= 58)
				var
					spelldamage = rand(250,500) + usr.intelligence - enemy.intelligence
				usr << "You cast Extreme Blaze!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 58
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 58
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Extreme_Blazemore(mob/enemy)
			if(usr.mp >= 78)
				var
					spelldamage = rand(500,900) + usr.intelligence - enemy.intelligence
				usr << "You cast Extreme Blazemore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 78
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 78
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Extreme_Blazemost(mob/enemy)
			if(usr.mp >= 102)
				var
					spelldamage = rand(850,1700) + usr.intelligence - enemy.intelligence
				usr << "You cast Extreme Blazemost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 102
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 102
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Blaze(mob/enemy)
			if(usr.mp >= 132)
				var
					spelldamage = rand(1400,2800) + usr.intelligence - enemy.intelligence
				usr << "You cast Death Blaze!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 132
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 132
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Blazemore(mob/enemy)
			if(usr.mp >= 186)
				var
					spelldamage = rand(2200,4400) + usr.intelligence - enemy.intelligence
				usr << "You cast Death Blazemore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 186
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 186
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Blazemost(mob/enemy)
			if(usr.mp >= 232)
				var
					spelldamage = rand(3000,6000) + usr.intelligence - enemy.intelligence
				usr << "You cast Death Blazemost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 232
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 232
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firebal(mob/enemy)
			if(usr.mp >= 4)
				var
					spelldamage = rand(6,12) + usr.intelligence - enemy.intelligence
				usr << "You cast Firebal!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 4
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 4
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firebane(mob/enemy)
			if(usr.mp >= 18)
				var
					spelldamage = rand(40,55) + usr.intelligence - enemy.intelligence
				usr << "You cast Firebane!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 18
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 18
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firebolt(mob/enemy)
			if(usr.mp >= 36)
				var
					spelldamage = rand(100,150) + usr.intelligence - enemy.intelligence
				usr << "You cast Firebolt!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 36
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 36
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firevolt(mob/enemy)
			if(usr.mp >= 64)
				var
					spelldamage = rand(280,550) + usr.intelligence - enemy.intelligence
				usr << "You cast Firevolt!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 64
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 64
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Fireroar(mob/enemy)
			if(usr.mp >= 86)
				var
					spelldamage = rand(550,1000) + usr.intelligence - enemy.intelligence
				usr << "You cast Fireroar!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 86
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 86
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firesoar(mob/enemy)
			if(usr.mp >= 106)
				var
					spelldamage = rand(1000,2000) + usr.intelligence - enemy.intelligence
				usr << "You cast Firesoar!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 106
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 106
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firerage(mob/enemy)
			if(usr.mp >= 150)
				var
					spelldamage = rand(1750,3500) + usr.intelligence - enemy.intelligence
				usr << "You cast Firerage!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 150
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 150
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Fireplow(mob/enemy)
			if(usr.mp >= 200)
				var
					spelldamage = rand(2500,5000) + usr.intelligence - enemy.intelligence
				usr << "You cast Fireplow!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 200
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 200
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Firestreak(mob/enemy)
			if(usr.mp >= 250)
				var
					spelldamage = rand(3400,6800) + usr.intelligence - enemy.intelligence
				usr << "You cast Firestreak!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 250
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 250
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Icebolt(mob/enemy)
			if(usr.mp >= 6)
				var
					spelldamage = rand(14,24) + usr.intelligence - enemy.intelligence
				usr << "You cast Icebolt!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 6
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 6
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Snowstorm(mob/enemy)
			if(usr.mp >= 22)
				var
					spelldamage = rand(50,70) + usr.intelligence - enemy.intelligence
				usr << "You cast Snowstorm!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 22
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 22
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Blizzard(mob/enemy)
			if(usr.mp >= 44)
				var
					spelldamage = rand(120,200) + usr.intelligence - enemy.intelligence
				usr << "You cast Blizzard!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 44
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 44
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Blizmore(mob/enemy)
			if(usr.mp >= 70)
				var
					spelldamage = rand(360,700) + usr.intelligence - enemy.intelligence
				usr << "You cast Blizmore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 70
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 70
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Blizmost(mob/enemy)
			if(usr.mp >= 90)
				var
					spelldamage = rand(600,1100) + usr.intelligence - enemy.intelligence
				usr << "You cast Blizmost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 90
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 90
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Master_Blizzard(mob/enemy)
			if(usr.mp >= 112)
				var
					spelldamage = rand(1100,2200) + usr.intelligence - enemy.intelligence
				usr << "You cast Master Blizzard!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 112
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 112
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Icebolt(mob/enemy)
			if(usr.mp >= 166)
				var
					spelldamage = rand(1900,3800) + usr.intelligence - enemy.intelligence
				usr << "You cast Death Icebolt!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 166
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 166
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Snowstorm(mob/enemy)
			if(usr.mp >= 208)
				var
					spelldamage = rand(2750,5500) + usr.intelligence - enemy.intelligence
				usr << "You cast Snowstorm!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 208
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 208
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Death_Blizzard(mob/enemy)
			if(usr.mp >= 264)
				var
					spelldamage = rand(3750,7500) + usr.intelligence - enemy.intelligence
				usr << "You cast Death Blizzard!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "<font color = blue><b>The [enemy] was unaffected!"
					usr.mp -= 264
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 264
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Bolt(mob/enemy)
			if(usr.mp >= 8)
				var
					spelldamage = rand(20,30) + usr.intelligence - enemy.intelligence
				usr << "You cast Bolt!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 8
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 8
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Boltmore(mob/enemy)
			if(usr.mp >= 12)
				var
					spelldamage = rand(26,40) + usr.intelligence - enemy.intelligence
				usr << "You cast Boltmore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 12
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 12
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Boltmost(mob/enemy)
			if(usr.mp >= 28)
				var
					spelldamage = rand(80,110) + usr.intelligence - enemy.intelligence
				usr << "You cast Boltmost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 28
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 28
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Zap(mob/enemy)
			if(usr.mp >= 48)
				var
					spelldamage = rand(150,220) + usr.intelligence - enemy.intelligence
				usr << "You cast Zap!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 48
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 48
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Zapmore(mob/enemy)
			if(usr.mp >= 74)
				var
					spelldamage = rand(400,750) + usr.intelligence - enemy.intelligence
				usr << "You cast Zapmore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 74
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 74
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Zapmost(mob/enemy)
			if(usr.mp >= 96)
				var
					spelldamage = rand(700,1400) + usr.intelligence - enemy.intelligence
				usr << "You cast Zapmost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 96
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 96
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Thordain(mob/enemy)
			if(usr.mp >= 120)
				var
					spelldamage = rand(1250,2500) + usr.intelligence - enemy.intelligence
				usr << "You cast Thordain!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 120
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 120
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Thordainmore(mob/enemy)
			if(usr.mp >= 174)
				var
					spelldamage = rand(2000,4000) + usr.intelligence - enemy.intelligence
				usr << "You cast Thordainmore!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 174
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 174
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Thordainmost(mob/enemy)
			if(usr.mp >= 220)
				var
					spelldamage = rand(3000,6000) + usr.intelligence - enemy.intelligence
				usr << "You cast Thordainmost!"
				usr << 'spell.wav'
				sleep(10)
				if(spelldamage <= 0)
					usr << "The [enemy] was unaffected!"
					usr.mp -= 220
				else
					usr << "The spell hits the [enemy] for [spelldamage] damage!"
					usr << 'hit.wav'
					enemy.hp -= spelldamage
					usr.mp -= 220
					if(enemy.hp <= 0)
						Deathcheck(enemy)
			else
				usr << "You don't have enouph MP!"
				Battle()
		Sleep(mob/enemy)
			if(usr.mp >= 5)
				var
					sleepchance = rand(-5,5) + usr.intelligence - enemy.intelligence
				usr << "You cast Sleep!"
				usr << 'spell.wav'
				sleep(10)
				if(sleepchance >> 120)
					usr << "The [enemy] falls asleep!"
					enemy.sleep = 1
					usr.mp -= 5
				else
					usr << "The [enemy] is unaffected!"
					usr.mp -= 5
			else
				usr << "You don't have enouph MP!"
				Battle()
		Sleepmore(mob/enemy)
			if(usr.mp >= 12)
				var
					sleepchance = rand(-3,10) + usr.intelligence - enemy.intelligence
				usr << "You cast Sleepmore!"
				usr << 'spell.wav'
				sleep(10)
				if(sleepchance >> 100)
					usr << "The [enemy] falls asleep!"
					enemy.sleep = 1
					usr.mp -= 12
				else
					usr << "The [enemy] is unaffected!"
					usr.mp -= 12
			else
				usr << "You don't have enouph MP!"
				Battle()
		Sleepmost(mob/enemy)
			if(usr.mp >= 18)
				var
					sleepchance = rand(-1,20) + usr.intelligence - enemy.intelligence
				usr << "You cast Sleepmost!"
				usr << 'spell.wav'
				sleep(10)
				if(sleepchance >> 90)
					usr << "The [enemy] falls asleep!"
					enemy.sleep = 1
					usr.mp -= 18
				else
					usr << "The [enemy] is unaffected!"
					usr.mp -= 18
			else
				usr << "You don't have enouph MP!"
				Battle()
		Heal(mob/enemy)
			if(usr.mp >= 4)
				var
					healed = rand(0,20) + usr.intelligence - enemy.intelligence
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
				Battle()
		Healmore(mob/enemy)
			if(usr.mp >= 10)
				var
					healed = rand(30,60) + usr.intelligence - enemy.intelligence
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
				Battle()
		Healmost(mob/enemy)
			if(usr.mp >= 22)
				var
					healed = rand(80,120) + usr.intelligence - enemy.intelligence
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
				Battle()
		Healall(mob/enemy)
			if(usr.mp >= 30)
				usr << "You cast Healall!"
				usr << 'spell.wav'
				sleep(10)
				usr << "You are fully healed!"
				usr.mp -= 30
				usr.hp = usr.maxhp
			else
				usr << "You don't have enouph MP!"
				Battle()

		Poison()
		Poisonmore()
		Quake()
		Bone_Throw()
		Flame_Breath()
		Flaming_Breath()
		Boommore()
		Tornado()
		Pounce()
		Disease()
		Ram()
		Evil_Flare()
		Spiked_Bone_Throw()
		Heavy_Flame_Breath()
		Flame_Tornado()
		Fire_Bite()
		Explodet()
		Diseasemore()
		Poisonmost()
		Gale()
		Earthquake()
		Boom()
		EarthRoar()
		SuperHeal()
		Engulph()
		IceBlades()