class Game
	attr_accessor :guess_count, :is_over

	def initialize
		@guess_count = 0
		@is_over = FALSE
	end

	def try(guess1, word1)
		count = word1.length
		@guess_count +=1
		if word1.include? guess1
			word1.delete!(guess1)
			puts word1.sub(/[abcdefghijklmnopqrstuvwxyz]/, '-')
		else
			puts "Nope! Try again."
		end
		if word1.length == 0 
			@is_over = TRUE
			puts "Congratulations you're a winner!!! Keep on winning ;)"
		elsif @guess_count == count
			@is_over = TRUE
			puts "Just add this to the (I'm assuming) your already long list of miserable failures :'("
		else
			FALSE
		end
	end
end

