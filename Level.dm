mob
	proc
		checklevel(mob/M)
			if(M.expreq == "Max Level")
				return..(M)
			else if(M.exp >= M.expreq)
				levelup(M)

		checkjoblevel(mob/M)
			if(M.jobexpreq == "Max Job Level!")
				return..(M)
			else if(M.jobexp >= M.jobexpreq)
				joblevelup(M)

		levelup(mob/M)
			if(M.exp >= M.expreq)
				if(M.color == "Blue")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (2,10)
					M.maxmp_level = rand (2,10)
					M.attack_level = rand (4,10)
					M.defense_level = rand (4,10)
					M.intelligence_level = rand (4,10)
					M.agility_level = rand (4,10)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Red")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (6,15)
					M.maxmp_level = rand (6,15)
					M.attack_level = rand (8,20)
					M.defense_level = rand (8,20)
					M.intelligence_level = rand (8,20)
					M.agility_level = rand (8,20)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Yellow")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (10,25)
					M.maxmp_level = rand (10,25)
					M.attack_level = rand (10,30)
					M.defense_level = rand (10,30)
					M.intelligence_level = rand (10,30)
					M.agility_level = rand (10,30)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Pink")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (15,40)
					M.maxmp_level = rand (15,40)
					M.attack_level = rand (15,50)
					M.defense_level = rand (15,50)
					M.intelligence_level = rand (15,50)
					M.agility_level = rand (15,50)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Green")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (25,60)
					M.maxmp_level = rand (25,60)
					M.attack_level = rand (30,65)
					M.defense_level = rand (30,65)
					M.intelligence_level = rand (30,65)
					M.agility_level = rand (30,65)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Brown")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (40,75)
					M.maxmp_level = rand (40,75)
					M.attack_level = rand (45,75)
					M.defense_level = rand (45,75)
					M.intelligence_level = rand (45,75)
					M.agility_level = rand (45,75)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Purple")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (50,90)
					M.maxmp_level = rand (50,90)
					M.attack_level = rand (60,100)
					M.defense_level = rand (60,100)
					M.intelligence_level = rand (60,100)
					M.agility_level = rand (60,100)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "White")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (65,115)
					M.maxmp_level = rand (65,115)
					M.attack_level = rand (80,130)
					M.defense_level = rand (80,130)
					M.intelligence_level = rand (80,130)
					M.agility_level = rand (80,130)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Black")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (90,140)
					M.maxmp_level = rand (90,140)
					M.attack_level = rand (100,160)
					M.defense_level = rand (100,160)
					M.intelligence_level = rand (100,160)
					M.agility_level = rand (100,160)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Swordsman Red")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225)
					M.maxmp_level = rand (100,150)
					M.attack_level = rand (160,260)
					M.defense_level = rand (120,220)
					M.intelligence_level = rand (80,160)
					M.agility_level = rand (80,160)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Spellcaster Yellow")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (100,150)
					M.maxmp_level = rand (125,225)
					M.attack_level = rand (80,160)
					M.defense_level = rand (120,220)
					M.intelligence_level = rand (160,260)
					M.agility_level = rand (80,160)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Priest Blue")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,200)
					M.maxmp_level = rand (125,200)
					M.attack_level = rand (125,225)
					M.defense_level = rand (125,225)
					M.intelligence_level = rand (200,300)
					M.agility_level = rand (125,225)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Thief Black")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225)
					M.maxmp_level = rand (100,175)
					M.attack_level = rand (125,200)
					M.defense_level = rand (125,200)
					M.intelligence_level = rand (150,225)
					M.agility_level = rand (175,275)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Equaler Metal")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225)
					M.maxmp_level = rand (125,225)
					M.attack_level = rand (150,250)
					M.defense_level = rand (150,250)
					M.intelligence_level = rand (150,250)
					M.agility_level = rand (150,250)
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Bladesman Red")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 2
					M.maxmp_level = rand (100,150) * 2
					M.attack_level = rand (160,260) * 2
					M.defense_level = rand (120,220) * 2
					M.intelligence_level = rand (80,160) * 2
					M.agility_level = rand (80,160) * 2
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Multicaster Yellow")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (100,150) * 2
					M.maxmp_level = rand (125,225) * 2
					M.attack_level = rand (80,160) * 2
					M.defense_level = rand (120,220) * 2
					M.intelligence_level = rand (160,260) * 2
					M.agility_level = rand (80,160) * 2
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Monk Blue")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,200) * 2
					M.maxmp_level = rand (125,200) * 2
					M.attack_level = rand (125,225) * 2
					M.defense_level = rand (125,225) * 2
					M.intelligence_level = rand (200,300) * 2
					M.agility_level = rand (125,225) * 2
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Assassin Black")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 2
					M.maxmp_level = rand (100,175) * 2
					M.attack_level = rand (125,200) * 2
					M.defense_level = rand (125,200) * 2
					M.intelligence_level = rand (150,225) * 2
					M.agility_level = rand (175,275) * 2
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Greatener Metal")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 2
					M.maxmp_level = rand (125,225) * 2
					M.attack_level = rand (150,250) * 2
					M.defense_level = rand (150,250) * 2
					M.intelligence_level = rand (150,250) * 2
					M.agility_level = rand (150,250) * 2
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Warrior Red")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 3
					M.maxmp_level = rand (100,150) * 3
					M.attack_level = rand (160,260) * 3
					M.defense_level = rand (120,220) * 3
					M.intelligence_level = rand (80,160) * 3
					M.agility_level = rand (80,160) * 3
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Mage Yellow")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (100,150) * 3
					M.maxmp_level = rand (125,225) * 3
					M.attack_level = rand (80,160) * 3
					M.defense_level = rand (120,220) * 3
					M.intelligence_level = rand (160,260) * 3
					M.agility_level = rand (80,160) * 3
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Pope Blue")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,200) * 3
					M.maxmp_level = rand (125,200) * 3
					M.attack_level = rand (125,225) * 3
					M.defense_level = rand (125,225) * 3
					M.intelligence_level = rand (200,300) * 3
					M.agility_level = rand (125,225) * 3
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Rouge Black")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 3
					M.maxmp_level = rand (100,175) * 3
					M.attack_level = rand (125,200) * 3
					M.defense_level = rand (125,200) * 3
					M.intelligence_level = rand (150,225) * 3
					M.agility_level = rand (175,275) * 3
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				if(M.color == "Master Metal")
					M << "<font color = blue><b>You have gained a level!"
					M << 'levelup.wav'
					M << "<font color = blue><b>You are now level [M.level + 1]!"
					M.maxhp_level = rand (125,225) * 3
					M.maxmp_level = rand (125,225) * 3
					M.attack_level = rand (150,250) * 3
					M.defense_level = rand (150,250) * 3
					M.intelligence_level = rand (150,250) * 3
					M.agility_level = rand (150,250) * 3
					M << "<b><font color = blue>Your Max HP went up [M.maxhp_level] points!"
					sleep(3)
					M.maxhp += M.maxhp_level
					M << "<b><font color = blue>Your Max MP went up [M.maxmp_level] points!"
					sleep(3)
					M.maxmp += M.maxmp_level
					M << "<b><font color = blue>Your Attack went up [M.attack_level] points!"
					sleep(3)
					M.attack += M.attack_level
					M << "<b><font color = blue>Your Defense went up [M.defense_level] points!"
					sleep(3)
					M.defense += M.defense_level
					M << "<b><font color = blue>Your Intelligence went up [M.intelligence_level] points!"
					sleep(3)
					M.intelligence += M.intelligence_level
					M << "<b><font color = blue>Your Agility went up [M.agility_level] points!"
					sleep(3)
					M.agility += M.agility_level
					M.level += 1
				M.memattack = M.attack
				M.memdefense = M.defense
				M.memagility = M.agility
				M.memintelligence = M.intelligence
				M.memluck = M.luck
				if(M.level == 2)
					M.expreq = 28
				if(M.level == 3)
					M.expreq = 56
					M << "<font color = blue><b>You learn Blaze!"
					M.spelllist += "Blaze"
					M.spells += 1
				if(M.level == 4)
					M.expreq = 88
				if(M.level == 5)
					M.expreq = 135
					M << "<font color = blue><b>You learn Heal!"
					M.spelllist += "Heal"
				if(M.level == 6)
					M.expreq = 189
					M << "<font color = blue><b>You learn Firebal!"
					M.spelllist += "Firebal"
				if(M.level == 7)
					M.expreq = 223
				if(M.level == 8)
					M.expreq = 290
				if(M.level == 9)
					M.expreq = 365
					M << "<font color = blue><b>You learn Icebolt!"
					M.spelllist += "Icebolt"
				if(M.level == 10)
					M.expreq = 425
				if(M.level == 11)
					M.expreq = 510
					M << "<font color = blue><b>You learn Bolt!"
					M.spelllist += "Bolt"
				if(M.level == 12)
					M.expreq = 623
				if(M.level == 13)
					M.expreq = 721
					M << "<font color = blue><b>You learn Sleep!"
					M.spelllist += "Sleep"
				if(M.level == 14)
					M.expreq = 843
					M.color = "Red"
					M << "<font color = blue><b>You have become a red slime!"
					M.icon_state = "red"
				if(M.level == 15)
					M.expreq = 950
				if(M.level == 16)
					M.expreq = 1100
					M << "<font color = blue><b>You learn Boltmore!"
					M.spelllist += "Boltmore"
				if(M.level == 17)
					M.expreq = 1212
				if(M.level == 18)
					M.expreq = 1334
				if(M.level == 19)
					M.expreq = 1500
				if(M.level == 20)
					M.expreq = 1670
					M << "<font color = blue><b>You learn Blazemore!"
					M.spelllist += "Blazemore"
				if(M.level == 21)
					M.expreq = 1835
				if(M.level == 22)
					M.expreq = 2065
					M << "<font color = blue><b>You learn Firebane!"
					M.spelllist += "Firebane"
				if(M.level == 23)
					M.expreq = 2256
				if(M.level == 24)
					M.expreq = 2544
				if(M.level == 25)
					M.expreq = 2875
				if(M.level == 26)
					M.expreq = 3156
					M << "<font color = blue><b>You learn Snowstorm!"
					M.spelllist += "Snowstorm"
				if(M.level == 27)
					M.expreq = 3500
				if(M.level == 28)
					M.expreq = 3898
				if(M.level == 29)
					M.expreq = 4363
				if(M.level == 30)
					M.expreq = 4900
					M << "<font color = blue><b>You learn Healmore!"
					M.spelllist += "Healmore"
				if(M.level == 31)
					M.expreq = 5546
				if(M.level == 32)
					M.expreq = 6210
				if(M.level == 33)
					M.expreq = 6980
				if(M.level == 34)
					M.expreq = 7676
				if(M.level == 35)
					M.expreq = 8353
					M.color = "Yellow"
					M << "<font color = blue><b>You have become a yellow slime!"
					M.icon_state = "yellow"
				if(M.level == 36)
					M.expreq = 9310
				if(M.level == 37)
					M.expreq = 10300
					M << "<font color = blue><b>You learn Boltmost!"
					M.spelllist += "Boltmost"
				if(M.level == 38)
					M.expreq = 11435
				if(M.level == 39)
					M.expreq = 12600
				if(M.level == 40)
					M.expreq = 13789
				if(M.level == 41)
					M.expreq = 15000
				if(M.level == 42)
					M.expreq = 16232
					M << "<font color = blue><b>You learn Blazemost!"
					M.spelllist += "Blazemost"
				if(M.level == 43)
					M.expreq = 17400
				if(M.level == 44)
					M.expreq = 18676
				if(M.level == 45)
					M.expreq = 20000
				if(M.level == 46)
					M.expreq = 21800
					M << "<font color = blue><b>You learn Firebolt!"
					M.spelllist += "Firebolt"
				if(M.level == 47)
					M.expreq = 23600
				if(M.level == 48)
					M.expreq = 24400
				if(M.level == 49)
					M.expreq = 26200
				if(M.level == 50)
					M.expreq = 29000
					M << "<font color = blue><b>You learn Sleepmore!"
					M.spelllist += "Sleepmore"
				if(M.level == 51)
					M.expreq = 32500
				if(M.level == 52)
					M.expreq = 35000
				if(M.level == 53)
					M.expreq = 37500
					M << "<font color = blue><b>You learn Blizzard!"
					M.spelllist += "Blizzard"
				if(M.level == 54)
					M.expreq = 40000
				if(M.level == 55)
					M.expreq = 42500
				if(M.level == 56)
					M.expreq = 45000
				if(M.level == 57)
					M.expreq = 47500
					M << "<font color = blue><b>You learn Healmost!"
					M.spelllist += "Healmost"
				if(M.level == 58)
					M.expreq = 50000
				if(M.level == 59)
					M.expreq = 52500
				if(M.level == 60)
					M.expreq = 55000
					M.color = "Pink"
					M << "<font color = blue><b>You have become a pink slime!"
					M.icon_state = "pink"
				if(M.level == 61)
					M.expreq = 57500
				if(M.level == 62)
					M.expreq = 60000
					M << "<font color = blue><b>You learn Zap!"
					M.spelllist += "Zap"
				if(M.level == 63)
					M.expreq = 63500
				if(M.level == 64)
					M.expreq = 67000
				if(M.level == 65)
					M.expreq = 70500
					M << "<font color = blue><b>You learn Extreme Blaze!"
					M.spelllist += "Extreme Blaze"
				if(M.level == 66)
					M.expreq = 74000
				if(M.level == 67)
					M.expreq = 77500
				if(M.level == 68)
					M.expreq = 80000
				if(M.level == 69)
					M.expreq = 83500
				if(M.level == 70)
					M.expreq = 87000
					M << "<font color = blue><b>You learn Firevolt!"
					M.spelllist += "Firevolt"
				if(M.level == 71)
					M.expreq = 91000
				if(M.level == 72)
					M.expreq = 95000
				if(M.level == 73)
					M.expreq = 99000
				if(M.level == 74)
					M.expreq = 103000
					M << "<font color = blue><b>You learn Sleepmost!"
					M.spelllist += "Sleepmost"
				if(M.level == 75)
					M.expreq = 107000
				if(M.level == 76)
					M.expreq = 112000
				if(M.level == 77)
					M.expreq = 117000
					M << "<font color = blue><b>You learn Blizmore!"
					M.spelllist += "Blizmore"
				if(M.level == 78)
					M.expreq = 122000
				if(M.level == 79)
					M.expreq = 127000
					M << "<font color = blue><b>You learn Healall!"
					M.spelllist += "Healall"
				if(M.level == 80)
					M.expreq = 132000
					M.color = "Green"
					M << "<font color = blue><b>You have become a green slime!"
					M.icon_state = "green"
				if(M.level == 81)
					M.expreq = 137000
				if(M.level == 82)
					M.expreq = 143000
					M << "<font color = blue><b>You learn Zapmore!"
					M.spelllist += "Zapmore"
				if(M.level == 83)
					M.expreq = 149000
				if(M.level == 84)
					M.expreq = 155000
				if(M.level == 85)
					M.expreq = 161000
					M << "<font color = blue><b>You learn Extreme Blazemore!"
					M.spelllist += "Extreme Blazemore"
				if(M.level == 86)
					M.expreq = 167000
				if(M.level == 87)
					M.expreq = 173000
				if(M.level == 88)
					M.expreq = 179000
				if(M.level == 89)
					M.expreq = 185000
				if(M.level == 90)
					M.expreq = 191000
				if(M.level == 91)
					M.expreq = 198000
				if(M.level == 92)
					M.expreq = 205000
					M << "<font color = blue><b>You learn Fireroar!"
					M.spelllist += "Fireroar"
				if(M.level == 93)
					M.expreq = 212000
				if(M.level == 94)
					M.expreq = 219000
				if(M.level == 95)
					M.expreq = 226000
				if(M.level == 96)
					M.expreq = 231000
					M << "<font color = blue><b>You learn Blizmost!"
					M.spelllist += "Blizmost"
				if(M.level == 97)
					M.expreq = 238000
				if(M.level == 98)
					M.expreq = 245000
				if(M.level == 99)
					M.expreq = 252000
				if(M.level == 100)
					M.expreq = 259000
					if(job == "Beginner")
						M.color = "Brown"
						M << "<font color = blue><b>You have become a brown slime!"
						M.icon_state = "brown"
				if(M.level == 101)
					M.expreq = 267000
				if(M.level == 102)
					M.expreq = 285000
				if(M.level == 103)
					M.expreq = 300000
				if(M.level == 104)
					M.expreq = 315000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Zapmost!"
						M.spelllist += "Zapmost"
				if(M.level == 105)
					M.expreq = 330000
				if(M.level == 106)
					M.expreq = 345000
				if(M.level == 107)
					M.expreq = 360000
				if(M.level == 108)
					M.expreq = 375000
				if(M.level == 109)
					M.expreq = 390000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Extreme Blazemost!"
						M.spelllist += "Extreme Blazemost"
				if(M.level == 110)
					M.expreq = 405000
				if(M.level == 111)
					M.expreq = 425000
				if(M.level == 112)
					M.expreq = 445000
				if(M.level == 113)
					M.expreq = 465000
				if(M.level == 114)
					M.expreq = 485000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Firesoar!"
						M.spelllist += "Firesoar"
				if(M.level == 115)
					M.expreq = 505000
				if(M.level == 116)
					M.expreq = 525000
				if(M.level == 117)
					M.expreq = 545000
				if(M.level == 118)
					M.expreq = 565000
				if(M.level == 119)
					M.expreq = 585000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Master Blizzard!"
						M.spelllist += "Master Blizzard"
				if(M.level == 120)
					M.expreq = 615000
					M.color = "Purple"
					if(job == "Beginner")
						M << "<font color = blue><b>You have become a purple slime!"
						M.icon_state = "purple"
				if(M.level == 121)
					M.expreq = 640000
				if(M.level == 122)
					M.expreq = 675000
				if(M.level == 123)
					M.expreq = 700000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Thordain!"
						M.spelllist += "Thordain"
				if(M.level == 124)
					M.expreq = 735000
				if(M.level == 125)
					M.expreq = 770000
				if(M.level == 126)
					M.expreq = 805000
				if(M.level == 127)
					M.expreq = 840000
				if(M.level == 128)
					M.expreq = 875000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Blaze!"
						M.spelllist += "Death Blaze"
				if(M.level == 129)
					M.expreq = 900000
				if(M.level == 130)
					M.expreq = 935000
				if(M.level == 131)
					M.expreq = 970000
				if(M.level == 132)
					M.expreq = 1005000
				if(M.level == 133)
					M.expreq = 1040000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Firerage!"
						M.spelllist += "Firerage"
				if(M.level == 134)
					M.expreq = 1075000
				if(M.level == 135)
					M.expreq = 1100000
				if(M.level == 136)
					M.expreq = 1135000
				if(M.level == 137)
					M.expreq = 1170000
				if(M.level == 138)
					M.expreq = 1205000
				if(M.level == 139)
					M.expreq = 1240000
				if(M.level == 140)
					M.expreq = 1275000
					if(job == "Beginner")
						M.color = "White"
						M << "<font color = blue><b>You have become a white slime!"
						M.icon_state = "white"
				if(M.level == 141)
					M.expreq = 1300000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Icebolt!"
						M.spelllist += "Death Icebolt"
				if(M.level == 142)
					M.expreq = 1340000
				if(M.level == 143)
					M.expreq = 1380000
				if(M.level == 144)
					M.expreq = 1420000
				if(M.level == 145)
					M.expreq = 1460000
				if(M.level == 146)
					M.expreq = 1500000
				if(M.level == 147)
					M.expreq = 1540000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Thordainmore!"
						M.spelllist += "Thordainmore"
				if(M.level == 148)
					M.expreq = 1580000
				if(M.level == 149)
					M.expreq = 1620000
				if(M.level == 150)
					M.expreq = 1660000
				if(M.level == 151)
					M.expreq = 1700000
				if(M.level == 152)
					M.expreq = 1740000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Blazemore!"
						M.spelllist += "Death Blazemore"
				if(M.level == 153)
					M.expreq = 1780000
				if(M.level == 154)
					M.expreq = 1820000
				if(M.level == 155)
					M.expreq = 1860000
				if(M.level == 156)
					M.expreq = 1900000
				if(M.level == 157)
					M.expreq = 1920000
				if(M.level == 158)
					M.expreq = 1960000
				if(M.level == 159)
					M.expreq = 2020000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Fireplow!"
						M.spelllist += "Fireplow"
				if(M.level == 160)
					M.expreq = 2060000
				if(M.level == 161)
					M.expreq = 2100000
				if(M.level == 162)
					M.expreq = 2150000
				if(M.level == 163)
					M.expreq = 2200000
				if(M.level == 164)
					M.expreq = 2250000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Snowstorm!"
						M.spelllist += "Death Snowstorm"
				if(M.level == 165)
					M.expreq = 2300000
				if(M.level == 166)
					M.expreq = 2350000
				if(M.level == 167)
					M.expreq = 2400000
				if(M.level == 168)
					M.expreq = 2450000
				if(M.level == 169)
					M.expreq = 2500000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Thordainmost!"
						M.spelllist += "Thordainmost"
				if(M.level == 170)
					M.expreq = 2550000
					if(job == "Beginner")
						M.color = "Black"
						M << "<font color = blue><b>You have become a black slime!"
						M.icon_state = "black"
				if(M.level == 171)
					M.expreq = 2600000
				if(M.level == 172)
					M.expreq = 2650000
				if(M.level == 173)
					M.expreq = 2700000
				if(M.level == 174)
					M.expreq = 2750000
				if(M.level == 175)
					M.expreq = 2800000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Blazemost!"
						M.spelllist += "Death Blazemost"
				if(M.level == 176)
					M.expreq = 2850000
				if(M.level == 177)
					M.expreq = 2900000
				if(M.level == 178)
					M.expreq = 2950000
				if(M.level == 179)
					M.expreq = 3000000
				if(M.level == 180)
					M.expreq = 3060000
				if(M.level == 181)
					M.expreq = 3120000
				if(M.level == 182)
					M.expreq = 3180000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Firestreak!"
						M.spelllist += "Firestreak"
				if(M.level == 183)
					M.expreq = 3240000
				if(M.level == 184)
					M.expreq = 3300000
				if(M.level == 185)
					M.expreq = 3360000
				if(M.level == 186)
					M.expreq = 3420000
				if(M.level == 187)
					M.expreq = 3480000
				if(M.level == 188)
					M.expreq = 3540000
				if(M.level == 189)
					M.expreq = 3600000
				if(M.level == 190)
					M.expreq = 3660000
					if(job == "Beginner")
						M << "<font color = blue><b>You learn Death Blizzard!"
						M.spelllist += "Death Blizzard"
				if(M.level == 191)
					M.expreq = 3780000
				if(M.level == 192)
					M.expreq = 3840000
				if(M.level == 193)
					M.expreq = 3900000
				if(M.level == 194)
					M.expreq = 3960000
				if(M.level == 195)
					M.expreq = 4020000
				if(M.level == 196)
					M.expreq = 4080000
				if(M.level == 197)
					M.expreq = 4140000
				if(M.level == 198)
					M.expreq = 4200000
				if(M.level == 199)
					M.expreq = 4260000
				if(M.level == 200)
					M.expreq = 4320000
				if(M.level == 201)
					M.expreq = 4390000
				if(M.level == 202)
					M.expreq = 4460000
				if(M.level == 203)
					M.expreq = 4530000
				if(M.level == 204)
					M.expreq = 4600000
				if(M.level == 205)
					M.expreq = 4670000
				if(M.level == 206)
					M.expreq = 4740000
				if(M.level == 207)
					M.expreq = 4810000
				if(M.level == 208)
					M.expreq = 4880000
				if(M.level == 209)
					M.expreq = 4950000
				if(M.level == 210)
					M.expreq = 5020000
				if(M.level == 211)
					M.expreq = 5090000
				if(M.level == 212)
					M.expreq = 5160000
				if(M.level == 213)
					M.expreq = 5230000
				if(M.level == 214)
					M.expreq = 5300000
				if(M.level == 215)
					M.expreq = 5370000
				if(M.level == 216)
					M.expreq = 5440000
				if(M.level == 217)
					M.expreq = 5550000
				if(M.level == 218)
					M.expreq = 5620000
				if(M.level == 219)
					M.expreq = 5690000
				if(M.level == 220)
					M.expreq = 5760000
				if(M.level == 221)
					M.expreq = 5830000
				if(M.level == 222)
					M.expreq = 6000000
				if(M.level == 223)
					M.expreq = 6080000
				if(M.level == 224)
					M.expreq = 6160000
				if(M.level == 225)
					M.expreq = 6240000
				if(M.level == 226)
					M.expreq = 6320000
				if(M.level == 227)
					M.expreq = 6400000
				if(M.level == 228)
					M.expreq = 6480000
				if(M.level == 229)
					M.expreq = 6560000
				if(M.level == 230)
					M.expreq = 6640000
				if(M.level == 231)
					M.expreq = 6720000
				if(M.level == 232)
					M.expreq = 6800000
				if(M.level == 233)
					M.expreq = 6880000
				if(M.level == 234)
					M.expreq = 6960000
				if(M.level == 235)
					M.expreq = 7040000
				if(M.level == 236)
					M.expreq = 7120000
				if(M.level == 237)
					M.expreq = 7200000
				if(M.level == 238)
					M.expreq = 7280000
				if(M.level == 239)
					M.expreq = 7360000
				if(M.level == 240)
					M.expreq = 7440000
				if(M.level == 241)
					M.expreq = 7520000
				if(M.level == 242)
					M.expreq = 7600000
				if(M.level == 243)
					M.expreq = 7780000
				if(M.level == 244)
					M.expreq = 7860000
				if(M.level == 245)
					M.expreq = 7940000
				if(M.level == 246)
					M.expreq = 8020000
				if(M.level == 247)
					M.expreq = 8100000
				if(M.level == 248)
					M.expreq = 8180000
				if(M.level == 249)
					M.expreq = 8260000
				if(M.level == 250)
					M.expreq = 8340000
				if(M.level == 251)
					M.expreq = 8420000
				if(M.level == 252)
					M.expreq = 8500000
				if(M.level == 253)
					M.expreq = 8580000
				if(M.level == 254)
					M.expreq = 8660000
				if(M.level == 255)
					M.expreq = 8740000
				if(M.level == 256)
					M.expreq = 8820000
				if(M.level == 257)
					M.expreq = 8900000
				if(M.level == 258)
					M.expreq = 8980000
				if(M.level == 259)
					M.expreq = 9060000
				if(M.level == 260)
					M.expreq = 9140000
				if(M.level == 261)
					M.expreq = 9240000
				if(M.level == 262)
					M.expreq = 9340000
				if(M.level == 263)
					M.expreq = 9440000
				if(M.level == 264)
					M.expreq = 9540000
				if(M.level == 265)
					M.expreq = 9640000
				if(M.level == 266)
					M.expreq = 9740000
				if(M.level == 267)
					M.expreq = 9840000
				if(M.level == 268)
					M.expreq = 9940000
				if(M.level == 269)
					M.expreq = 10140000
				if(M.level == 270)
					M.expreq = 10240000
				if(M.level == 271)
					M.expreq = 10340000
				if(M.level == 272)
					M.expreq = 10440000
				if(M.level == 273)
					M.expreq = 10540000
				if(M.level == 274)
					M.expreq = 10640000
				if(M.level == 275)
					M.expreq = 10740000
				if(M.level == 276)
					M.expreq = 10840000
				if(M.level == 277)
					M.expreq = 10940000
				if(M.level == 278)
					M.expreq = 11040000
				if(M.level == 279)
					M.expreq = 11140000
				if(M.level == 280)
					M.expreq = 11240000
				if(M.level == 281)
					M.expreq = 11350000
				if(M.level == 282)
					M.expreq = 11460000
				if(M.level == 283)
					M.expreq = 11570000
				if(M.level == 284)
					M.expreq = 11680000
				if(M.level == 285)
					M.expreq = 11790000
				if(M.level == 286)
					M.expreq = 11900000
				if(M.level == 287)
					M.expreq = 12110000
				if(M.level == 288)
					M.expreq = 12220000
				if(M.level == 289)
					M.expreq = 12330000
				if(M.level == 290)
					M.expreq = 12440000
				if(M.level == 291)
					M.expreq = 12550000
				if(M.level == 292)
					M.expreq = 12660000
				if(M.level == 293)
					M.expreq = 12770000
				if(M.level == 294)
					M.expreq = 12880000
				if(M.level == 295)
					M.expreq = 12990000
				if(M.level == 296)
					M.expreq = 13100000
				if(M.level == 297)
					M.expreq = 13210000
				if(M.level == 298)
					M.expreq = 13320000
				if(M.level == 299)
					M.expreq = 13430000
				if(M.level == 300)
					M.expreq = 13650000
				if(M.level == 301)
					M.expreq = 13760000
				if(M.level == 302)
					M.expreq = 13870000
				if(M.level == 303)
					M.expreq = 13980000
				if(M.level == 304)
					M.expreq = 14090000
				if(M.level == 305)
					M.expreq = 14200000
				if(M.level == 306)
					M.expreq = 14320000
				if(M.level == 307)
					M.expreq = 14440000
				if(M.level == 308)
					M.expreq = 14560000
				if(M.level == 309)
					M.expreq = 14680000
				if(M.level == 310)
					M.expreq = 14800000
				if(M.level == 311)
					M.expreq = 14920000
				if(M.level == 312)
					M.expreq = 15040000
				if(M.level == 313)
					M.expreq = 15160000
				if(M.level == 314)
					M.expreq = 15280000
				if(M.level == 315)
					M.expreq = 15400000
				if(M.level == 316)
					M.expreq = 15520000
				if(M.level == 317)
					M.expreq = 15640000
				if(M.level == 318)
					M.expreq = 15760000
				if(M.level == 319)
					M.expreq = 15880000
				if(M.level == 320)
					M.expreq = 16000000
				if(M.level == 321)
					M.expreq = 16130000
				if(M.level == 322)
					M.expreq = 16260000
				if(M.level == 323)
					M.expreq = 16390000
				if(M.level == 324)
					M.expreq = 16420000
				if(M.level == 325)
					M.expreq = 16550000
				if(M.level == 326)
					M.expreq = 16680000
				if(M.level == 327)
					M.expreq = 16810000
				if(M.level == 328)
					M.expreq = 16940000
				if(M.level == 329)
					M.expreq = 17170000
				if(M.level == 330)
					M.expreq = 17300000
				if(M.level == 331)
					M.expreq = 17430000
				if(M.level == 332)
					M.expreq = 17560000
				if(M.level == 333)
					M.expreq = 17690000
				if(M.level == 334)
					M.expreq = 17820000
				if(M.level == 335)
					M.expreq = 17950000
				if(M.level == 336)
					M.expreq = 18080000
				if(M.level == 337)
					M.expreq = 18210000
				if(M.level == 338)
					M.expreq = 18340000
				if(M.level == 339)
					M.expreq = 18470000
				if(M.level == 340)
					M.expreq = 18600000
				if(M.level == 341)
					M.expreq = 18740000
				if(M.level == 342)
					M.expreq = 18880000
				if(M.level == 343)
					M.expreq = 19020000
				if(M.level == 344)
					M.expreq = 19160000
				if(M.level == 345)
					M.expreq = 19300000
				if(M.level == 346)
					M.expreq = 19440000
				if(M.level == 347)
					M.expreq = 19580000
				if(M.level == 348)
					M.expreq = 19720000
				if(M.level == 349)
					M.expreq = 19860000
				if(M.level == 350)
					M.expreq = 20000000
				if(M.level == 351)
					M.expreq = 20140000
				if(M.level == 352)
					M.expreq = 20280000
				if(M.level == 353)
					M.expreq = 20420000
				if(M.level == 354)
					M.expreq = 20560000
				if(M.level == 355)
					M.expreq = 20700000
				if(M.level == 356)
					M.expreq = 20840000
				if(M.level == 357)
					M.expreq = 20980000
				if(M.level == 358)
					M.expreq = 21120000
				if(M.level == 359)
					M.expreq = 21260000
				if(M.level == 360)
					M.expreq = 21400000
				if(M.level == 361)
					M.expreq = 21540000
				if(M.level == 362)
					M.expreq = 21680000
				if(M.level == 363)
					M.expreq = 21820000
				if(M.level == 364)
					M.expreq = 21960000
				if(M.level == 365)
					M.expreq = 22100000
				if(M.level == 366)
					M.expreq = 22240000
				if(M.level == 367)
					M.expreq = 22380000
				if(M.level == 368)
					M.expreq = 22520000
				if(M.level == 369)
					M.expreq = 22660000
				if(M.level == 370)
					M.expreq = 22800000
				if(M.level == 371)
					M.expreq = 22950000
				if(M.level == 372)
					M.expreq = 23100000
				if(M.level == 373)
					M.expreq = 23250000
				if(M.level == 374)
					M.expreq = 23400000
				if(M.level == 375)
					M.expreq = 23550000
				if(M.level == 376)
					M.expreq = 23700000
				if(M.level == 377)
					M.expreq = 23850000
				if(M.level == 378)
					M.expreq = 24000000
				if(M.level == 379)
					M.expreq = 24150000
				if(M.level == 380)
					M.expreq = 24300000
				if(M.level == 381)
					M.expreq = 24450000
				if(M.level == 382)
					M.expreq = 24600000
				if(M.level == 383)
					M.expreq = 24750000
				if(M.level == 384)
					M.expreq = 24900000
				if(M.level == 385)
					M.expreq = 25050000
				if(M.level == 386)
					M.expreq = 25200000
				if(M.level == 387)
					M.expreq = 25350000
				if(M.level == 388)
					M.expreq = 25500000
				if(M.level == 389)
					M.expreq = 25650000
				if(M.level == 390)
					M.expreq = 25800000
				if(M.level == 391)
					M.expreq = 25950000
				if(M.level == 392)
					M.expreq = 26100000
				if(M.level == 393)
					M.expreq = 26250000
				if(M.level == 394)
					M.expreq = 26400000
				if(M.level == 395)
					M.expreq = 26550000
				if(M.level == 396)
					M.expreq = 26700000
				if(M.level == 397)
					M.expreq = 26850000
				if(M.level == 398)
					M.expreq = 27000000
				if(M.level == 399)
					M.expreq = 27150000
				if(M.level == 400)
					M.expreq = 27310000
				if(M.level == 401)
					M.expreq = 27470000
				if(M.level == 402)
					M.expreq = 27630000
				if(M.level == 403)
					M.expreq = 27790000
				if(M.level == 404)
					M.expreq = 27950000
				if(M.level == 405)
					M.expreq = 28010000
				if(M.level == 406)
					M.expreq = 28170000
				if(M.level == 407)
					M.expreq = 28330000
				if(M.level == 408)
					M.expreq = 28490000
				if(M.level == 409)
					M.expreq = 28650000
				if(M.level == 410)
					M.expreq = 28810000
				if(M.level == 411)
					M.expreq = 28980000
				if(M.level == 412)
					M.expreq = 29150000
				if(M.level == 413)
					M.expreq = 29320000
				if(M.level == 414)
					M.expreq = 29490000
				if(M.level == 415)
					M.expreq = 29660000
				if(M.level == 416)
					M.expreq = 29830000
				if(M.level == 417)
					M.expreq = 30000000
				if(M.level == 418)
					M.expreq = 30170000
				if(M.level == 419)
					M.expreq = 30340000
				if(M.level == 420)
					M.expreq = 30510000
				if(M.level == 421)
					M.expreq = 30690000
				if(M.level == 422)
					M.expreq = 30870000
				if(M.level == 423)
					M.expreq = 31050000
				if(M.level == 424)
					M.expreq = 31230000
				if(M.level == 425)
					M.expreq = 31410000
				if(M.level == 426)
					M.expreq = 31590000
				if(M.level == 427)
					M.expreq = 31770000
				if(M.level == 428)
					M.expreq = 31950000
				if(M.level == 429)
					M.expreq = 32130000
				if(M.level == 430)
					M.expreq = 32310000
				if(M.level == 431)
					M.expreq = 32680000
				if(M.level == 432)
					M.expreq = 32870000
				if(M.level == 433)
					M.expreq = 33060000
				if(M.level == 434)
					M.expreq = 33250000
				if(M.level == 435)
					M.expreq = 33440000
				if(M.level == 436)
					M.expreq = 33630000
				if(M.level == 437)
					M.expreq = 33820000
				if(M.level == 438)
					M.expreq = 34010000
				if(M.level == 439)
					M.expreq = 34200000
				if(M.level == 440)
					M.expreq = 34390000
				if(M.level == 441)
					M.expreq = 34590000
				if(M.level == 442)
					M.expreq = 34790000
				if(M.level == 443)
					M.expreq = 34990000
				if(M.level == 444)
					M.expreq = 35190000
				if(M.level == 445)
					M.expreq = 35390000
				if(M.level == 446)
					M.expreq = 35590000
				if(M.level == 447)
					M.expreq = 35790000
				if(M.level == 448)
					M.expreq = 35990000
				if(M.level == 449)
					M.expreq = 36190000
				if(M.level == 450)
					M.expreq = 36390000
				if(M.level == 451)
					M.expreq = 36600000
				if(M.level == 452)
					M.expreq = 36810000
				if(M.level == 453)
					M.expreq = 37020000
				if(M.level == 454)
					M.expreq = 37230000
				if(M.level == 455)
					M.expreq = 37440000
				if(M.level == 456)
					M.expreq = 37650000
				if(M.level == 457)
					M.expreq = 37860000
				if(M.level == 458)
					M.expreq = 38070000
				if(M.level == 459)
					M.expreq = 38280000
				if(M.level == 460)
					M.expreq = 38490000
				if(M.level == 461)
					M.expreq = 38710000
				if(M.level == 462)
					M.expreq = 38930000
				if(M.level == 463)
					M.expreq = 39150000
				if(M.level == 464)
					M.expreq = 39370000
				if(M.level == 465)
					M.expreq = 39590000
				if(M.level == 466)
					M.expreq = 39810000
				if(M.level == 467)
					M.expreq = 40030000
				if(M.level == 468)
					M.expreq = 40250000
				if(M.level == 469)
					M.expreq = 40470000
				if(M.level == 470)
					M.expreq = 40690000
				if(M.level == 471)
					M.expreq = 40920000
				if(M.level == 472)
					M.expreq = 41150000
				if(M.level == 473)
					M.expreq = 41380000
				if(M.level == 474)
					M.expreq = 41610000
				if(M.level == 475)
					M.expreq = 41840000
				if(M.level == 476)
					M.expreq = 42070000
				if(M.level == 477)
					M.expreq = 42300000
				if(M.level == 478)
					M.expreq = 42530000
				if(M.level == 479)
					M.expreq = 42760000
				if(M.level == 480)
					M.expreq = 42990000
				if(M.level == 481)
					M.expreq = 43230000
				if(M.level == 482)
					M.expreq = 43470000
				if(M.level == 483)
					M.expreq = 43710000
				if(M.level == 484)
					M.expreq = 43950000
				if(M.level == 485)
					M.expreq = 44190000
				if(M.level == 486)
					M.expreq = 44430000
				if(M.level == 487)
					M.expreq = 44670000
				if(M.level == 488)
					M.expreq = 44910000
				if(M.level == 489)
					M.expreq = 45150000
				if(M.level == 490)
					M.expreq = 45390000
				if(M.level == 491)
					M.expreq = 45640000
				if(M.level == 492)
					M.expreq = 45890000
				if(M.level == 493)
					M.expreq = 46140000
				if(M.level == 494)
					M.expreq = 46390000
				if(M.level == 495)
					M.expreq = 46640000
				if(M.level == 496)
					M.expreq = 46890000
				if(M.level == 497)
					M.expreq = 47140000
				if(M.level == 498)
					M.expreq = 47390000
				if(M.level == 499)
					M.expreq = 47640000
				if(M.level == 500)
					M.expreq = 47840000
				if(M.level == 501)
					M.expreq = 48040000
				if(M.level == 502)
					M.expreq = 48240000
				if(M.level == 503)
					M.expreq = 48440000
				if(M.level == 504)
					M.expreq = 48640000
				if(M.level == 505)
					M.expreq = 48840000
				if(M.level == 506)
					M.expreq = 49040000
				if(M.level == 507)
					M.expreq = 49240000
				if(M.level == 508)
					M.expreq = 49440000
				if(M.level == 509)
					M.expreq = 49640000
				if(M.level == 510)
					M.expreq = 49840000
				if(M.level == 511)
					M.expreq = 50100000
				if(M.level == 512)
					M.expreq = 50300000
				if(M.level == 513)
					M.expreq = 50500000
				if(M.level == 514)
					M.expreq = 50700000
				if(M.level == 515)
					M.expreq = 50900000
				if(M.level == 516)
					M.expreq = 51100000
				if(M.level == 517)
					M.expreq = 51300000
				if(M.level == 518)
					M.expreq = 51500000
				if(M.level == 519)
					M.expreq = 51700000
				if(M.level == 520)
					M.expreq = 51900000
				if(M.level == 521)
					M.expreq = 52200000
				if(M.level == 522)
					M.expreq = 52500000
				if(M.level == 523)
					M.expreq = 52800000
				if(M.level == 524)
					M.expreq = 53100000
				if(M.level == 525)
					M.expreq = 53400000
				if(M.level == 526)
					M.expreq = 53700000
				if(M.level == 527)
					M.expreq = 54000000
				if(M.level == 528)
					M.expreq = 54300000
				if(M.level == 529)
					M.expreq = 54600000
				if(M.level == 530)
					M.expreq = 54900000
				if(M.level == 531)
					M.expreq = 55200000
				if(M.level == 532)
					M.expreq = 55500000
				if(M.level == 533)
					M.expreq = 55800000
				if(M.level == 534)
					M.expreq = 56100000
				if(M.level == 535)
					M.expreq = 56400000
				if(M.level == 536)
					M.expreq = 56800000
				if(M.level == 537)
					M.expreq = 57200000
				if(M.level == 538)
					M.expreq = 57600000
				if(M.level == 539)
					M.expreq = 58000000
				if(M.level == 540)
					M.expreq = 58400000
				if(M.level == 541)
					M.expreq = 58800000
				if(M.level == 542)
					M.expreq = 59200000
				if(M.level == 543)
					M.expreq = 59600000
				if(M.level == 544)
					M.expreq = 60000000
				if(M.level == 545)
					M.expreq = 60400000
				if(M.level == 546)
					M.expreq = 60800000
				if(M.level == 547)
					M.expreq = 61200000
				if(M.level == 548)
					M.expreq = 61600000
				if(M.level == 549)
					M.expreq = 62000000
				if(M.level == 550)
					M.expreq = 62500000
				if(M.level == 551)
					M.expreq = 63000000
				if(M.level == 552)
					M.expreq = 63500000
				if(M.level == 553)
					M.expreq = 64000000
				if(M.level == 554)
					M.expreq = 64500000
				if(M.level == 555)
					M.expreq = 65000000
				if(M.level == 556)
					M.expreq = 65500000
				if(M.level == 557)
					M.expreq = 66000000
				if(M.level == 558)
					M.expreq = 66500000
				if(M.level == 559)
					M.expreq = 67000000
				if(M.level == 560)
					M.expreq = 67500000
				if(M.level == 561)
					M.expreq = 68000000
				if(M.level == 568)
					M.expreq = 68500000
				if(M.level == 563)
					M.expreq = 69000000
				if(M.level == 564)
					M.expreq = 69500000
				if(M.level == 565)
					M.expreq = 70000000
				if(M.level == 566)
					M.expreq = 70500000
				if(M.level == 567)
					M.expreq = 71000000
				if(M.level == 568)
					M.expreq = 71500000
				if(M.level == 569)
					M.expreq = 72000000
				if(M.level == 570)
					M.expreq = 72500000
				if(M.level == 571)
					M.expreq = 73000000
				if(M.level == 572)
					M.expreq = 73500000
				if(M.level == 573)
					M.expreq = 74000000
				if(M.level == 574)
					M.expreq = 74500000
				if(M.level == 575)
					M.expreq = 75000000
				if(M.level == 576)
					M.expreq = 75600000
				if(M.level == 577)
					M.expreq = 76200000
				if(M.level == 578)
					M.expreq = 76800000
				if(M.level == 579)
					M.expreq = 77400000
				if(M.level == 580)
					M.expreq = 78000000
				if(M.level == 581)
					M.expreq = 78600000
				if(M.level == 582)
					M.expreq = 79200000
				if(M.level == 583)
					M.expreq = 79800000
				if(M.level == 584)
					M.expreq = 80400000
				if(M.level == 585)
					M.expreq = 81000000
				if(M.level == 586)
					M.expreq = 81600000
				if(M.level == 587)
					M.expreq = 82200000
				if(M.level == 588)
					M.expreq = 82800000
				if(M.level == 589)
					M.expreq = 83400000
				if(M.level == 590)
					M.expreq = 84000000
				if(M.level == 591)
					M.expreq = 84600000
				if(M.level == 592)
					M.expreq = 85200000
				if(M.level == 593)
					M.expreq = 85800000
				if(M.level == 594)
					M.expreq = 86400000
				if(M.level == 595)
					M.expreq = 87000000
				if(M.level == 596)
					M.expreq = 87600000
				if(M.level == 597)
					M.expreq = 88200000
				if(M.level == 598)
					M.expreq = 88800000
				if(M.level == 599)
					M.expreq = 89400000
				if(M.level == 600)
					M.expreq = 90000000
				if(M.level == 601)
					M.expreq = "Max Level"
					M << "<b><font color = blue>You have reached the max level!"
					world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Level!"
					sleep(5)
					world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Level!"
					sleep(5)
					world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Level!"
					sleep(5)
					world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Level!"
				checklevel(M)

