require_relative "person"

class App

def initial
  @person = initial_person
  get_name
end

def initial_person
  puts "Enter Name:"
  name = gets.strip
  puts "Enter Age:"
  age = gets.to_i
  @person = Person.new(name, age)

end

def get_name
  @person.name
end

end

app = App.new
puts app.initial