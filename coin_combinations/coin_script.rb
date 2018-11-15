#!usr/bin/env ruby
require('./lib/coin_combinations')

coins = Coins.new()
puts "Coin combination"
print "Enter a number of cents: "
amount = gets.chomp.to_i
coin_counts = coins.combo(amount)
coins.print_coins
