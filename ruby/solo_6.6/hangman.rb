game = Game.new

puts "Welcome to hangman!"

puts "Player One, enter a word for Player Two to guess:"
word1 = gets.chomp

while !game.is_over
	puts "Player Two, guess a letter."
	guess1 = gets.chomp
	game.try(guess1, word1)
end