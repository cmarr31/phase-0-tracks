puts "What is the new inmate's, I mean hamster's,  name?"
name = gets.chomp

puts "How loud on a scale of 1-10 is #{name}?"
volume = gets.chomp
Integer(volume)

puts "What color is #{name}?"
color = gets.chomp

puts "Is #{name} a good candidate for adoption (y/n)?"
good_candidate = gets.chomp

puts "Estimate #{name}'s age."
age = gets.chomp

if age.empty?
	age = nil
else 
	Integer(age)
end

puts "Name: #{name}."
puts "Volume: #{volume}."
puts "Color: #{color}."
puts "Good candidate: #{good_candidate}."
puts "Estimated age: #{age}."
