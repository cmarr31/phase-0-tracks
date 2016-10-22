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
	
	def celebrate_birthday
		@age +=1
	end
	def get_mad_at(name)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete(name))
	end
	def change_gender(new_gender)
		@gender = new_gender
	end
	def age
		return @age
	end
	def ethnicity
		return @ethnicity
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
