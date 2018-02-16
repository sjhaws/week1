# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def increase_age(number)
#     @age += number
#   end

# end

# bob = Person.new("bob", 25)
# puts bob.name
# puts bob.age
# puts bob.increase_age(2)
# puts bob.age

# class Dog 
#   attr_accessor :name, :breed

## attr_reader
## attr_writer

#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end

#   # instance method
#   def info
#     puts "#{@name} is of breed #{@breed}"
#   end

#   # class method
#   def self.bark
#     puts "Woof"
#   end
# end

# lassie = Dog.new("Lassie", nil)
# lassie.info
# Dog.bark

### MODULES

# module Math
#   def add(num_1, num_2)
#     num_1 + num_2
#   end

#   def subtract(num_1, num_2)
#     num_1 - num_2
#   end
  
# end

# class Mathhm
#   include Math

#   def first_problem
#     puts add(10, 50) + subtract(3, 10)
#   end
# end

# assignment1 = Mathhm.new
# assignment1.first_problem


