# require gems
require 'sinatra'
require 'sqlite3'
require 'faker'

set :public_folder, File.dirname(__FILE__) + '/static'

#db = SQLite3::Database.new("students.db")
#db.results_as_hash = true

# show students on the home page
#get '/' do
#  @students = db.execute("SELECT * FROM students")
#  erb :home
#end

#get '/students/new' do
#  erb :new_student
#end

# create new students via
# a form
#post '/students' do
#  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
#  redirect '/'
#end

# add static resources


db = SQLite3::Database.new("pets.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pets(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)

def create_pet(db, name, age)
  db.execute("INSERT INTO pets (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_pet(db, Faker::Name.name, 3)
end

get '/' do
	@pets = db.execute("SELECT * FROM pets")
	erb :home
end

get '/pets/new' do
	erb :new_pet
end

post '/pets' do
	db.execute("INSERT INTO pets (name, age) VALUES (?,?)", [params['name'], params['age'].to_i])
	redirect '/'
end






















