# List of Constants
Shopping_list_master = [ {name; "bread", price: 2.50}, {name: "milk", price: 1.99}]
User_input = "> "
Top_spacing = "=" * 20
Bottom_spacing = "-" * 20

# Functions
#===============
# Main Menu
def main_menu
  menu_items = ["View List", "Add an Item", "Delete Item", "Quit"]
  puts Top_spacing
  puts = "MAIN MENU"
  puts Bottom_spacing

  menu_items.each_with_index do |index, item|
    puts "#{index +1}: #{item}"
  end

  puts User_input
  menu_choice = $stdin.gets.to_i

  case menu_choice

    when 1
      puts Shopping_list_master
      # puts price_total

    when 2
      new_food

    when 3

    when 4
      puts "Goodbye"
      exit

  end

end

# Shopping List Total

# View List
def print_list
  Shopping_list_master.each_with_index do |index, item|
    puts "#{index +1}: #{item}"
  end
end

# Add to List
def new_food
  puts Top_spacing
  puts "What food would you like to add to the list?"
  puts Bottom_spacing
  puts "Food:"
  puts User_input
  food_name = $stdin.gets.chomp
  puts "Price:"
  puts User_input
  food_price = $stdin.gets.to_i
  Shopping_list_master << {name: food_name, price: food_price}
end

# Delete from List
def delete_food
  puts Top_spacing
  puts "Which item would you like to remove from the list?"
  puts Bottom_spacing
  Contact_list.each_with_index do |contact_person, index|
    puts "#{index +1}: #{contact_person}"
  end
  menu_seperator
  puts User_input
  contact = $stdin.gets.to_i
  Contact_list.delete_at(contact - 1)
end
# Start and end Script