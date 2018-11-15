require('pry')

class Coins
  def combo(amount)
    penny_amount = 1
    nickel_amount = 5
    dime_amount = 10
    quarter_amount = 25
    dollar_amount = 100
    pennies = 0
    nickels = 0
    dimes = 0
    quarters = 0
    dollars = 0
    until amount <= 0
      if amount >= dollar_amount
        dollars += 1
        amount -= dollar_amount
      elsif amount >= quarter_amount
        quarters += 1
        amount -= quarter_amount
      elsif amount >= dime_amount
        dimes += 1
        amount -= dime_amount
      elsif amount >= nickel_amount
        nickels += 1
        amount -= nickel_amount
      else
        pennies += 1
        amount -= penny_amount
      end
    end
    [pennies, nickels, dimes, quarters, dollars]
  end
end
