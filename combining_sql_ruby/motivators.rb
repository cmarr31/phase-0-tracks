# The Automated Self-Motivator #

# Create a program that allows a user to store motivating quotes, sayings
# and phrases along with the person who said the thing.
# They will need to be able to access, change, update, and edit all of 
# them at any time on command.

require 'sqlite3'

db = SQLite3::Database.new("motivators.db")

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS motivators(
		id INTEGER PRIMARY KEY,
		quote VARCHAR(255),
		name VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)

def add_quote(db, quote, name)			
	db.execute("INSERT INTO motivators (quote, name) VALUES (?, ?)", [quote, name])	
end

def edit_quote(db, revised_quote, id1)
	db.execute("UPDATE motivators SET quote=#{revised_quote} WHERE id=#{id1}")
end

def delete_quote(db, id2)
	db.execute("DELETE FROM motivators WHERE id=#{id2}")
end

#add_quote(db, "Be the change you wish to see in the world", "Ghandi")
#add_quote(db, "Life is completely dependant on perspective", "The Buddha")

puts "Welcome to your personal Automated Self-Motivator(TM)!!!"

puts "What would you like to do with your quotes? Type: 'add', 'edit', or 'delete'"
initial_response = gets.chomp

if initial_response == "add"	
	puts "Please type the quote:"		
	quote = gets.chomp		
	puts "Please type the name of the person who said this:"		
	name = gets.chomp		
	add_quote(db, quote, name)
elsif initial_response == "edit"
	puts "Please type the ID # of the quote you'd like to revise:"
	id1 = gets.chomp
	puts "Please type the revised quote:"
	revised_quote = gets.chomp
	edit_quote(db, revised_quote, id1)
elsif initial_response == "delete"
	puts "Please type the ID # of the quote you'd like to delete:"
	id2 = gets.chomp
	delete_quote(db, id2)
else
	puts "I'm sorry, I didn't understand that."
end

puts "Thank you for using your personal Automated Self-Motivator(TM)!!!"


motivators = db.execute("SELECT * FROM motivators")
p motivators






















