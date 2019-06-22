mob
	proc
		MonsterNumber()



/*
Loduwijk:
proc/battle(mob/player,list/enemies)
	player.attack(enemies)
	for(var/mob/M in enemies)
		M.attack(M)

Then just alter your attacking functions to allow the attacker to select the target from the list of enemies passed into it.

Loduwijk: Each enemy on the map will represent a random encounter, but that enemy might actually be more than one enemy. (Which will be determined when the player gets into the battle.) right?

Loduwijk: Then don't make the player fight the actual mob on the map. When the player gets into a fight, create as many new enemies as are in the fight, but don't give them a location so that they don't appear on the map. Stick all the enemies into a list/enemies for the player. When the player beats every enemy in the list, then you can delete the one on the map.
Loduwijk:
mob/pc/Bump(atom/A)
	if(ismob(A))
		var/mob/M=A
		if(istype(M,/mob/enemy))
			var/amount=rand(1,8)
			for(var/index=1,index<=amount,index++)
				src.enemies+=new M.type
Loduwijk: Then start a battle sequence like the one I showed a minute ago.
BleedingMetroid: how do i get it to let u select the monsters u need to fight
Loduwijk: Alter the above code like so:
mob/pc/Bump(atom/A)
	//rest of code up to this point
				var/mob/enemy=new M.type
				enemy.name = "[enemy.name] [index]"
				src.enemies+=enemy
Then when you want to select one of them for attacking or for a single-target spell have a line like this:
var/defender=input("Who will you attack?","Select Target")in enemies
Loduwijk: (You would obviously take out the src.enemies+=new M.type line if you did that.)
BleedingMetroid: alright i get that but then after that how to i get it so i dont have a list of Slime for example, or for some reason it just has Slime
BleedingMetroid: I want something like Slime-A
Loduwijk: Allright. The way I did it, you would have a list like:
Slime 1
Slime 2/
Loduwijk: Oops
Loduwijk:
Slime1
Slime 2
ect..
Loduwijk: But if you wanted to have -A, -B, ect.. then you could do something like this...
Loduwijk:
proc/number2letter(num as num)
	var/list/letters=list("-A","-B","-C","-D","-E","-F","-G","-H")
	return letters[num]
Loduwijk: Then in the line where you set the thing's name, change that line like this:
enemy.name = "[name][number2letter(index)]"
*/