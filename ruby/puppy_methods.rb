class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

class Puppy
	def initialize
		p "Initializing new puppy instance..."
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

#----------------------------------------------------------

class One
	def meditate
		puts "*sits down and meditates*"
	end
end

class One
	def initialize
		puts "Initializing new instance of One..."
	end
end

Chris = One.new
Chris.meditate

class One
	def chant
		puts "*begins chanting 'Nam-Myoho-Renge-Kyo'*"
	end
end
Chris.chant

array1 = ["Shiba"]
array2 = []

def instances(arr1, arr2)
	num = 0 
	begin
		arr2 << arr1.map.with_index{|x| x + num.to_s }.join(",")
		num +=1
	end until num == 50
end


instances(array1, array2)
array2.each {|x| x = One.new }

















