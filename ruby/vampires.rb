puts "What is your name?"
name = gets.chomp
if name == "Drake Cula"
	name = false
elsif name == "Tu Fang"
	name = false
else
	name = true
end

puts "How old are you?"
age = gets.chomp
Integer(age)

puts "What year were you born?"
year = gets.chomp
Integer(year)
if 2016 - Integer(year) == Integer(age)
	age_year = true
else
	age_year = false
end

puts "We order garlic bread here for our employees regularly, should we put you on the list? (y/n)"
garlic_bread = gets.chomp
if garlic_bread == "y"
	garlic_bread = true
else
	garlic_bread = false
end

puts "Would you like to enroll in our company's health insurance? (y/n)"
insurance = gets.chomp
if insurance == "y"
	insurance = true
else
	insurance = false
end

message = case
when !name
	 result = "Definitely a vampire."
when age_year && (garlic_bread || insurance)
	 result = "Probably not a vampire."
when !age_year && !garlic_bread && !insurance
	 result = "Almost certainly a vampire."
when !age_year && (!garlic_bread || !insurance)
	result = "Probably a vampire."
else
	result = "Results inconclusive."
end

puts result