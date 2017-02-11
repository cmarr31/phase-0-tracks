# Add driver code at the bottom that initializes an instance of Puppy, and 
# erify that your instance can now fetch a ball. Run the file from the 
# command line to check your work.
# Add a speak method that takes an integer, and then prints "Woof!" that 
# many times.
# Add a roll_over method that just prints "*rolls over*".
# Add a dog_years method that takes an integer (of human years) and 
# converts that number to dog years, returning a new integer.
# Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that all 
# of these methods work as expected.

class Puppy

	def fetch(toy)
		puts "Puppy brought back the #{toy}!"
		toy
	end

	def speak(integer)
		index = 0
		while index < integer
			puts "Woof!"
			index += 1
		end
	end	

	def dog_years(human_years)
		p human_years * 7
	end	

  def initialize
  end

end

shiba = Puppy.new 
shiba.speak(5)

shiba.dog_years(14)


# In puppy_methods.rb, design and implement your own class below the 
# Puppy class -- anything you'd like, but it should have an initialize 
# method and at least two other instance methods. Then do the following:
# 
# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data 
# structure.
# Iterate over that data structure using .each and call the instance 
# methods you wrote on each instance. So if you wrote a Gymnast class, 
# this is where you'd call .flip and .jump on each of your instances of 
# Gymnast.
# If the steps above feel really unfamiliar, remember that you've been 
# working with classes the entire time -- strings are instances of the 
# String class. So you can start by using string instances in place of 
# your own class instances, if that helps you visualize how the code
# should come together.

class Animals
	def initialize
	end

	def yell
		puts "ROAR!"
	end

end	

animal_arry = []

index = 0
while index < 50
	new_animal = Animals.new
	animal_arry << new_animal
	index += 1 
end

p animal_arry

ObjectSpace.each_object(Animals) do |obj|
  new_animal.yell
end

































