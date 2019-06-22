mob
	monster
		proc
			RandWalk()
				spawn while(1)
					step_rand(src)
					sleep(20)
			WaitToKill()
				if(src.islocked == 1)
					sleep(4200)
					del(src)
		Slime
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime"
			hp = 4
			mp = 0
			expreward = 3
			jobexpreward = 0
			gold = 2
			attack = 4
			defense = 1
			intelligence = 4
			agility = 2

		Red_Slime
			icon = 'slimes.dmi'
			icon_state = "red"
			name = "Red Slime"
			hp = 22
			mp = 0
			expreward = 8
			jobexpreward = 0
			gold = 8
			attack = 15
			defense = 13
			intelligence = 10
			agility = 14
			spell = list("Blaze")

		Slime_Guard
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime Guard"
			hp = 39
			mp = 0
			expreward = 13
			jobexpreward = 0
			gold = 14
			attack = 19
			defense = 17
			intelligence = 20
			agility = 18
			spell = list("Blaze")

		Slime_Commando
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime Commando"
			hp = 84
			mp = 0
			expreward = 38
			jobexpreward = 0
			gold = 54
			attack = 37
			defense = 33
			intelligence = 50
			agility = 36
			spell = list("Blaze")

		Yellow_Slime
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Yellow Slime"
			hp = 39
			mp = 0
			expreward = 18
			jobexpreward = 0
			gold = 20
			attack = 31
			defense = 25
			intelligence = 20
			agility = 22
			spell = list("Bolt")

		Advanced_Slime
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime"
			hp = 46
			mp = 0
			expreward = 24
			jobexpreward = 0
			gold = 32
			attack = 35
			defense = 29
			intelligence = 25
			agility = 25
			spell = list("Blaze","Firebal")

		Babble
			icon = 'slimes.dmi'
			icon_state = "babble"
			name = "Babble"
			poisondamage = 1
			hp = 75
			mp = 0
			expreward = 34
			jobexpreward = 0
			gold = 50
			attack = 49
			defense = 41
			intelligence = 50
			agility = 38
			spell = list("Poison","Firebal")

		Pink_Slime
			icon = 'slimes.dmi'
			icon_state = "pink"
			name = "Pink Slime"
			hp = 86
			mp = 0
			expreward = 41
			jobexpreward = 0
			gold = 58
			attack = 73
			defense = 59
			intelligence = 50
			agility = 40
			spell = list("Blazemore")

		Advanced_Red_Slime
			icon = 'slimes.dmi'
			icon_state = "red"
			name = "Red Slime"
			hp = 151
			mp = 0
			expreward = 121
			jobexpreward = 0
			gold = 100
			attack = 101
			defense = 89
			intelligence = 100
			agility = 89
			spell = list("Firebal","Blazemore")

		Powerful_Slime
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime"
			hp = 177
			mp = 0
			expreward = 142
			jobexpreward = 0
			gold = 121
			attack = 125
			defense = 100
			intelligence = 100
			agility = 104
			spell = list("Blazemore","Icebolt")

		Powerful_Red_Slime
			icon = 'slimes.dmi'
			icon_state = "red"
			name = "Red Slime"
			hp = 221
			mp = 0
			expreward = 176
			jobexpreward = 0
			gold = 151
			attack = 200
			defense = 123
			intelligence = 100
			agility = 125
			spell = list("Blazemore")

		Advanced_Yellow_Slime
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Yellow Slime"
			hp = 272
			mp = 0
			expreward = 200
			jobexpreward = 0
			gold = 200
			attack = 256
			defense = 145
			intelligence = 150
			agility = 158
			spell = list("Icebolt","Boltmore","Heal")

		Advanced_Babble
			icon = 'slimes.dmi'
			icon_state = "babble"
			name = "Babble"
			poisondamage = 1
			hp = 321
			mp = 0
			expreward = 278
			jobexpreward = 0
			gold = 253
			attack = 323
			defense = 221
			intelligence = 200
			agility = 213
			spell = list("Heal","Boltmore","Poisonmore")

		Brown_Slime
			icon = 'slimes.dmi'
			icon_state = "brown"
			name = "Brown Slime"
			hp = 380
			mp = 0
			expreward = 354
			jobexpreward = 0
			gold = 300
			attack = 412
			defense = 298
			intelligence = 300
			agility = 300
			spell = list("Quake")

		Skeleton
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			name = "Skeleton"
			hp = 500
			mp = 0
			expreward = 487
			jobexpreward = 0
			gold = 213
			attack = 524
			defense = 365
			intelligence = 500
			agility = 378
			weakholy = 1
			weakwind = 1
			spell = list("Bone Throw")

		Unique_Skeleton
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			name = "Skeleton"
			hp = 2323
			mp = 0
			expreward = 1070
			jobexpreward = 0
			gold = 500
			attack = 1500
			defense = 1000
			intelligence = 1200
			agility = 865
			weakholy = 1
			weakwind = 1
			spell = list("Bone Throw")

		Demonite
			icon = 'slimes.dmi'
			icon_state = "demonite"
			name = "Demonite"
			hp = 521
			mp = 0
			expreward = 534
			jobexpreward = 0
			gold = 223
			attack = 586
			defense = 391
			intelligence = 600
			agility = 401
			spell = list("Boom","Healmore")

		Baby_Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Baby Dragon"
			hp = 521
			mp = 0
			expreward = 586
			jobexpreward = 0
			gold = 342
			attack = 735
			defense = 490
			intelligence = 900
			agility = 565
			weakice = 1
			spell = list("Boom","Flame Breath")

		Unique_Baby_Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Baby Dragon"
			hp = 5342
			mp = 0
			expreward = 2321
			jobexpreward = 0
			gold = 1000
			attack = 1692
			defense = 1128
			intelligence = 1300
			agility = 1231
			weakice = 1
			spell = list("Boom","Flame Breath")

		Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Dragon"
			hp = 756
			mp = 0
			expreward = 768
			jobexpreward = 0
			gold = 686
			attack = 1017
			defense = 678
			intelligence = 1100
			agility = 786
			weakice = 1
			spell = list("Boom","Flame Breath")

		Unique_Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Dragon"
			hp = 7564
			mp = 0
			expreward = 3425
			jobexpreward = 0
			gold = 1500
			attack = 2797
			defense = 1865
			intelligence = 1600
			agility = 1500
			weakice = 1
			spell = list("Boom","Flame Breath")

		Advanced_Demonite
			icon = 'slimes.dmi'
			icon_state = "sdemonite"
			name = "Demonite"
			hp = 1067
			mp = 0
			expreward = 907
			jobexpreward = 0
			gold = 890
			attack = 1179
			defense = 786
			intelligence = 1300
			agility = 900
			spell = list("Boommore","Healmore")

		Unique_Demonite
			icon = 'slimes.dmi'
			icon_state = "sdemonite"
			name = "Demonite"
			hp = 10234
			mp = 0
			expreward = 3876
			jobexpreward = 0
			gold = 2000
			attack =  2964
			defense = 1976
			intelligence = 2000
			agility = 2000
			spell = list("Boommore","Healmore")

		Winged_Demon
			icon = 'slimes.dmi'
			icon_state = "wingedbeast"
			name = "Winged Demon"
			hp = 1253
			mp = 0
			expreward = 1067
			jobexpreward = 0
			gold = 1000
			attack = 1483
			defense = 989
			intelligence = 1600
			agility = 1100
			weakwind = 1
			spell = list("Tornado")

		Evil_Bear
			icon = 'slimes.dmi'
			icon_state = "bearbeast"
			name = "Evil Bear"
			hp = 2123
			mp = 0
			expreward = 1200
			jobexpreward = 0
			gold = 1324
			attack = 1647
			defense = 1098
			intelligence = 1600
			agility = 1100
			weakfire = 1
			weakholy = 1
			spell = list("Pounce")

		Lion
			icon = 'slimes.dmi'
			icon_state = "lion"
			name = "Lion"
			hp = 2562
			mp = 0
			expreward = 1256
			jobexpreward = 0
			gold = 1500
			attack = 1662
			defense = 1108
			intelligence = 1750
			agility = 1250
			weakfire = 1
			spell = list("Pounce")

		Unique_Lion
			icon = 'slimes.dmi'
			icon_state = "lion"
			name = "Lion"
			hp = 12532
			mp = 0
			expreward = 4020
			jobexpreward = 0
			gold = 2000
			attack = 3514
			defense = 2343
			intelligence = 3450
			agility = 7500
			weakfire = 1
			spell = list("Pounce")

		Blood_Babble
			icon = 'slimes.dmi'
			icon_state = "bloodbabble"
			name = "Blood Babble"
			hp = 3432
			mp = 0
			disease = 1
			expreward = 1375
			jobexpreward = 0
			gold = 2000
			attack = 1848
			defense = 1232
			intelligence = 2000
			agility = 1500
			weakearth = 1
			spell = list("Disease","Blazemost")

		Unique_Blood_Babble
			icon = 'slimes.dmi'
			icon_state = "bloodbabble"
			name = "Blood Babble"
			hp = 16546
			mp = 0
			disease = 1
			expreward = 4645
			jobexpreward = 0
			gold = 2500
			attack = 3819
			defense = 2546
			intelligence = 4500
			agility = 10000
			weakearth = 1
			spell = list("Disease","Blazemost")

		Goat_Horn
			icon = 'slimes.dmi'
			icon_state = "goathorn"
			name = "Goat Horn"
			hp = 8790
			mp = 0
			expreward = 2214
			jobexpreward = 6
			gold = 2500
			attack = 2803
			defense = 1869
			intelligence = 3000
			agility = 2500
			spell = list("Ram")

		Dark_Slime
			icon = 'slimes.dmi'
			icon_state = "black"
			name = "Dark Slime"
			hp = 10235
			mp = 0
			expreward = 2535
			jobexpreward = 10
			gold = 3000
			attack = 3652
			defense = 2435
			intelligence = 4000
			agility = 4000
			weakholy = 1
			weakearth = 1
			spell = list("Evil Flare")

		SkeletonJ
			icon = 'slimes.dmi'
			icon_state = "skeleton"
			name = "Skeleton"
			hp = 12424
			mp = 0
			expreward = 3535
			jobexpreward = 25
			gold = 5000
			attack = 4011
			defense = 2674
			intelligence = 4000
			agility = 5000
			weakholy = 1
			weakwind = 1
			spell = list("Spiked Bone Throw")

		Desert_Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Desert Dragon"
			hp = 13425
			mp = 0
			expreward = 3867
			jobexpreward = 50
			gold = 7500
			attack = 4302
			defense = 2868
			intelligence = 4500
			agility = 5500
			weakice = 1
			spell = list("Heavy Flame Breath","Blazemost")

		Unique_Desert_Dragon
			icon = 'slimes.dmi'
			icon_state = "bdragon"
			name = "Desert Dragon"
			hp = 22124
			mp = 0
			expreward = 5234
			jobexpreward = 75
			gold = 2500
			attack = 5350
			defense = 3567
			intelligence = 6000
			agility = 12000
			weakice = 1
			spell = list("Heavy Flame Breath","Blazemost")

		Warrior
			icon = 'slimes.dmi'
			icon_state = "ragnar"
			name = "Blood Warrior"
			hp = 23424
			mp = 0
			expreward = 4012
			jobexpreward = 100
			gold = 8000
			attack = 4893
			defense = 3262
			intelligence = 4000
			agility = 1000
			weakfire = 1
			weakthunder = 1
			spell = list("Fire Slash")

		Clear_Blood_Slime
			icon = 'slimes.dmi'
			icon_state = "bloodclear"
			name = "Clear Blood Slime"
			hp = 26754
			mp = 0
			disease = 1
			expreward = 4563
			jobexpreward = 150
			gold = 12000
			attack = 5800
			defense = 3867
			intelligence = 5000
			agility = 1200
			weakearth = 1
			spell = list("Disease")

		Fire_Demon
			icon = 'slimes.dmi'
			icon_state = "wingedbeast"
			name = "Fire Demon"
			hp = 32123
			mp = 0
			expreward = 5312
			jobexpreward = 200
			gold = 17500
			attack = 6334
			defense = 4223
			intelligence = 5500
			agility = 3000
			weakice = 1
			weakwind = 1
			spell = list("Flame Tornado")

		Unique_Fire_Demon
			icon = 'slimes.dmi'
			icon_state = "wingedbeast"
			name = "Fire Demon"
			hp = 42342
			mp = 0
			expreward = 6342
			jobexpreward = 300
			gold = 28000
			attack = 7819
			defense = 5213
			intelligence = 6500
			agility = 3500
			weakice = 1
			weakwind = 1
			spell = list("Flame Tornado")

		Fire_Bear
			icon = 'slimes.dmi'
			icon_state = "firebear"
			name = "Fire Bear"
			hp = 37450
			mp = 0
			expreward = 5887
			jobexpreward = 225
			gold = 20000
			attack = 7150
			defense = 4767
			intelligence = 6000
			agility = 6000
			weakice = 1
			spell = list("Fire Bite")

		Fire_Slime
			icon = 'slimes.dmi'
			icon_state = "fire"
			name = "Fire Slime"
			hp = 40234
			mp = 0
			expreward = 6123
			jobexpreward = 250
			gold = 22000
			attack = 7467
			defense = 4978
			intelligence = 6750
			agility = 7000
			weakice = 1
			weakearth = 1
			spell = list("Blazemost","Snowstorm")

		Unique_Fire_Slime
			icon = 'slimes.dmi'
			icon_state = "fire"
			name = "Fire Slime"
			hp = 46577
			mp = 0
			expreward = 6857
			jobexpreward = 350
			gold = 30000
			attack = 8469
			defense = 5646
			intelligence = 7500
			agility = 8000
			weakice = 1
			weakwind = 1
			spell = list("Blazemost","Snowstorm")

		Fire_Demonite
			icon = 'slimes.dmi'
			icon_state = "fdemonite"
			name = "Fire Demonite"
			hp = 46254
			mp = 0
			expreward = 7345
			jobexpreward = 350
			gold = 25000
			attack = 8898
			defense = 5932
			intelligence = 7250
			agility = 6000
			weakice = 1
			spell = list("Snowstorm","Healmost","Explodet")

		Unique_Fire_Demonite
			icon = 'slimes.dmi'
			icon_state = "fdemonite"
			name = "Fire Demonite"
			hp = 52343
			mp = 0
			expreward = 7897
			jobexpreward = 450
			gold = 30000
			attack = 9817
			defense = 6545
			intelligence = 8000
			agility = 7000
			weakice = 1
			spell = list("Snowstorm","Healmost","Explodet")

		Flamed_Human
			icon = 'slimes.dmi'
			icon_state = "flamedhuman"
			name = "Flamed Human"
			hp = 55392
			mp = 0
			expreward = 7900
			jobexpreward = 400
			gold = 27500
			attack = 9951
			defense = 6634
			intelligence = 7500
			agility = 8000
			weakice = 1

		Bloody_Fire_Babble
			icon = 'slimes.dmi'
			icon_state = "bloodyfirebabble"
			name = "Bloody Fire Babble"
			hp = 61234
			mp = 0
			disease = 1
			expreward = 8234
			jobexpreward = 500
			gold = 29000
			attack = 10617
			defense = 7078
			intelligence = 8750
			agility = 9000
			weakice = 1
			spell = list("Snowstorm","Diseasemore","Explodet")

		Unique_Bloody_Fire_Babble
			icon = 'slimes.dmi'
			icon_state = "bloodyfirebabble"
			name = "Bloody Fire Babble"
			hp = 68456
			mp = 0
			disease = 1
			expreward = 9121
			jobexpreward = 600
			gold = 40000
			attack = 11652
			defense = 7768
			intelligence = 9500
			agility = 9000
			weakice = 1
			spell = list("Snowstorm","Diseasemore","Explodet")

		Masterful_Slime
			icon = 'slimes.dmi'
			icon_state = "blue"
			name = "Slime"
			hp = 82342
			mp = 0
			expreward = 8674
			jobexpreward = 550
			gold = 31000
			attack = 11479
			defense = 7653
			intelligence = 9500
			agility = 9000
			weakearth = 1
			spell = list("Firevolt","Death Blaze")

		Masterful_Red_Slime
			icon = 'slimes.dmi'
			icon_state = "red"
			name = "Red Slime"
			hp = 93750
			mp = 0
			expreward = 9123
			jobexpreward = 600
			gold = 32340
			attack = 12186
			defense = 8124
			intelligence = 10000
			agility = 10000
			weakearth = 1
			spell = list("Firevolt","Death Blaze")

		Masterful_Yellow_Slime
			icon = 'slimes.dmi'
			icon_state = "yellow"
			name = "Yellow Slime"
			hp = 99845
			mp = 0
			expreward = 9878
			jobexpreward = 700
			gold = 35454
			attack = 13150
			defense = 8767
			intelligence = 10500
			agility = 10000
			weakearth = 1
			spell = list("Zap","Healmost")

		Masterful_Babble
			icon = 'slimes.dmi'
			icon_state = "babble"
			name = "Babble"
			poisondamage = 1
			hp = 106342
			mp = 0
			expreward = 10342
			jobexpreward = 750
			gold = 38796
			attack = 13864
			defense = 9243
			intelligence = 11000
			agility = 10000
			weakearth = 1
			spell = list("Poisonmore","Gale")

		Masterful_Pink_Slime
			icon = 'slimes.dmi'
			icon_state = "pink"
			name = "Pink Slime"
			hp = 123402
			mp = 0
			expreward = 11098
			jobexpreward = 850
			gold = 41343
			attack = 15117
			defense = 10078
			intelligence = 12000
			agility = 10000
			weakearth = 1
			spell = list("Gale","Zap","Healmost")

		Masterful_Brown_Slime
			icon = 'slimes.dmi'
			icon_state = "brown"
			name = "Brown Slime"
			hp = 137002
			mp = 0
			expreward = 11998
			jobexpreward = 950
			gold = 43333
			attack = 16797
			defense = 11198
			intelligence = 12500
			agility = 10000
			weakearth = 1
			spell = list("Earthquake","Healmost")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Marsh_Monster
			icon = 'turfs.dmi'
			icon_state = "marsh"
			name = "Marsh"
			hp = 239086
			mp = 0
			expreward = 12898
			jobexpreward = 1100
			gold = 50000
			attack = 18970
			defense = 12529
			intelligence = 15000
			agility = 15000
			weakholy = 1
			weakfire = 1
			lockedforever = 1
			spell = list("Healmost","Poisonmost","Earthquake","Gale","Zap")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Living_Tree
			icon = 'Slimes.dmi'
			icon_state = "livingtree"
			name = "Living Tree"
			hp = 780654
			mp = 0
			expreward = 15289
			jobexpreward = 1550
			gold = 55000
			attack = 72305
			defense = 65867
			intelligence = 100000
			agility = 100000
			weakfire = 1
			weakthunder = 1
			weakwind = 1
			spell = list("Earth Roar","Super Heal")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Living_Enflamed_Tree
			icon = 'Slimes.dmi'
			icon_state = "livingftree"
			name = "Living Enflamed Tree"
			hp = 8935251
			mp = 0
			expreward = 21325
			jobexpreward = 1800
			gold = 60000
			attack = 132569
			defense = 119070
			intelligence = 125000
			agility = 125000
			weakice = 1
			weakthunder = 1
			weakwind = 1
			spell = list("Earth Roar","Super Heal","Engulph")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Living_Frozen_Tree
			icon = 'Slimes.dmi'
			icon_state = "livingitree"
			name = "Living Frozen Tree"
			hp = 10774322
			mp = 0
			expreward = 23424
			jobexpreward = 2000
			gold = 75000
			attack = 152542
			defense = 142321
			intelligence = 140000
			agility = 140000
			weakice = 1
			weakthunder = 1
			weakwind = 1
			spell = list("Earth Roar","Super Heal","Ice Blades")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Living_Tree2
			icon = 'Slimes.dmi'
			icon_state = "livingtree"
			name = "Living Tree"
			hp = 14774322
			mp = 0
			expreward = 27424
			jobexpreward = 2500
			gold = 90000
			attack = 162542
			defense = 148321
			intelligence = 150000
			agility = 150000
			weakfire = 1
			weakthunder = 1
			weakwind = 1
			spell = list("Earth Roar","Super Heal")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		Living_Enflamed_Tree2
			icon = 'Slimes.dmi'
			icon_state = "livingftree"
			name = "Living Enflamed Tree"
			hp = 17774322
			mp = 0
			expreward = 33000
			jobexpreward = 3500
			gold = 90000
			attack = 182542
			defense = 168321
			intelligence = 170000
			agility = 170000
			weakfire = 1
			weakthunder = 1
			weakwind = 1
			spell = list("Earth Roar","Super Heal","Engulph")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Blue_Slime
			icon = 'Slimes.dmi'
			icon_state = "blue"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Red_Slime
			icon = 'Slimes.dmi'
			icon_state = "red"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Yellow_Slime
			icon = 'Slimes.dmi'
			icon_state = "yellow"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Pink_Slime
			icon = 'Slimes.dmi'
			icon_state = "pink"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Purple_Slime
			icon = 'Slimes.dmi'
			icon_state = "purple"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Green_Slime
			icon = 'Slimes.dmi'
			icon_state = "green"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Brown_Slime
			icon = 'Slimes.dmi'
			icon_state = "brown"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_White_Slime
			icon = 'Slimes.dmi'
			icon_state = "white"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Perfect_Black_Slime
			icon = 'Slimes.dmi'
			icon_state = "black"
			name = "The Perfect Slime"
			hp = 35000000
			mp = 0
			expreward = 50000
			jobexpreward = 5000
			gold = 150000
			attack = 250000
			defense = 225000
			intelligence = 232500
			agility = 232500
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		The_Chosen_Lord
			icon = 'Slimes.dmi'
			icon_state = "blue"
			name = "The Chosen Lord"
			hp = 1000000000000000
			mp = 0
			expreward = 5000000
			jobexpreward = 500000
			gold = 150000000
			attack = 2500000
			defense = 2250000
			intelligence = 2325000
			agility = 2325000
			spell = list("Earth Roar","Super Heal","Engulph","Ice Blades","Zap","Gale","Poisonmost","Diseasemore")
			Bumped(O)
				if(src.battle == 1)
					usr << "<font color = blue><b>Monster is currently being fought."
					return
				else
					usr.fighting=src
					usr.islocked=1
					src.islocked=1
					usr.battle = 1
					src.battle = 1
					MonsterNumber()

		New()
			src.RandWalk()
			src.WaitToKill()
			..()

mob/monster/New()
	..()
	agility*=3
	attack*=1.75
	attack = round(attack)