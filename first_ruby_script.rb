user_prompt =  "> "
shopping_list = ["milk", "bread", "cheese"]

puts "Welcome to your shopping list!"

while true
    puts "1. Add an shopping item"
    puts "2. Delete and item from list"
    puts "3. Change list item"
    puts "4. Display item"
    puts "5. Quit"

    choice = $stdin.gets.to_i
    case choice

        when 1
        puts "What would you like to add?"
        puts user_prompt
        list_item = gets.strip
        shopping_list << list_item
        puts

    when 2
        puts "Which would you like to delete?"
        puts shopping_list
        puts user_prompt
        choice_delete = gets.chomp
        shopping_list.delete(choice_delete)
        puts
    
    when 3
        puts "Which would you like to change?"
        puts shopping_list
        puts user_prompt
        choice_change_from = gets.chomp
        # shopping_list.delete(choice_change_from)
        puts "what would you like to change it to?"
        puts user_prompt
        choice_change_to = gets.chomp
        # shopping_list << choice_change_to
        shopping_list.flatten
        shopping_list.select
        choice_change_from.replace(choice_change_to)
        puts
        # map array checking for value

    when 4 
        puts "Okay, here is your shopping list:"
        puts shopping_list
        puts

    when 5
        puts "Goodbye"
        exit
        
    else
        puts "I didn't understand that, please try again"

    end
end
