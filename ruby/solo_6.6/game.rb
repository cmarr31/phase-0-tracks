# ---------- Class: ------------

class Game
	attr_accessor :guess_count, :is_over

	def initialize
		@guess_count = 0
		@is_over = FALSE
	end

	def try(guess1, word1)
		if word1.include? guess1
			word1.delete!(guess1)
			puts word1.gsub(/[abcdefghijklmnopqrstuvwxyz]/, '-')
			@guess_count += 1
		else
			puts "Nope! Try again."
			@guess_count += 1
		end
		if word1.length == 0 
			@is_over = TRUE
			puts "Congratulations, you're a winner!!! Stay beautiful you winner, you ;)"
		elsif @guess_count == word1.length + 5
			@is_over = TRUE
			puts "Just add this to the (I'm assuming) your already long list of miserable failures :'("
		else
			FALSE
		end
	end
end

# --------- User Interface: -----------

game = Game.new

puts "Welcome to hangman!"

puts "Player One, enter a word for Player Two to guess:"
word1 = gets.chomp

while !game.is_over
	puts "Player Two, guess a letter."
	guess1 = gets.chomp
	game.try(guess1, word1)
end