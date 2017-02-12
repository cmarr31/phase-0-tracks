class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end	

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(name, gender, ethnicity)
		puts "Initializing santa instance."

		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_preference = ["Rudolph", "Dasher", "Donner", "Blitzen",
			"Comet", "Cupid", "Dancer", "Prancer", "Vixen"]

	end	

end	

nick = Santa.new

nick.speak
nick.eat_milk_and_cookies("snickerdoodle")

