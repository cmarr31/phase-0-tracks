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