# The Automated Self-Motivator #

# Create a program that allows a user to store motivating quotes, sayings
# and phrases along with the person who said the thing.
# They will need to be able to access, change, update, and edit all of 
# them at any time on command.
# Every time they turn on/turn off their Motivator, they should be
# prompted with a random quote from their database.

require 'sqlite3'

db = SQLite3::Database.new("motivation.db")

create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS motivators(
		id INTEGER PRIMARY KEY,
		quote VARCHAR(255),
		name VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)

puts "Welcome to your personal Automated Self-Motivator(TM)!!!"
puts "RANDOM MOTIVATING QUOTE FROM DATABASE"

puts "What would you like to do with your quotes? Type: 'add', 'edit', or 'delete'"
gets.chomp = initial_response

until initial_response == ("add") || ("edit") || ("delete") do

	if initial_response == "add"
		puts "Please type the quote:"
		quote = gets.chomp
		puts "Please type the name of the person who said this:"
		name = gets.chomp
		def add_quote(db, quote, name)
			db.execute("INSERT INTO motivators (quote, name) VALUES (?, ?)", [name,age])
		end
	elsif initial_response == "edit"
		puts "Please type the ID # of the quote you'd like to revise:"
		id1 = gets.chomp
		puts "Please type the revised quote:"
		revised_quote = gets.chomp
		def edit_quote(db, revised_quote, id1)
			db.execute("UPDATE motivators SET quote=revised_quote WHERE id=id1")
		end
	elsif initial_response == "delete"
		puts "Please type the ID # of the quote you'd like to delete:"
		id2 = gets.chomp
		def delete_quote(db, id2)
			db.execute("DELETE FROM motivators WHERE id=id2")
		end
	else
		puts "I'm sorry, I didn't understand that."
	end
end

puts "Thank you for using your personal Automated Self-Motivator(TM)!!!"
puts "RANDOM MOTIVATING QUOTE FROM DATABASE"
























