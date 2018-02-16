require "pry"
require "colorize"
require_relative "user"
require_relative "store"

User_prompt = "\n" + "> "
Top_spacing = "\n" * 2 + "=" * 34
Bottom_spacing = "-" * 34


class App
  attr_accessor :name, :wallet_amt, :cart, :store_inventory

  def initialize
    puts Top_spacing
    puts "SETUP"
    puts Bottom_spacing
    puts "What is your name?"
    @user_name = $stdin.gets.chomp
    puts "What is your budget"
    print "$"
    @user_wallet = $stdin.gets.to_f
    @new_user = User.new(@user_name, @user_wallet)
    @store = Store.new([{name: "bread", price: 2.50, quantity: 4}, {name: "milk", price: 2.19, quantity: 3}, {name: "butter", price: 3.25, quantity: 5}])
    # binding.pry
    main_menu
  end


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
          @store.remove_inventory
          add_to_cart

        when 2
          @store.display_store_inventory
        
        when 3
          @new_user.wallet_remaining

        when 4
          @new_user.display_user_cart

        when 5
          @store.add_to_store
        
        when 6
          exit

      end
    end
  end

  def add_to_cart
    puts Top_spacing
    puts "What would you like to buy?"
    puts Bottom_spacing
    store_inventory = @store_inventory.each_with_index do |stuff, index|
      puts "#{index + 1}: #{stuff[:name]} \t$#{stuff[:price]} \t(#{stuff[:quantity]} remaining)"
    end
    print User_prompt
    choice = $stdin.gets.to_i
    choice_index = choice - 1
    cart_item = @store_inventory[choice_index]

    if @user_wallet < @store_inventory[choice_index][:price]
      puts
      puts "*****  Sorry, you don't have enough money to buy that  *****".colorize(:red)
    
    else
      @cart << cart_item
      minus1 = @store_inventory[choice_index][:quantity]
      minus1 = minus1 - 1
      @store_inventory[choice_index][:quantity] = minus1

      subtract_amount = @store_inventory[choice_index][:price]
      @user_wallet -= subtract_amount
    end
  end
end

app = App.new()