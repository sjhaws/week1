# ternary
# num = 4

# if num % 2 == 0
#   a = true
# else
#   a = false
# end
# # variable = condition ? if true : if false
# a = num % 2 == 0 ? (num + 1) : (num + 2)
# puts a

#-------------------------------

# loops
# while, until, for, each (each_with_index)

# loops that return a value
# map, select, reject, reduce

# loops that modify
# next, break

# while loop
# x = 0
# while x <= 3
#   puts x
#   x += 1
# end

# until loop
# x = 0
# until x > 3
#   puts x
#   x += 1
# end

# each
# (0..5).each do |x|
#   puts x 
# end
# (0..5).each { |x| puts x }

# map
# arr = [1, 2, 3, 4, 5]
# new_arr = arr.map { |num| num + 1 }
# puts new_arr

# select/reject
# arr = [1, 2, 3, 4, 5]
# new_arr = arr.select { |num| num % 2 == 0 }
# new_arr = arr.reject { |num| num % 2 == 0 }

# reduce
# arr = [1, 2, 3, 4, 5]
# val = arr.reduce(&:+)

# next - skips step
# x = 0
# (0..5).each do |x|
#  if x % 2 == 0
#   y = "even"
#  else
#   y = "odd"
#  next
#  end
#  puts x
# end

# break
# x = 0
# while x <= 10
#   break if x == 5
#   puts x
#   x += 1
# end


#---------------------
files = `ls /Users/Steven`
array = `ls /Users/Steven`.split("\n")

puts array
