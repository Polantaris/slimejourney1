obj
	QuestItems
		icon = 'turfs.dmi'
		icon_state = "item"
		Pass
			verb
				Info()
					usr << "<font color = blue><b>This is a pass to leave the town you start in."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Pass!"

		Wierd_Crystal
			verb
				Info()
					usr << "<font color = blue><b>A strange looking crystal that makes you want to believe there's something you need it for..."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Wierd Crystal!"

		Sphere
			verb
				Info()
					usr << "<font color = blue><b>A sphere that you hold on to because it was so expensive."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Sphere!"

		Bronze_Sphere
			verb
				Info()
					usr << "<font color = blue><b>A sphere that you found in the forest.  It was guarded by monsters so you assume it is something you need."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Bronze Sphere!"

		Silver_Sphere
			verb
				Info()
					usr << "<font color = blue><b>A treasured sphere sold for huge expensizes.  It was an ancient item in the lion history."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Silver Sphere!"

		Gold_Sphere
			verb
				Info()
					usr << "<font color = blue><b>Seems to be a piece of the Master Sphere.  When you look into it, you see a world much like when you first entered the past.  A demon is sitting at a throne and monsters are worshiping him.  This must be the thing you must defeat to fix your time."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Gold Sphere!"

		Plantinum_Sphere
			verb
				Info()
					usr << "<font color = blue><b>Seems to be a piece of the Master Sphere.  It is very cold and seems to be made out of a thick metal.  When you hold it like a crystal ball, you are boggled with a vision of some demon that is not clear to you."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Plantinum Sphere!"

		Master_Sphere
			verb
				Info()
					usr << "<font color = blue><b>The Master Sphere.  The sphere you need to put on the shrine to go to the evil demon you saw when you looked into the Gold Sphere.  When you look into this sphere, it looks like a map.  You don't seem to be anywhere on the map for there is no red portion on it.  You assume it is the map of the place you will go to when you put this sphere on the shrine."
				Drop()
					usr << "<font color = blue><b>You have a strong urge to keep the Master Sphere!"


	NormalItems
		icon = 'turfs.dmi'
		icon_state = "item"
		Herb
			verb
				Info()
					usr << "<b><font color = blue>This item heals 10 - 30 HP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(10,30)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)

		Large_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item heals 50 - 100 HP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Large Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(50,100)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)

		Huge_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item heals 150 - 300 HP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Huge Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(150,300)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						del(src)

		Perfect_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item fully heals you on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Perfect Herb!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You are fully healed!"
						usr.hp = usr.maxhp
						del(src)

		Magic_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item restores 5 - 20 MP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Magic Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(5,20)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You restored [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)

		Large_Magic_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item restores 40 - 80 MP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Large Magic Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(40,80)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You restored [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)

		Huge_Magic_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item restores 100 - 200 MP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Huge Magic Herb!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(100,200)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You restored [healed] MP!"
						usr.mp += healed
						if(usr.mp >= usr.maxmp)
							usr.mp = usr.maxmp
						del(src)

		Perfect_Magic_Herb
			verb
				Info()
					usr << "<b><font color = blue>This item fully restores your MP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Perfect Magic Herb!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You restored all of your MP!"
						usr.mp = usr.maxmp
						del(src)


		Miracle_Potion
			verb
				Info()
					usr << "<b><font color = blue>This item gives all your stats + 1 and you HP & MP + 5"
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Miracle Potion!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>This item is unuseable in combat!"
					else
						usr << "<b><font color = blue>All of your stats gain + 1 and your HP and MP get + 5!"
						usr.maxhp += 5
						usr.maxmp += 5
						usr.attack += 1
						usr.agility += 1
						usr.defense += 1
						usr.intelligence += 1
						del(src)
						usr << "<font color = blue><b>The [src] desinigrates!"

		Large_Miracle_Potion
			verb
				Info()
					usr << "<b><font color = blue>This item gives all your stats + 10 and you HP & MP + 50"
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Large Miracle Potion!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>This item is unuseable in combat!"
					else
						usr << "<b><font color = blue>All of your stats gain + 10 and your HP and MP get + 50!"
						usr.maxhp += 50
						usr.maxmp += 50
						usr.attack += 10
						usr.agility += 10
						usr.defense += 10
						usr.intelligence += 10
						del(src)
						usr << "<font color = blue><b>The [src] desinigrates!"

		Huge_Miracle_Potion
			verb
				Info()
					usr << "<b><font color = blue>This item gives all your stats + 50 and you HP & MP + 250"
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Miracle Potion!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>This item is unuseable in combat!"
					else
						usr << "<b><font color = blue>All of your stats gain + 50 and your HP and MP get + 250!"
						usr.maxhp += 250
						usr.maxmp += 250
						usr.attack += 50
						usr.agility += 50
						usr.defense += 50
						usr.intelligence += 50
						del(src)
						usr << "<font color = blue><b>The [src] desinigrates!"

		Lunch
			verb
				Info()
					usr << "<b><font color = blue>This item heals 15 - 25 HP on use."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Lunch!"
						src.Move(usr.loc)
				Use()
					var
						healed = rand(15,25)
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						usr << "<b><font color = blue>You are healed [healed] HP!"
						usr.hp += healed
						if(usr.hp >= usr.maxhp)
							usr.hp = usr.maxhp
						usr.lunch = 0
						del(src)

		Antidote
			verb
				Info()
					usr << "<b><font color = blue>This item cures poison."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Antidote!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						if(usr.poisoned == 1)
							usr << "<b><font color = blue>The poison leaves your body!"
							usr.poisoned = 0
							del(src)
						else
							usr << "<b><font color = blue>You're not poisoned!"

		Disease_Nuller
			verb
				Info()
					usr << "<b><font color = blue>This item nullifies disease."
				Drop()
					if(usr.battle == 1)
						usr << "<b><font color = blue>You can't drop items in battle!"
					else
						usr << "<b><font color = blue>You drop the Disease Nuller!"
						src.Move(usr.loc)
				Use()
					if(usr.battle == 1)
						usr << "<b><font color = blue>Use the menu in battle to use this item!"
					else
						if(usr.diseased == 1)
							usr << "<b><font color = blue>The disease in your body has been nullified!"
							usr.diseased = 0
							del(src)
						else
							usr << "<b><font color = blue>You're not diseased!"
