user_input = "> "

puts "Welcome to your grand adventure"
puts
puts "WARNING TO THE USER"
puts "You are about to embark on a dangerous quest"
puts "Are you sure you want to proceed?"
chicken = $stdin.gets.chomp
if chicken =~ /No/i
    puts "That's okay, your pillow needs company."
elsif chicken =~ /yes/i
    puts "That's the spirit, what is your name"
else
    puts "I'm not sure what to do with that kind of response."
puts user_input
print_line = $stdin.gets.chomp
puts print_line