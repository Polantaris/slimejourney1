mob
	monster
		Blaze(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(0,20)
			player << "The [src] casts Blaze!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Bolt(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(20,50)
			player << "The [src] casts Bolt!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Firebal(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(40,80)
			player << "The [src] casts Firebal!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Poison(mob/blue/player)
			if(poisoned == 1)
				Battle()
			else
				var
					poisonchance = (src.intelligence + src.attack) - (player.intelligence + player.defense) + rand(-1000,1000)
				player << "The [src] uses Poison!"
				player << 'spell.wav'
				sleep(10)
				if(poisonchance >= 1)
					player << "You have been poisoned!"
					player << 'hit.wav'
					sleep(10)
					player.poisoned = 1

				else
					player << "You were uneffected!"


		Blazemore(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(70,125)
			player << "The [src] casts Blazemore!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Icebolt(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(120,200)
			player << "The [src] casts Icebolt!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Boltmore(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(220,330)
			player << "The [src] casts Boltmore!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Heal(mob/blue/player)
			var
				heal = src.intelligence - player.intelligence + rand(-200,300)
			player << "The [src] casts Heal!"
			player << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				player << "The [src] heals [heal] HP!"
				src.hp += heal
				sleep(10)

			else
				player << "The spell had no effect on the [src]!"
				sleep(10)


		Poisonmore(mob/blue/player)
			if(poisoned == 1)
				Battle()
			else
				var
					poisonchance = (src.intelligence + src.attack) - (player.intelligence + player.defense) + rand(-500,500)
				player << "The [src] uses Poisonmore!"
				player << 'spell.wav'
				sleep(10)
				if(poisonchance >= 1)
					player << "You have been poisoned!"
					player << 'hit.wav'
					sleep(10)
					player.poisoned = 1

				else
					player << "You were uneffected!"


		Quake(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(200,400)
			player << "The [src] casts Quake!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Bone_Throw(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(450,650)
			player << "The [src] hurls a Bone!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Boom(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(660,850)
			player << "The [src] casts Boom!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Healmore(mob/blue/player)
			var
				heal = src.intelligence - player.intelligence + rand(-250,1250)
			player << "The [src] casts Healmore!"
			player << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				player << "The [src] heals [heal] HP!"
				src.hp += heal
				sleep(10)

			else
				player << "The spell had no effect on the [src]!"
				sleep(10)


		Flame_Breath(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(780,1000)
			player << "The [src] summons Flame Breath!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Flaming_Breath(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(1250,1480)
			player << "The [src] summons Flaming Breath!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Boommore(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(1500,1670)
			player << "The [src] casts Boommore!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Tornado(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(1670,1890)
			player << "The [src] casts Tornado!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Pounce(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(1920,2180)
			player << "The [src] Pounces!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Disease(mob/blue/player)
			if(diseased == 1)
				Battle()
			else
				var
					poisonchance = (src.intelligence + src.attack) - (player.intelligence + player.defense) + rand(-1000,1000)
				player << "The [src] uses Disease!"
				player << 'spell.wav'
				sleep(10)
				if(poisonchance >= 1)
					player << "You have been diseased!"
					player << 'hit.wav'
					sleep(10)
					player.diseased = 1

				else
					player << "You were uneffected!"


		Blazemost(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(2120,2450)
			player << "The [src] casts Blazemost!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Ram(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(2500,2760)
			player << "The [src] Rams you!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Evil_Flare(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(2690,3000)
			player << "The [src] summons an Evil Flare!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Spiked_Bone_Throw(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(2980,3260)
			player << "The [src] hurls a Spiked Bone!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Heavy_Flame_Breath(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(3300,3520)
			player << "The [src] summons Heavy Flame Breath!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Fire_Slash(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(3550,3870)
			player << "The [src] unleashes a Fire Slash!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Flame_Tornado(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(3800,4080)
			player << "The [src] casts Flame Tornado!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Fire_Bite(mob/blue/player)
			var
				spelldmg = src.attack - player.defense + rand(4000,4280)
			player << "The [src] Fire Bites!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Snowstorm(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(4300,4620)
			player << "The [src] casts Snowstorm!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Healmost(mob/blue/player)
			var
				heal = src.intelligence - player.intelligence + rand(-500,5000)
			player << "The [src] casts Healmost!"
			player << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				player << "The [src] heals [heal] HP!"
				src.hp += heal
				sleep(10)

			else
				player << "The spell had no effect on the [src]!"
				sleep(10)


		Explodet(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(4580,4870)
			player << "The [src] casts Explodet!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Diseasemore(mob/blue/player)
			if(diseased == 1)
				Battle()
			else

				var
					poisonchance = (src.intelligence + src.attack) - (player.intelligence + player.defense) + rand(-500,500)
				player << "The [src] uses Diseasemore!"
				player << 'spell.wav'
				sleep(10)
				if(poisonchance >= 1)
					player << "You have been diseased!"
					player << 'hit.wav'
					sleep(10)
					player.diseased = 1

				else
					player << "You were uneffected!"


		Firevolt(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(4900,5370)
			player << "The [src] casts Firevolt!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Death_Blaze(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(5440,6070)
			player << "The [src] casts Death Blaze!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Zap(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(6120,7190)
			player << "The [src] casts Zap!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Poisonmost(mob/blue/player)
			if(poisoned == 1)
				Battle()
			else
				var
					poisonchance = (src.intelligence + src.attack) - (player.intelligence + player.defense) + rand(-200,1000)
				player << "The [src] uses Poisonmost!"
				player << 'spell.wav'
				sleep(10)
				if(poisonchance >= 1)
					player << "You have been poisoned!"
					player << 'hit.wav'
					sleep(10)
					player.poisoned = 1

				else
					player << "You were uneffected!"


		Gale(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(7230,8390)
			player << "The [src] casts Gale!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)


		Earthquake(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(8450,9340)
			player << "The [src] summons an Earthquake!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)

		EarthRoar(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(16273,19280)
			player << "The [src] creates a Roar from the Earth!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The spell does [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The spell fails!"
				sleep(10)

		SuperHeal(mob/blue/player)
			var
				heal = src.intelligence - player.intelligence + rand(50000,250000)
			player << "The [src] casts Super Heal!"
			player << 'spell.wav'
			sleep(10)
			if(heal >= 1)
				player << "The [src] heals [heal] HP!"
				src.hp += heal
				sleep(10)

			else
				player << "The spell had no effect on the [src]!"
				sleep(10)

		Engulph(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(37407,98245)
			player << "The [src] creates flames that engulph you!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The flames do [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The flames die out suddenly!"
				sleep(10)

		IceBlades(mob/blue/player)
			var
				spelldmg = src.intelligence - player.intelligence + rand(78953,127234)
			player << "The [src] creates blades our of ice and hurls them at you!"
			player << 'spell.wav'
			sleep(10)
			if(spelldmg >= 1)
				player << "The ice blades strike for [spelldmg] damage!"
				player << 'hit.wav'
				sleep(10)
				player.hp -= spelldmg
				if(player.hp <= 0)
					Deathcheck(player)


			if(spelldmg <= 0)
				player << "The ice blades barely miss you!"
				sleep(10)