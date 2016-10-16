def whats_up
	puts "Hello."
	puts "What's good?"
	yield("homie")
end

whats_up { |name1| puts "Not much #{name1}." }


colors = ["red", "blue", "green", "yellow"]

names = {'chris' => 'marr', 'joe' => 'peterson', 'john' => 'pitlock', 'ryan' => 'callaway'}

p colors
colors.each do |item|
	puts item
end
p colors

p names
names.each do |first, last|
	puts "First name: #{first}. Last name: #{last}."
end
p names

p colors
colors.map! do |color|
	puts color
	color.upcase
end
p colors


numbers = [1, 2, 3, 4, 5,]
numbers.delete_if { |number| number < 4 }

numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
numbers.delete_if { |number, word| number < 2 } 

# -------------------------------

letters = %w{ a b c d e }
letters.keep_if { |letter| letter =~ /[aeiou]/ }

letters = ["a", "b", "c", "d", "e"]
letters.keep_if { |letter| letter =~ /[aeiou]/ }

# --------------------------------

numbers = [1, 2, 3, 4, 5]
numbers.bsearch { |number| number > 4 }

letters = %w{b c d e}
letters.bsearch { |letter| letter =~ /[aeiou]/ }

# ---------------------------------

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.reject { |x| x % 2 == 0 }

numbers = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four'}
numbers.reject { |x, y| x % 2 == 0 }

