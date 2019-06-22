mob
	proc
		joblevelup(mob/M)
			if(M.job == "Swordsman")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Rapid Slash","Money Slash","Attack Up","Defense Up"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Rapid Slash")
						if(M.rapidslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.rapidslash += 1
							M.joblevel += 1
					if("Money Slash")
						if(M.moneyslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.moneyslash += 1
							M.joblevel += 1
					if("Attack Up")
						if(M.attup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.attup += 1
							M.joblevel += 1
					if("Defense Up")
						if(M.defup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.defup += 1
							M.joblevel += 1
			if(M.job == "Spellcaster")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Fire","Ice","Thunder","Wind","Earth"))
					if("Fire")
						if(M.fire == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fire += 1
							M.joblevel += 1
					if("Ice")
						if(M.ice == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ice += 1
							M.joblevel += 1
					if("Thunder")
						if(M.thunder == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.thunder += 1
							M.joblevel += 1
					if("Wind")
						if(M.wind == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.wind += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
			if(M.job == "Thief")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Double Hit","Luck Up","Spark","Agility Up","Steal"))
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Luck Up")
						if(M.lukup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.lukup += 1
							M.joblevel += 1
					if("Spark")
						if(M.spark == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.spark += 1
							M.joblevel += 1
					if("Agility Up")
						if(M.aglup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.aglup += 1
							M.joblevel += 1
					if("Steal")
						if(M.steal == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.joblevel += 1
							M.steal += 1
			if(M.job == "Priest")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Heal","Devenom","Holy Bolt","Intelligence Up","Mind Games"))
					if("Heal")
						if(M.heal == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Devenom")
						if(M.devenom == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.devenom += 1
							M.joblevel += 1
					if("Holy Bolt")
						if(M.holybolt == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holybolt += 1
							M.joblevel += 1
					if("Intelligence Up")
						if(M.intup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.intup += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
			if(M.job == "Equaler")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Earth","Double Hit","Mind Games","Holy Veil"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
					if("Holy Veil")
						if(M.holyveil == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holyveil += 1
							M.joblevel += 1
			if(M.job == "Bladesman")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Rapid Slash","Money Slash","Attack Up","Defense Up","Fire Slash","Ice Slash","Thunder Slash","Earth Slash","Wind Slash"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Rapid Slash")
						if(M.rapidslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.rapidslash += 1
							M.joblevel += 1
					if("Money Slash")
						if(M.moneyslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.moneyslash += 1
							M.joblevel += 1
					if("Attack Up")
						if(M.attup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.attup += 1
							M.joblevel += 1
					if("Defense Up")
						if(M.defup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.defup += 1
							M.joblevel += 1
					if("Fire Slash")
						if(M.fs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fs += 1
							M.joblevel += 1
					if("Ice Slash")
						if(M.is == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.is += 1
							M.joblevel += 1
					if("Thunder Slash")
						if(M.ts == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ts += 1
							M.joblevel += 1
					if("Earth Slash")
						if(M.es == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.es += 1
							M.joblevel += 1
					if("Wind Slash")
						if(M.ws == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ws += 1
							M.joblevel += 1
			if(M.job == "Multicaster")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Fire","Ice","Thunder","Wind","Earth","Extreme Fire","Extreme Ice","Extreme Thunder","Extreme Wind","Extreme Earth"))
					if("Fire")
						if(M.fire == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fire += 1
							M.joblevel += 1
					if("Ice")
						if(M.ice == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ice += 1
							M.joblevel += 1
					if("Thunder")
						if(M.thunder == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.thunder += 1
							M.joblevel += 1
					if("Wind")
						if(M.wind == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.wind += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
					if("Extreme Fire")
						if(M.efire == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.efire += 1
							M.joblevel += 1
					if("Extreme Ice")
						if(M.eice == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.joblevel += 1
							M.eice += 1
					if("Extreme Thunder")
						if(M.ethunder == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ethunder += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
					if("Extreme Earth")
						if(M.eearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.eearth += 1
							M.joblevel += 1
			if(M.job == "Assassin")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Double Hit","Luck Up","Spark","Agility Up","Steal","Multiple Hit","Scare","Fireworks","Extreme Wind","Spikes"))
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Luck Up")
						if(M.lukup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.lukup += 1
							M.joblevel += 1
					if("Spark")
						if(M.spark == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.spark += 1
							M.joblevel += 1
					if("Agility Up")
						if(M.aglup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.aglup += 1
							M.joblevel += 1
					if("Steal")
						if(M.steal == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.steal += 1
							M.joblevel += 1
					if("Multiple Hit")
						if(M.multihit == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.multihit += 1
							M.joblevel += 1
					if("Scare")
						if(M.scare == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.scare += 1
							M.joblevel += 1
					if("Fireworks")
						if(M.fworks == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fworks += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
					if("Spikes")
						if(M.sp == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.sp += 1
							M.joblevel += 1
			if(M.job == "Monk")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Heal","Devenom","Holy Bolt","Intelligence Up","Mind Games","Scary Eyes","Holy Lightning","Sleep","Extreme Wind"))
					if("Heal")
						if(M.heal == 30)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Devenom")
						if(M.devenom == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.devenom += 1
							M.joblevel += 1
					if("Holy Bolt")
						if(M.holybolt == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holybolt += 1
							M.joblevel += 1
					if("Intelligence Up")
						if(M.intup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.intup += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
					if("Scary Eyes")
						if(M.seyes == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.seyes += 1
							M.joblevel += 1
					if("Holy Lightning")
						if(M.holylit == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holylit += 1
							M.joblevel += 1
					if("Sleep")
						if(M.sleeps == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.sleeps += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
			if(M.job == "Greatener")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Earth","Double Hit","Mind Games","Holy Veil","Fire Slash","Extreme Earth","Heal","Scare","Almighty Veil"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
					if("Holy Veil")
						if(M.holyveil == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holyveil += 1
							M.joblevel += 1
					if("Fire Slash")
						if(M.fs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fs += 1
							M.joblevel += 1
					if("Extreme Earth")
						if(M.eearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.eearth += 1
							M.joblevel += 1
					if("Scare")
						if(M.scare == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.scare += 1
							M.joblevel += 1
					if("Heal")
						if(M.heal == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Almighty Veil")
						if(M.alveil == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.alveil += 1
							M.joblevel += 1
			if(M.job == "Warrior")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Rapid Slash","Money Slash","Attack Up","Defense Up","Fire Slash","Ice Slash","Thunder Slash","Earth Slash","Wind Slash","Double Fire Slash","Double Ice Slash","Double Thunder Slash","Double Earth Slash","Double Wind Slash"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Rapid Slash")
						if(M.rapidslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.rapidslash += 1
							M.joblevel += 1
					if("Money Slash")
						if(M.moneyslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.moneyslash += 1
							M.joblevel += 1
					if("Attack Up")
						if(M.attup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.attup += 1
							M.joblevel += 1
					if("Defense Up")
						if(M.defup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.defup += 1
							M.joblevel += 1
					if("Fire Slash")
						if(M.fs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fs += 1
							M.joblevel += 1
					if("Ice Slash")
						if(M.is == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.is += 1
							M.joblevel += 1
					if("Thunder Slash")
						if(M.ts == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ts += 1
							M.joblevel += 1
					if("Earth Slash")
						if(M.es == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.es += 1
							M.joblevel += 1
					if("Wind Slash")
						if(M.ws == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ws += 1
							M.joblevel += 1
					if("Double Fire Slash")
						if(M.dfs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.dfs += 1
							M.joblevel += 1
					if("Double Ice Slash")
						if(M.dis == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.dis += 1
							M.joblevel += 1
					if("Double Thunder Slash")
						if(M.dts == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.dts += 1
							M.joblevel += 1
					if("Double Earth Slash")
						if(M.des == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.des += 1
							M.joblevel += 1
					if("Double Wind Slash")
						if(M.dws == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.dws += 1
							M.joblevel += 1
			if(M.job == "Mage")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Fire","Ice","Thunder","Wind","Earth","Extreme Fire","Extreme Ice","Extreme Thunder","Extreme Wind","Extreme Earth","Godly Fire","Godly Ice","Godly Thunder","Godly Wind","Godly Earth"))
					if("Fire")
						if(M.fire == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fire += 1
							M.joblevel += 1
					if("Ice")
						if(M.ice == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ice += 1
							M.joblevel += 1
					if("Thunder")
						if(M.thunder == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.thunder += 1
							M.joblevel += 1
					if("Wind")
						if(M.wind == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.wind += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
					if("Extreme Fire")
						if(M.efire == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.efire += 1
							M.joblevel += 1
					if("Extreme Ice")
						if(M.eice == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.joblevel += 1
							M.eice += 1
					if("Extreme Thunder")
						if(M.ethunder == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ethunder += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
					if("Extreme Earth")
						if(M.eearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.eearth += 1
							M.joblevel += 1
					if("Godly Fire")
						if(M.gfire == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gfire += 1
							M.joblevel += 1
					if("Godly Ice")
						if(M.gice == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.joblevel += 1
							M.gice += 1
					if("Godly Thunder")
						if(M.gthunder == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gthunder += 1
							M.joblevel += 1
					if("Godly Wind")
						if(M.gwind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gwind += 1
							M.joblevel += 1
					if("Godly Earth")
						if(M.gearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gearth += 1
							M.joblevel += 1
			if(M.job == "Rouge")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Double Hit","Luck Up","Spark","Agility Up","Steal","Multiple Hit","Scare","Fireworks","Extreme Wind","Spikes","Backstrike","Envenom","Explosions","Godly Wind","Spike Rain"))
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Luck Up")
						if(M.lukup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.lukup += 1
							M.joblevel += 1
					if("Spark")
						if(M.spark == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.spark += 1
							M.joblevel += 1
					if("Agility Up")
						if(M.aglup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.aglup += 1
							M.joblevel += 1
					if("Steal")
						if(M.steal == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.steal += 1
							M.joblevel += 1
					if("Multiple Hit")
						if(M.multihit == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.multihit += 1
							M.joblevel += 1
					if("Scare")
						if(M.scare == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.scare += 1
							M.joblevel += 1
					if("Fireworks")
						if(M.fworks == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fworks += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
					if("Spikes")
						if(M.sp == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.sp += 1
							M.joblevel += 1
					if("Backstrike")
						if(M.backs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.backs += 1
							M.joblevel += 1
					if("Envenom")
						if(M.env == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.env += 1
							M.joblevel += 1
					if("Explosions")
						if(M.explosion == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.explosion += 1
							M.joblevel += 1
					if("Godly Wind")
						if(M.gwind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gwind += 1
							M.joblevel += 1
					if("Spike Rain")
						if(M.sprain == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.sprain += 1
							M.joblevel += 1
			if(M.job == "Pope")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Heal","Devenom","Holy Bolt","Intelligence Up","Mind Games","Scary Eyes","Holy Lightning","Sleep","Extreme Wind","Holy Blast","Beat","Holy Flames","Holy Ice Shards","Godly Wind"))
					if("Heal")
						if(M.heal == 30)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Devenom")
						if(M.devenom == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.devenom += 1
							M.joblevel += 1
					if("Holy Bolt")
						if(M.holybolt == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holybolt += 1
							M.joblevel += 1
					if("Intelligence Up")
						if(M.intup == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.intup += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
					if("Scary Eyes")
						if(M.seyes == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.seyes += 1
							M.joblevel += 1
					if("Holy Lightning")
						if(M.holylit == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holylit += 1
							M.joblevel += 1
					if("Sleep")
						if(M.sleeps == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.sleeps += 1
							M.joblevel += 1
					if("Extreme Wind")
						if(M.ewind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.ewind += 1
							M.joblevel += 1
					if("Holy Blast")
						if(M.hb == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.hb += 1
							M.joblevel += 1
					if("Beat")
						if(M.beat == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.beat += 1
							M.joblevel += 1
					if("Holy Flames")
						if(M.hflames == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.hflames += 1
							M.joblevel += 1
					if("Holy Ice Shards")
						if(M.hices == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.hices += 1
							M.joblevel += 1
					if("Godly Wind")
						if(M.gwind == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gwind += 1
							M.joblevel += 1
			if(M.job == "Master")
				M << "<font color = blue><b>Your job level is now [M.joblevel + 1]!"
				switch(input("What skill do you wish to level up?")in list("Power Slash","Earth","Double Hit","Mind Games","Holy Veil","Fire Slash","Extreme Earth","Heal","Scare","Almighty Veil","Double Fire Slash","Godly Earth","Holy Flames","Envenom","Deadly Frozen Veil"))
					if("Power Slash")
						if(M.powerslash == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.powerslash += 1
							M.joblevel += 1
					if("Earth")
						if(M.earth == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.earth += 1
							M.joblevel += 1
					if("Double Hit")
						if(M.doublehit == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.doublehit += 1
							M.joblevel += 1
					if("Mind Games")
						if(M.mindgames == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.mindgames += 1
							M.joblevel += 1
					if("Holy Veil")
						if(M.holyveil == 10)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.holyveil += 1
							M.joblevel += 1
					if("Fire Slash")
						if(M.fs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fs += 1
							M.joblevel += 1
					if("Extreme Earth")
						if(M.eearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.eearth += 1
							M.joblevel += 1
					if("Scare")
						if(M.scare == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.scare += 1
							M.joblevel += 1
					if("Heal")
						if(M.heal == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Almighty Veil")
						if(M.alveil == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.alveil += 1
							M.joblevel += 1
					if("Fire Slash")
						if(M.fs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.fs += 1
							M.joblevel += 1
					if("Extreme Earth")
						if(M.eearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.eearth += 1
							M.joblevel += 1
					if("Scare")
						if(M.scare == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.scare += 1
							M.joblevel += 1
					if("Heal")
						if(M.heal == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.heal += 1
							M.joblevel += 1
					if("Almighty Veil")
						if(M.alveil == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.alveil += 1
							M.joblevel += 1
					if("Double Fire Slash")
						if(M.dfs == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.dfs += 1
							M.joblevel += 1
					if("Godly Earth")
						if(M.gearth == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.gearth += 1
							M.joblevel += 1
					if("Envenom")
						if(M.env == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.env += 1
							M.joblevel += 1
					if("Holy Flames")
						if(M.hflames == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.hflames += 1
							M.joblevel += 1
					if("Deadly Frozen Veil")
						if(M.deadfveil == 20)
							M << "<font color = blue><b>This skill is already at its max!"
							joblevelup(M)
						else
							M.deadfveil += 1
							M.joblevel += 1
			if(M.joblevel == 2)
				M.jobexpreq = 250
			if(M.joblevel == 3)
				M.jobexpreq = 500
			if(M.joblevel == 4)
				M.jobexpreq = 1000
			if(M.joblevel == 5)
				M.jobexpreq = 1500
			if(M.joblevel == 6)
				M.jobexpreq = 2000
			if(M.joblevel == 7)
				M.jobexpreq = 2750
			if(M.joblevel == 8)
				M.jobexpreq = 3500
			if(M.joblevel == 9)
				M.jobexpreq = 4250
			if(M.joblevel == 10)
				M.jobexpreq = 5000
			if(M.joblevel == 11)
				M.jobexpreq = 6000
			if(M.joblevel == 12)
				M.jobexpreq = 7000
			if(M.joblevel == 13)
				M.jobexpreq = 8000
			if(M.joblevel == 14)
				M.jobexpreq = 9000
			if(M.joblevel == 15)
				M.jobexpreq = 10000
			if(M.joblevel == 16)
				M.jobexpreq = 11500
			if(M.joblevel == 17)
				M.jobexpreq = 13000
			if(M.joblevel == 18)
				M.jobexpreq = 14500
			if(M.joblevel == 19)
				M.jobexpreq = 16000
			if(M.joblevel == 20)
				M.jobexpreq = 17500
			if(M.joblevel == 21)
				M.jobexpreq = 19000
			if(M.joblevel == 22)
				M.jobexpreq = 20500
			if(M.joblevel == 23)
				M.jobexpreq = 22000
			if(M.joblevel == 24)
				M.jobexpreq = 23500
			if(M.joblevel == 25)
				M.jobexpreq = 25000
			if(M.joblevel == 26)
				M.jobexpreq = 27000
			if(M.joblevel == 27)
				M.jobexpreq = 29000
			if(M.joblevel == 28)
				M.jobexpreq = 31000
			if(M.joblevel == 29)
				M.jobexpreq = 33000
			if(M.joblevel == 30)
				M.jobexpreq = 35000
			if(M.joblevel == 31)
				M.jobexpreq = 37500
			if(M.joblevel == 32)
				M.jobexpreq = 40000
			if(M.joblevel == 33)
				M.jobexpreq = 42500
			if(M.joblevel == 34)
				M.jobexpreq = 45000
			if(M.joblevel == 35)
				M.jobexpreq = 47500
			if(M.joblevel == 36)
				M.jobexpreq = 50000
			if(M.joblevel == 37)
				M.jobexpreq = 52500
			if(M.joblevel == 38)
				M.jobexpreq = 55000
			if(M.joblevel == 39)
				M.jobexpreq = 57500
			if(M.joblevel == 40)
				M.jobexpreq = 60000
			if(M.joblevel == 41)
				M.jobexpreq = 63000
			if(M.joblevel == 42)
				M.jobexpreq = 66000
			if(M.joblevel == 43)
				M.jobexpreq = 69000
			if(M.joblevel == 44)
				M.jobexpreq = 72000
			if(M.joblevel == 45)
				M.jobexpreq = 75000
			if(M.joblevel == 46)
				M.jobexpreq = 78000
			if(M.joblevel == 47)
				M.jobexpreq = 81000
			if(M.joblevel == 48)
				M.jobexpreq = 84000
			if(M.joblevel == 49)
				M.jobexpreq = 87000
			if(M.joblevel == 50)
				M.jobexpreq = 90000
			if(M.joblevel == 51)
				M.jobexpreq = 94000
				if(M.job == "Swordsman")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Bladesman!"
					M.job = "Bladesman"
					M.color = "Bladesman Red"
				if(M.job == "Spellcaster")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Multicaster!"
					M.job = "Multicaster"
					M.color = "Multicaster Yellow"
				if(M.job == "Thief")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become an Assassin!"
					M.job = "Assassin"
					M.color = "Assassin Black"
				if(M.job == "Priest")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Monk!"
					M.job = "Monk"
					M.color = "Monk Blue"
				if(M.job == "Equaler")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Greatener!"
					M.job = "Greatener"
					M.color = "Greatener Metal"
			if(M.joblevel == 52)
				M.jobexpreq = 98000
			if(M.joblevel == 53)
				M.jobexpreq = 102000
			if(M.joblevel == 54)
				M.jobexpreq = 106000
			if(M.joblevel == 55)
				M.jobexpreq = 110000
			if(M.joblevel == 56)
				M.jobexpreq = 114000
			if(M.joblevel == 57)
				M.jobexpreq = 118000
			if(M.joblevel == 58)
				M.jobexpreq = 122000
			if(M.joblevel == 59)
				M.jobexpreq = 126000
			if(M.joblevel == 60)
				M.jobexpreq = 130000
			if(M.joblevel == 61)
				M.jobexpreq = 134000
			if(M.joblevel == 62)
				M.jobexpreq = 138000
			if(M.joblevel == 63)
				M.jobexpreq = 142000
			if(M.joblevel == 64)
				M.jobexpreq = 146000
			if(M.joblevel == 65)
				M.jobexpreq = 150000
			if(M.joblevel == 66)
				M.jobexpreq = 155000
			if(M.joblevel == 67)
				M.jobexpreq = 160000
			if(M.joblevel == 68)
				M.jobexpreq = 165000
			if(M.joblevel == 69)
				M.jobexpreq = 170000
			if(M.joblevel == 70)
				M.jobexpreq = 175000
			if(M.joblevel == 71)
				M.jobexpreq = 180000
			if(M.joblevel == 72)
				M.jobexpreq = 185000
			if(M.joblevel == 73)
				M.jobexpreq = 190000
			if(M.joblevel == 74)
				M.jobexpreq = 195000
			if(M.joblevel == 75)
				M.jobexpreq = 200000
			if(M.joblevel == 76)
				M.jobexpreq = 205000
			if(M.joblevel == 77)
				M.jobexpreq = 210000
			if(M.joblevel == 78)
				M.jobexpreq = 215000
			if(M.joblevel == 79)
				M.jobexpreq = 220000
			if(M.joblevel == 80)
				M.jobexpreq = 225000
			if(M.joblevel == 81)
				M.jobexpreq = 230000
			if(M.joblevel == 82)
				M.jobexpreq = 235000
			if(M.joblevel == 83)
				M.jobexpreq = 240000
			if(M.joblevel == 84)
				M.jobexpreq = 245000
			if(M.joblevel == 85)
				M.jobexpreq = 250000
			if(M.joblevel == 86)
				M.jobexpreq = 255000
			if(M.joblevel == 87)
				M.jobexpreq = 260000
			if(M.joblevel == 88)
				M.jobexpreq = 265000
			if(M.joblevel == 89)
				M.jobexpreq = 270000
			if(M.joblevel == 90)
				M.jobexpreq = 275000
			if(M.joblevel == 91)
				M.jobexpreq = 280000
			if(M.joblevel == 92)
				M.jobexpreq = 285000
			if(M.joblevel == 93)
				M.jobexpreq = 290000
			if(M.joblevel == 94)
				M.jobexpreq = 295000
			if(M.joblevel == 95)
				M.jobexpreq = 300000
			if(M.joblevel == 96)
				M.jobexpreq = 306000
			if(M.joblevel == 97)
				M.jobexpreq = 312000
			if(M.joblevel == 98)
				M.jobexpreq = 318000
			if(M.joblevel == 99)
				M.jobexpreq = 324000
			if(M.joblevel == 100)
				M.jobexpreq = 330000
			if(M.joblevel == 101)
				M.jobexpreq = 336000
			if(M.joblevel == 102)
				M.jobexpreq = 342000
			if(M.joblevel == 103)
				M.jobexpreq = 348000
			if(M.joblevel == 104)
				M.jobexpreq = 354000
			if(M.joblevel == 105)
				M.jobexpreq = 360000
			if(M.joblevel == 106)
				M.jobexpreq = 366000
			if(M.joblevel == 107)
				M.jobexpreq = 372000
			if(M.joblevel == 108)
				M.jobexpreq = 378000
			if(M.joblevel == 109)
				M.jobexpreq = 384000
			if(M.joblevel == 110)
				M.jobexpreq = 390000
			if(M.joblevel == 111)
				M.jobexpreq = 396000
			if(M.joblevel == 112)
				M.jobexpreq = 402000
			if(M.joblevel == 113)
				M.jobexpreq = 408000
			if(M.joblevel == 114)
				M.jobexpreq = 414000
			if(M.joblevel == 115)
				M.jobexpreq = 420000
			if(M.joblevel == 116)
				M.jobexpreq = 426000
			if(M.joblevel == 117)
				M.jobexpreq = 432000
			if(M.joblevel == 118)
				M.jobexpreq = 438000
			if(M.joblevel == 119)
				M.jobexpreq = 444000
			if(M.joblevel == 120)
				M.jobexpreq = 450000
			if(M.joblevel == 121)
				M.jobexpreq = 456000
			if(M.joblevel == 122)
				M.jobexpreq = 462000
			if(M.joblevel == 123)
				M.jobexpreq = 468000
			if(M.joblevel == 124)
				M.jobexpreq = 474000
			if(M.joblevel == 125)
				M.jobexpreq = 480000
			if(M.joblevel == 126)
				M.jobexpreq = 488000
			if(M.joblevel == 127)
				M.jobexpreq = 496000
			if(M.joblevel == 128)
				M.jobexpreq = 504000
			if(M.joblevel == 129)
				M.jobexpreq = 512000
			if(M.joblevel == 130)
				M.jobexpreq = 520000
			if(M.joblevel == 131)
				M.jobexpreq = 528000
			if(M.joblevel == 132)
				M.jobexpreq = 536000
			if(M.joblevel == 133)
				M.jobexpreq = 544000
			if(M.joblevel == 134)
				M.jobexpreq = 552000
			if(M.joblevel == 135)
				M.jobexpreq = 560000
			if(M.joblevel == 136)
				M.jobexpreq = 568000
			if(M.joblevel == 137)
				M.jobexpreq = 574000
			if(M.joblevel == 138)
				M.jobexpreq = 582000
			if(M.joblevel == 139)
				M.jobexpreq = 590000
			if(M.joblevel == 140)
				M.jobexpreq = 598000
			if(M.joblevel == 141)
				M.jobexpreq = 606000
			if(M.joblevel == 142)
				M.jobexpreq = 614000
			if(M.joblevel == 143)
				M.jobexpreq = 622000
			if(M.joblevel == 144)
				M.jobexpreq = 630000
			if(M.joblevel == 145)
				M.jobexpreq = 636000
			if(M.joblevel == 146)
				M.jobexpreq = 644000
			if(M.joblevel == 147)
				M.jobexpreq = 652000
			if(M.joblevel == 148)
				M.jobexpreq = 660000
			if(M.joblevel == 149)
				M.jobexpreq = 668000
			if(M.joblevel == 150)
				M.jobexpreq = 676000
			if(M.joblevel == 151)
				M.jobexpreq = 684000
				if(M.job == "Bladesman")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Warrior!"
					M.job = "Warrior"
					M.color = "Warrior Red"
				if(M.job == "Multicaster")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Mage!"
					M.job = "Mage"
					M.color = "Mage Yellow"
				if(M.job == "Assassin")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Rouge!"
					M.job = "Rouge"
					M.color = "Rouge Black"
				if(M.job == "Monk")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Pope!"
					M.job = "Pope"
					M.color = "Pope Blue"
				if(M.job == "Greatener")
					M << "<font color = blue><b>Something is happening!"
					sleep(10)
					M << "<font color = blue><b>You have become a Master!"
					M.job = "Master"
					M.color = "Master Metal"
			if(M.joblevel == 152)
				M.jobexpreq = 692000
			if(M.joblevel == 153)
				M.jobexpreq = 708000
			if(M.joblevel == 154)
				M.jobexpreq = 716000
			if(M.joblevel == 155)
				M.jobexpreq = 724000
			if(M.joblevel == 156)
				M.jobexpreq = 732000
			if(M.joblevel == 157)
				M.jobexpreq = 740000
			if(M.joblevel == 158)
				M.jobexpreq = 748000
			if(M.joblevel == 159)
				M.jobexpreq = 756000
			if(M.joblevel == 160)
				M.jobexpreq = 764000
			if(M.joblevel == 161)
				M.jobexpreq = 772000
			if(M.joblevel == 162)
				M.jobexpreq = 780000
			if(M.joblevel == 163)
				M.jobexpreq = 790000
			if(M.joblevel == 164)
				M.jobexpreq = 800000
			if(M.joblevel == 165)
				M.jobexpreq = 810000
			if(M.joblevel == 166)
				M.jobexpreq = 820000
			if(M.joblevel == 167)
				M.jobexpreq = 830000
			if(M.joblevel == 168)
				M.jobexpreq = 840000
			if(M.joblevel == 169)
				M.jobexpreq = 850000
			if(M.joblevel == 170)
				M.jobexpreq = 860000
			if(M.joblevel == 171)
				M.jobexpreq = 870000
			if(M.joblevel == 172)
				M.jobexpreq = 880000
			if(M.joblevel == 173)
				M.jobexpreq = 890000
			if(M.joblevel == 174)
				M.jobexpreq = 900000
			if(M.joblevel == 175)
				M.jobexpreq = 910000
			if(M.joblevel == 176)
				M.jobexpreq = 920000
			if(M.joblevel == 177)
				M.jobexpreq = 930000
			if(M.joblevel == 178)
				M.jobexpreq = 940000
			if(M.joblevel == 179)
				M.jobexpreq = 950000
			if(M.joblevel == 180)
				M.jobexpreq = 960000
			if(M.joblevel == 181)
				M.jobexpreq = 970000
			if(M.joblevel == 182)
				M.jobexpreq = 980000
			if(M.joblevel == 183)
				M.jobexpreq = 990000
			if(M.joblevel == 184)
				M.jobexpreq = 1000000
			if(M.joblevel == 185)
				M.jobexpreq = 1120000
			if(M.joblevel == 186)
				M.jobexpreq = 1240000
			if(M.joblevel == 187)
				M.jobexpreq = 1360000
			if(M.joblevel == 188)
				M.jobexpreq = 1480000
			if(M.joblevel == 189)
				M.jobexpreq = 1600000
			if(M.joblevel == 190)
				M.jobexpreq = 1720000
			if(M.joblevel == 191)
				M.jobexpreq = 1840000
			if(M.joblevel == 192)
				M.jobexpreq = 1960000
			if(M.joblevel == 193)
				M.jobexpreq = 2080000
			if(M.joblevel == 194)
				M.jobexpreq = 2200000
			if(M.joblevel == 195)
				M.jobexpreq = 2320000
			if(M.joblevel == 196)
				M.jobexpreq = 2440000
			if(M.joblevel == 197)
				M.jobexpreq = 2560000
			if(M.joblevel == 198)
				M.jobexpreq = 2680000
			if(M.joblevel == 199)
				M.jobexpreq = 2800000
			if(M.joblevel == 200)
				M.jobexpreq = 2920000
			if(M.joblevel == 201)
				M.jobexpreq = 3040000
			if(M.joblevel == 202)
				M.jobexpreq = 3160000
			if(M.joblevel == 203)
				M.jobexpreq = 3280000
			if(M.joblevel == 204)
				M.jobexpreq = 3400000
			if(M.joblevel == 205)
				M.jobexpreq = 3550000
			if(M.joblevel == 206)
				M.jobexpreq = 3700000
			if(M.joblevel == 207)
				M.jobexpreq = 3850000
			if(M.joblevel == 208)
				M.jobexpreq = 4150000
			if(M.joblevel == 209)
				M.jobexpreq = 4300000
			if(M.joblevel == 210)
				M.jobexpreq = 4450000
			if(M.joblevel == 211)
				M.jobexpreq = 4600000
			if(M.joblevel == 212)
				M.jobexpreq = 4750000
			if(M.joblevel == 213)
				M.jobexpreq = 4900000
			if(M.joblevel == 214)
				M.jobexpreq = 5050000
			if(M.joblevel == 215)
				M.jobexpreq = 5200000
			if(M.joblevel == 216)
				M.jobexpreq = 5350000
			if(M.joblevel == 217)
				M.jobexpreq = 5500000
			if(M.joblevel == 218)
				M.jobexpreq = 5650000
			if(M.joblevel == 219)
				M.jobexpreq = 5800000
			if(M.joblevel == 220)
				M.jobexpreq = 5950000
			if(M.joblevel == 221)
				M.jobexpreq = 6300000
			if(M.joblevel == 222)
				M.jobexpreq = 6500000
			if(M.joblevel == 223)
				M.jobexpreq = 6700000
			if(M.joblevel == 224)
				M.jobexpreq = 6900000
			if(M.joblevel == 225)
				M.jobexpreq = 7100000
			if(M.joblevel == 226)
				M.jobexpreq = 7300000
			if(M.joblevel == 227)
				M.jobexpreq = 7500000
			if(M.joblevel == 228)
				M.jobexpreq = 7700000
			if(M.joblevel == 229)
				M.jobexpreq = 7900000
			if(M.joblevel == 230)
				M.jobexpreq = 8100000
			if(M.joblevel == 231)
				M.jobexpreq = 8300000
			if(M.joblevel == 232)
				M.jobexpreq = 8500000
			if(M.joblevel == 233)
				M.jobexpreq = 8700000
			if(M.joblevel == 234)
				M.jobexpreq = 8900000
			if(M.joblevel == 235)
				M.jobexpreq = 9100000
			if(M.joblevel == 236)
				M.jobexpreq = 9300000
			if(M.joblevel == 237)
				M.jobexpreq = 9500000
			if(M.joblevel == 238)
				M.jobexpreq = 9700000
			if(M.joblevel == 239)
				M.jobexpreq = 9900000
			if(M.joblevel == 240)
				M.jobexpreq = 10100000
			if(M.joblevel == 241)
				M.jobexpreq = 10300000
			if(M.joblevel == 242)
				M.jobexpreq = 10500000
			if(M.joblevel == 243)
				M.jobexpreq = 10700000
			if(M.joblevel == 244)
				M.jobexpreq = 10900000
			if(M.joblevel == 245)
				M.jobexpreq = 11100000
			if(M.joblevel == 246)
				M.jobexpreq = 11300000
			if(M.joblevel == 247)
				M.jobexpreq = 11500000
			if(M.joblevel == 248)
				M.jobexpreq = 11700000
			if(M.joblevel == 249)
				M.jobexpreq = 11900000
			if(M.joblevel == 250)
				M.jobexpreq = 12100000
			if(M.joblevel == 251)
				M.jobexpreq = "Max Job Level!"
				world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Job Level!"
				sleep(5)
				world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Job Level!"
				sleep(5)
				world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Job Level!"
				sleep(5)
				world << "<font color = blue><b>The <font color = yellow><b>player, <font color = aqua><b>[usr] <font color = green><b>has <font color = white><b>achieved <font color = red><b>the <font color = silver><b>Maximum <font color = teal><b>Job Level!"
			checkjoblevel(M)