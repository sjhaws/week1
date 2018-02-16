User_input = "> "
while true
puts "=" * 20
puts "Main Menu"
puts "-" * 20
puts "1. Command Line"
puts "2. Search"
puts "3. Exit"
puts User_input
menu = $stdin.gets.to_i

case menu

  when 1
    puts "=" * 20
    puts "Which command would you like to learn about?"
    puts "-" * 20
    puts "1. mv"
    puts "2. cp"
    puts "3. mkdir"
    puts "4. ls"
    puts "5. rm"
    puts "6. BACK"
    puts User_input
    choice = $stdin.gets.to_i

    case choice

      when 1
        puts `man mv`
      
      when 2
        puts `man cp`
      
      when 3
        puts `man mkdir`
      
      when 4
        puts `man ls`
      
      when 5
        puts `man rm`
      
      when 6
        break
      
      else
        puts "Please try again"
    
      end



  when 2
    puts "=" * 20
    puts "Which command manual would you like to learn about?"
    puts "-" * 20
    puts User_input
    choice = $stdin.gets.chomp
    puts `man "#{choice}"`

  when 3
    puts "Goodbye"
    break
end
end