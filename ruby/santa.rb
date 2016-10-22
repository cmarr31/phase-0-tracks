class Santa
end

class Santa
	def initialize(name, gender, ethnicity)
		puts "Initializing santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	#getters:
	def name
		@name
	end
	def gender
		@gender
	end
	def ethnicity
		@ethnicity
	end
	#setters:
	def name=(new_name)
		@name = new_name
	end
	def gender=(new_gender)
		@gender = new_gender
	end
	def ethnicity=(new_ethnicity)
		@ethnicity = new_ethnicity
	end
end

class Santa
	def speak
		puts "Ho! Ho! Ho! Haaaappy holidays!"
	end

	def eats_milk_and_cookies(str)
		puts "That was a good #{str}!"
	end
	def about
		p @name
		p @gender
		p @ethnicity
		p @reindeer_ranking
		p @age
	end 
end

santas = []
santas << Santa.new("Chris", "male", "Caucasian")
santas << Santa.new("John", "male", "Unicorn")
santas << Santa.new("Kelly", "female", "Asian")
santas << Santa.new("Sam", "transgender", "Hispanic")