coworkers = ["Brandon", "Tom", "Wade", "Kaatje", "Kevin", "Torre"]

actors_roles = {
	mel_gibson: "Braveheart",
	tom_cruise: "Jerry Maguire",
	al_pacino: "Tony Montana"
}

coworkers.each {|x| print x, "! " }
coworkers.map! {|x| x + "!" }

actors_roles.each {|key, value| print "#{key} was #{value}, " }