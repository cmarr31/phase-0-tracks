# 'encrypt' method pseudocode
## Goal: Advance every letter of a string one letter forward.
## Example: "abc" --> "bcd"

## Write a method that will:
## Break the given string down into individual letters by using the string's index.
## Take each letter indvidually and advance it forward using .next.

def encrypt(str)
	index = 0
	begin
		p str[index].next
		index +=1
	end until index == str.length
end


# ----------------------------------------------------------

# 'decrypt' method pseudocode
## Goal: Reverse the process of the above method.
## Example: "bcd" --> "abc"

## Write a method that will:
## Break the given string down into individual letters by using the string's index.
## Move it one letter back by finding the letter in the alphabet's index, then taking the number of the letter right before that letter.

def decrypt(str)
	first = 0
	alph = "abcdefghijklmnopqrstuvwxyz"
	begin
		str[first]
		x = alph.index(str[first]) - 1
		p alph[x]
		first +=1
	end until first == str.length
end

# -----------------------------------------------------------

# Ask agent whether they would like to encrypt or decrypt their password.
# Ask agent for password.
# Conduct requested operation & prints results to the screen.

begin
	puts "Would you like to encrypt/decrypt your password? (e/d)"
	crypt = gets.chomp
	
	puts "Enter password."
	pass = gets.chomp
	
	if crypt == "e"
		p encrypt(pass)
	elsif crypt == "d" 
		p decrypt(pass)
	else
		puts "I didn't understand that."
	end
end until crypt == ("e" || "d")

