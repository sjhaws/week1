User_input = "> "
     
contact_list = [ 
  {name: "Bob", email: "bob@rminc.com", phone: 8013550200}, 
  {name: "Jill", email: "jill@rminc.com", phone: 8013550201}, 
  {name: "Ken", email: "ken@rminc.com", phone: 8013550202}
]

puts "Welcome to your contact list"

while true
  puts "-" * 20
  puts "1. Add contact to list"
  puts "2. Edit contact"
  puts "3. Remove contact from list"
  puts "4. View list"
  puts "5. Quit" 
  puts User_input
  choice = $stdin.gets.to_i

    case choice

      when 1
        puts "What contact would you like to add?"
        puts "Name:"
        puts User_input
        contact_name = $stdin.gets.chomp
        puts "Email:"
        puts User_input
        contact_email = $stdin.gets.chomp
        puts "Phone:"
        puts User_input
        contact_phone = $stdin.gets.chomp
        contact_list << {name: contact_name, email: contact_email, phone: contact_phone}

      when 2
        puts "Which contact would you like to edit?"
        contact_list.each_with_index do |contact_person, index|
          puts "#{index +1}: #{contact_person}"
        end

        puts User_input
        contact_choice = $stdin.gets.to_i - 1
        puts "What would you like to change?"
        puts "1. Name"
        puts "2. Email"
        puts "3. Phone"
        puts User_input
        choice = $stdin.gets.to_i

        case choice

          when 1
            puts "What is the new name?"
            puts User_input
            choice = $stdin.gets.chomp
            contact_list[contact_choice][:name] = choice

          when 2
            puts "What is the new email?"
            puts User_input
            choice = $stdin.gets.chomp
            contact_list[contact_choice][:email] = choice

          when 3
            puts "What is the new phone?"
            puts User_input
            choice = $stdin.gets.chomp
            contact_list[contact_choice][:phone] = choice

          end
          
      when 3
        puts "Which contact would you like to remove?"
        puts contact_list
        puts User_input
        contact_name = $stdin.gets.chomp
        contact_list.Remove(contact_name)

      when 4
        puts contact_list

      when 5
        puts "Goodbye"
        exit
    end
end
