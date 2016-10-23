game = Game.new

puts "Welcome to hangman!"

puts "Player One, enter a word for Player Two to guess:"
word1 = gets.chomp

until word1.length == 0 || @guess_count == word1.length do 
	puts "Player Two, guess a letter."
	guess1 = gets.chomp
	game.try(guess1)
end

if word1.length == 0
	puts "Congratulations you're a winner!!! Keep on winning ;)"
else
	puts "Just add this to the (I'm assuming) your already long list of miserable failures :'("
end