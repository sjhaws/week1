class Store
 attr_accessor :store_inventory

  def initialize(store_inventory)
    @store_inventory = store_inventory
    # @store_inventory = [
    #   {name: "bread", price: 2.50, quantity: 4}, 
    #   {name: "milk", price: 2.19, quantity: 3},
    #   {name: "butter", price: 3.25, quantity: 5}
    # ]
  end

  def display_store_inventory
    remove_inventory
    puts Top_spacing
    puts "Store Inventory"
    puts Bottom_spacing
    store_inventory = @store_inventory.to_a.each_with_index do |stuff, index|
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
    @inventory.to_a.each_with_index do |stuff, index|
      test_index = index
      test_quantity = @inventory[index][:quantity]
      if test_quantity < 1
        @inventory.delete_at(index)
      else
        next
      end
    end
  end
end