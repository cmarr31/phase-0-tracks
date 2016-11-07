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
		name VARCHAR(255),
		age INT
	)
SQL

db.execute(create_table_cmd)

def add_quote(db, quote, name)
	db.execute("INSERT INTO motivators (quote, name) VALUES (?, ?)", [name,age])
end

puts "Welcome to your personal Automated Self-Motivator(TM)!!!"
puts "RANDOM MOTIVATING QUOTE FROM DATABASE"

puts "What would you like to do with your quotes? Type: 'add', 'edit', or 'delete'"
gets.chomp = initial_response


	if initial_response == "add"
		def method_name
			
		end
	elsif initial_response == "edit"
		def method_name
			
		end
	elsif initial_response == "delete"
		def method_name
			
		end
	else
		puts "I'm sorry, I didn't understand that."
	end


























