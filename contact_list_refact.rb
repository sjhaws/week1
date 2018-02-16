# Constants
User_input = "> "

Contact_list = [ 
  {name: "Bob", email: "bob@rminc.com", phone: "801-355-0200"}, 
  {name: "Jill", email: "jill@rminc.com", phone: "801-355-0201"}, 
  {name: "Ken", email: "ken@rminc.com", phone: "801-355-0202"}
]

# Functions

# Top spacing for menu

def new_menu
  puts
  puts
  puts "=" * 20
end

# Bottom spacing for menu

def menu_seperator
  puts "-" * 20
end

# Main Menu function

def contact_list_method
  menu_seperator
  puts "MAIN MENU"
  puts "1. Add contact to list"
  puts "2. Edit contact"
  puts "3. Remove contact from list"
  puts "4. View list"
  puts "5. Quit" 
  menu_seperator
  puts User_input
  choice = $stdin.gets.to_i

    case choice

      when 1
        new_contact

      when 2
        edit_contact
          
      when 3
        delete_contact

      when 4
        puts Contact_list

      when 5
        puts "Goodbye"
        exit
    end
end

# Function for new contacts

def new_contact
  new_menu
  puts "What contact would you like to add?"
  menu_seperator
  puts "Name:"
  puts User_input
  contact_name = $stdin.gets.chomp
  puts "Email:"
  puts User_input
  contact_email = $stdin.gets.chomp
  puts "Phone:"
  puts User_input
  contact_phone = $stdin.gets.chomp
  Contact_list << {name: contact_name, email: contact_email, phone: contact_phone}
  
end

# function for editing contacts

def edit_contact
  new_menu
        puts "Which contact would you like to edit?"
        menu_seperator
        Contact_list.each_with_index do |contact_person, index|
          puts "#{index +1}: #{contact_person}"
        end
        menu_seperator

        puts User_input
        contact_choice = $stdin.gets.to_i - 1
        puts "What would you like to change?"
        puts "1. Name"
        puts "2. Email"
        puts "3. Phone"
        menu_seperator
        puts User_input
        choice = $stdin.gets.to_i

        case choice

          when 1
            new_menu
            puts "What is the new name?"
            menu_seperator
            puts User_input
            choice = $stdin.gets.chomp
            Contact_list[contact_choice][:name] = choice

          when 2
            new_menu
            puts "What is the new email?"
            menu_seperator
            puts User_input
            choice = $stdin.gets.chomp
            Contact_list[contact_choice][:email] = choice

          when 3
            new_menu
            puts "What is the new phone?"
            menu_seperator
            puts User_input
            choice = $stdin.gets.chomp
            Contact_list[contact_choice][:phone] = choice
          end
end

# Function for deleting contacts

def delete_contact
  new_menu
  puts "Which contact would you like to remove?"
  menu_seperator
  Contact_list.each_with_index do |contact_person, index|
    puts "#{index +1}: #{contact_person}"
  end
  menu_seperator
  puts User_input
  contact = $stdin.gets.to_i
  Contact_list.delete_at(contact - 1)
end
   


# start of program

new_menu
puts "Welcome to your contact list"

while true
  contact_list_method
end
