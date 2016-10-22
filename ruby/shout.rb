# module Shout
# 	 def self.yell_angrily(words)
# 	 	words + "!!!" + " :("
# 	 end
# 	 def self.yelling_happily(words)
# 	 	words + "!!!" + ":]"
# 	 end
# end
# 
# p Shout.yell_angrily("Dude")
# p Shout.yelling_happily("Dude")

module Shout
	def yell_angrily(words)
		words + "!!!" + ":("
	end
	def yelling_happily(words)
		words + "!!!" + ":]"
	end
end


class Monkey
	include Shout
end
class Athlete
	include Shout
end

Ted = Monkey.new
Joe = Athlete.new

p Ted.yelling_happily("OOOOH AH OOOH AH")
p Joe.yell_angrily("I broke my toe! OOOOH AH OOOH AH")