class Game
	attr_accessor :guess_count, :is_over

	def initialize
		@guess_count = 0
		@is_over = false
	end

	def try(guess1)
		@guess_count +=1
		if word1.include? guess1
			word1.delete!(guess1)
			puts word1.sub(/[abcdefghijklmnopqrstuvwxyz]/, '-')
		else
			puts "Nope! Try again."
		end
	end
end

