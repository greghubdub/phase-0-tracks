# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0 Add Routes

get '/contact' do
  "Whatever Whatever<br>
  1234 Wallaby Wallaby<br>
  Walla Walla, WA 99324<br>
  USA"
end

get '/great_job' do
  persons_name = params[:persons_name]
  if persons_name
    "Good job, #{persons_name}!"
  else
    "Good job!"
  end
end

get '/:add_1/plus/:add_2' do
  add_1 = params[:add_1].to_i
  add_2 = params[:add_2].to_i
  (add_1 + add_2).to_s
end

# Below is an attempt at creating a route that allows searching part 
# of a string and returning the students whose names contain it.
# Work in progress

# get '/students/student_search' do
#   search = params[:search]
#   if db.execute("SELECT * FROM students WHERE name=?", [name.downcase.include? "#{search}"]) == true

# end




