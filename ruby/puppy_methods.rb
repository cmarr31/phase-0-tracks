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