# Write a program that will:
## Ask user for name, age, number of children, and decor theme of a given client.
## Put all of these details into a hash.
## Make it so the user can update one piece of data after the initial line of questioning.

client_data = {

}

puts "What is the client's name?"
client_data[:name] = gets.chomp

puts "What is the client's age?"
client_data[:age] = gets.chomp

puts "How many children does the client have?"
client_data[:children] = gets.chomp

puts "What is their preferred decor theme?"
client_data[:theme] = gets.chomp

p client_data

puts "Would you like to update any information? (type: 'name', 'age', 'children', or 'theme'). If not, type 'no.'"
input = gets.chomp

if input == "name"
	puts "What is the client's name?"
	client_data[:name] = gets.chomp
elsif input == "age"
	puts "What is client's age?"
	client_data[:age] = gets.chomp
elsif input == "children"
	puts "How many children does the client have?"
	client_data[:children] = gets.chomp
elsif input == "theme"
	puts "What is their preferred decor theme?"
	client_data[:theme] = gets.chomp
else
	nil
end

p client_data

	