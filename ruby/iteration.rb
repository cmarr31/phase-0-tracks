def whats_up
	puts "Hello."
	puts "What's good?"
	yield("homie")
end

whats_up { |name1| puts "Not much #{name1}." }