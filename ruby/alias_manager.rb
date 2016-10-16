# Write a method that will:
## Take a spy's name from user.
## Switches the first and last name.
	# string.split(' ').reverse = rev_name
## Change all vowels (aeiou) to the next vowel in sequence.
## Change all consonants to next consonant in alphabet.
## Providing a fake spy name.

# First name: Chris Marr

begin
	puts "Enter real name for fake spy name. When finished type: 'quit'."
	name = gets.chomp
		if name == "quit"
			NIL
		else
			rev_name = name.split(' ').reverse
			rev_name2 = rev_name.join('').downcase!
			rev_name_vowel = rev_name2.chars.select { |letter| letter =~ /[aeiou]/ }
			rev_name_vowel.join('')
				def vowel_move(str)
					first = 0
					vowels = "aeiou"
					begin
						str[first]
						x = vowels.index(str[first]) + 1
						p vowels[x]
						first +=1
					end until first == str.length
				end
			vowel_move(rev_name_vowel)
			
			
			rev_name_cons = rev_name2.chars.select { |letter| letter =~ 			/[bcdfghjklmnpqrstvwxyz]/ }
			rev_name_cons.join('')
				def cons_move(str)
					first = 0
					cons = "bcdfghjklmnpqrstvwxyz"
					begin
						str[first]
						x = cons.index(str[first]) + 1
						p cons[x]
						first +=1
					end until first == str.length
				end
			cons_move(rev_name_cons)
		end
end until name == "quit"