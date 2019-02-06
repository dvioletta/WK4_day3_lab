require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')

require_relative('./models/student')
also_reload('./models/*')


get '/student' do
  @students = Student.find_all()
  erb(:index)
end

get '/student/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

get '/student/new' do
  erb(:new)
end

post '/student' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

get '/house' do
  @house = House.find_all()
  erb(:hindex)
end

get '/create-student'do
  @houses = House.find_all()
  erb(:new)
end
