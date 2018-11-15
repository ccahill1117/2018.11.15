require('pry')

class Coins
  def combo(amount)
    penny_amount = 1
    pennies = 0
    coin_sum = 0
    until coin_sum >= amount
      pennies += 1
      coin_sum += 1 * penny_amount
    end
    # binding.pry
    [pennies, 0, 0, 0]
  end
end
