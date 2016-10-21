class Santa
end

class Santa
	def initialize(gender, ethnicity)
		puts "Initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
end

class Santa
	def speak
		puts "Ho! Ho! Ho! Haaaappy holidays!"
	end

	def eats_milk_and_cookies(str)
		puts "That was a good #{str}!"
	end
end

Chris = Santa.new 
Chris.speak
Chris.eats_milk_and_cookies("snickerdoodle")

