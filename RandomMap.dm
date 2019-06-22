var/list/rooms=list()

world/New()
	..()
	var/turf
		room=locate(50,12,10)//This will keep track of the room in the first part
		pending//This will keep track of rooms before they go into the pending list
	var/list
		rooms=list("5,1"=room)//A list of all the rooms
		rooms_pending=list()//A list of rooms needing to be set up

	//This part creates the first couple rooms, the ones which are allways the same
	create_room(room);room.rand_x=5;room.rand_y=1
	room=create_hall(room,NORTH)
	create_room(room);room.rand_x=5;room.rand_y=2
	rooms+="5,2"
	rooms["5,2"]=room
	if(prob(75))
		pending=create_hall(room,WEST)
		pending.rand_x=4;pending.rand_y=2
		rooms_pending+=pending
	if(prob(75))
		pending=create_hall(room,EAST)
		pending.rand_x=6;pending.rand_y=2
		rooms_pending+=pending
	room=create_hall(room,NORTH)
	create_room(room);room.rand_x=5;room.rand_y=3
	rooms+="5,3"
	rooms["5,3"]=room
	rooms_pending+=room
	var/debug=0//DEBUG VAR

	//This goes through and adds a bunch of random rooms
	while(rooms_pending.len)
		debug++
		if(debug>50)
			world.log<<"Reached debug limit"
			return
		var/turf/pending2=rooms_pending[1]
		if(prob(75))
			create_room(pending2)
		if(pending2.rand_x>1)
			if(!("[pending2.rand_x-1],[pending2.rand_y]" in rooms))
				if(prob(75))
					pending=create_hall(room,WEST)
					pending.rand_x=pending2.rand_x-1;pending.rand_y=pending2.rand_y
					rooms_pending+=pending
					rooms+="[pending.rand_x],[pending.rand_y]"
					rooms["[pending.rand_x],[pending.rand_y]"]=pending
		if(pending2.rand_x<10)
			if(!("[pending2.rand_x+1],[pending2.rand_y]" in rooms))
				if(prob(75))
					pending=create_hall(room,EAST)
					pending.rand_x=pending2.rand_x+1;pending.rand_y=pending2.rand_y
					rooms_pending+=pending
					rooms+="[pending.rand_x],[pending.rand_y]"
					rooms["[pending.rand_x],[pending.rand_y]"]=pending
		if(pending2.rand_y>1)
			if(!("[pending2.rand_x],[pending2.rand_y-1]" in rooms))
				if(prob(75))
					pending=create_hall(room,SOUTH)
					pending.rand_x=pending2.rand_x;pending.rand_y=pending2.rand_y-1
					rooms_pending+=pending
					rooms+="[pending.rand_x],[pending.rand_y]"
					rooms["[pending.rand_x],[pending.rand_y]"]=pending
		if(pending2.rand_y<10)
			if(!("[pending2.rand_x],[pending2.rand_y+1]" in rooms))
				if(prob(75))
					pending=create_hall(room,NORTH)
					pending.rand_x=pending2.rand_x;pending.rand_y=pending2.rand_y+1
					rooms_pending+=pending
					rooms+="[pending.rand_x],[pending.rand_y]"
					rooms["[pending.rand_x],[pending.rand_y]"]=pending
		rooms_pending-=pending2
	AutoReboot()

proc/create_room(turf/Loc)
	var/turf_type
	switch(Loc.z)
		if(10)
			turf_type=/turf/redpath
		if(11)
			turf_type=/turf/redpath
		if(12)
			turf_type=/turf/redpath
		if(13)
			turf_type=/turf/flamecavedirt
		if(14)
			turf_type=/turf/flamecavedirt
		if(15)
			turf_type=/turf/flamecavedirt
		if(16)
			turf_type=/turf/flamecavedirt
		if(17)
			turf_type=/turf/flamecavedirt
		if(18)
			turf_type=/turf/flamecavedirt
	if(Loc.x<10||Loc.x>90||Loc.y<10||Loc.y>90)
		return
	for(var/turf/T in block(locate(Loc.x-rand(2,4),Loc.y-rand(2,4),Loc.z),locate(Loc.x+rand(2,4),Loc.y+rand(2,4),Loc.z)))
		new turf_type(T)
	new turf_type(Loc)

proc/create_hall(turf/Loc,Dir=0,Dist=0)
	if(!Loc)return 0
	if(!Dir)
		Dir=pick(NORTH,SOUTH,EAST,WEST)
	if(!Dist)
		Dist=rand(10,15)
	var
		turf_type
		rand_width=rand(2,4)
		width_dir=turn(Dir,90)
	switch(Loc.z)
		if(10)
			turf_type=/turf/redpath
		if(11)
			turf_type=/turf/redpath
		if(12)
			turf_type=/turf/redpath
		if(13)
			turf_type=/turf/flamecavedirt
		if(14)
			turf_type=/turf/flamecavedirt
		if(15)
			turf_type=/turf/flamecavedirt
		if(16)
			turf_type=/turf/flamecavedirt
		if(17)
			turf_type=/turf/flamecavedirt
		if(18)
			turf_type=/turf/flamecavedirt
	var/turf/T=Loc
	while(Dist>0)
		Dist-=1
		new turf_type(get_step(T,Dir))
		T=get_step(T,Dir)
		new turf_type(get_step(T,width_dir))
		if(rand_width>=3)
			new turf_type(get_step(T,turn(width_dir,180)))
		if(rand_width>=4)
			new turf_type(get_step(get_step(T,width_dir),width_dir))
	return T

proc/rand_dir()
	return pick(NORTH,SOUTH,EAST,WEST)

turf
	var
		rand_x;rand_y