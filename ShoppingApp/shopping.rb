require "colorize"

User_prompt = "\n" + "> "
Top_spacing = "\n" * 2 + "=" * 34
Bottom_spacing = "-" * 34

@cart = []

  def main_menu
      while true
      puts Top_spacing
      puts "What would you like to do?"
      puts Bottom_spacing
      puts "1. Buy Something"
      puts "2. Display store inventory"
      puts "3. Display the money you have left"
      puts "4. Display your cart"
      puts "5. Add item to store"
      puts "6. Quit"
      print User_prompt
      choice = $stdin.gets.to_i
  
        case choice
  
          when 1
            add_to_cart
  
          
          when 2
            display_store_inventory
          
          when 3
            wallet_remaining

          when 4
            display_user_cart

          when 5
            add_to_store
          
          when 6
            exit
  
        end
      end
    end
  
    @inventory =  [
      {name: "bread", price: 2.50, quantity: 4}, 
      {name: "milk", price: 2.19, quantity: 3}, 
      {name: "butter", price: 3.25, quantity: 5}
    ]

  def display_store_inventory
    remove_inventory
    puts Top_spacing
    puts "Store Inventory"
    puts Bottom_spacing
    store_inventory = @inventory.each_with_index do |stuff, index|
        puts "#{index + 1}: #{stuff[:name]} \t$#{stuff[:price]} \t(#{stuff[:quantity]} remaining)"
      end
  end

  def add_to_store
    puts Top_spacing
    puts "What item would you like to add to the store?"
    puts Bottom_spacing
    print "Name:"
    print User_prompt
    food_name = $stdin.gets.chomp
    print "Price:"
    print User_prompt
    food_price = $stdin.gets.to_f
    print "Quantity:"
    print User_prompt
    food_quantity = $stdin.gets.to_i
    @inventory << {name: food_name, price: food_price, quantity: food_quantity}
  end

  def remove_inventory
    @inventory.each_with_index do |stuff, index|
      test_index = index
      test_quantity = @inventory[index][:quantity]
      if test_quantity < 1
        @inventory.delete_at(index)
      else
        next
      end
    end
  end

  def add_to_cart
    remove_inventory
    puts Top_spacing
    puts "What would you like to buy?"
    puts Bottom_spacing
    store_inventory = @inventory.each_with_index do |stuff, index|
      puts "#{index + 1}: #{stuff[:name]} \t$#{stuff[:price]} \t(#{stuff[:quantity]} remaining)"
    end
    print User_prompt
    choice = $stdin.gets.to_i
    choice_index = choice - 1
    cart_item = @inventory[choice_index]

    if @user_wallet < @inventory[choice_index][:price]
      puts
      puts "*****  Sorry, you don't have enough money to buy that  *****".colorize(:red)
    
    else
      @cart << cart_item
      minus1 = @inventory[choice_index][:quantity]
      minus1 = minus1 - 1
      @inventory[choice_index][:quantity] = minus1

      subtract_amount = @inventory[choice_index][:price]
      @user_wallet -= subtract_amount
    end
  end

  def display_user_cart
    puts Top_spacing
    puts "Your Cart"
    puts Bottom_spacing
    user_cart = @cart.each_with_index do |stuff, index|
        puts "#{index + 1}: #{stuff[:name]} \t$#{stuff[:price]}"
      end
  end

  def wallet_remaining
    puts Top_spacing
    puts "Money left in your wallet"
    puts Bottom_spacing
    print "$"
    puts @user_wallet 
  end


puts Top_spacing
puts "SETUP"
puts Bottom_spacing
puts "What is your name?"
@user_name = $stdin.gets.chomp
puts "What is your budget"
print "$"
@user_wallet = $stdin.gets.to_f
main_menu