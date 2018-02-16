class User
  attr_accessor :name, :wallet_amt, :cart

  def initialize(name, wallet_amt, cart = [])
    @name = name
    @wallet_amt = wallet_amt
    @cart = cart
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
end