class Santa
end

class Santa
	attr_accessor :name, :gender, :age
	attr_reader :ethnicity

	def initialize(name, gender, ethnicity)
		puts "Initializing santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

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
	def celebrate_birthday
		@age +=1
	end
	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete(reindeer_name))
	end
end

santas = []
Chris = Santa.new("Chris", "male", "Caucasian")
John = Santa.new("John", "male", "Unicorn")
Kelly = Santa.new("Kelly", "female", "Asian")
Sam = Santa.new("Sam", "transgender", "Hispanic")
santas << Chris
santas << John
santas << Kelly
santas << Sam

p Chris.celebrate_birthday
p John.get_mad_at("Cupid")
p Kelly.speak
p Sam.eats_milk_and_cookies("snickerdoodle")

auto_santas = []
auto_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
auto_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
auto_names = ["Bill", "Ted", "Stacy", "Peter", "Kyle", "Philip", "Manny"]
auto_genders.length.times do |i|
  auto_santas << Santa.new(auto_names.sample(1)[i], auto_genders.sample(1)[i], auto_ethnicities.sample(1)[i])
end
p auto_santas
