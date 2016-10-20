class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

Shiba = Puppy.new
Shiba.fetch("ball")

class Puppy
	def speak(integer)
		times = 0
		begin
			puts "Woof!"
			times +=1
		end until times == integer
	end 
end
Shiba.speak(5)

class Puppy
	def roll_over
		puts "*rolls over*"
	end
end
Shiba.roll_over

class Puppy
	def dog_years(integer)
		result = integer * 7
		return result
	end
end
Shiba.dog_years(13)

class Puppy
	def sit
		puts "*sits down*"
	end
end
Shiba.sit