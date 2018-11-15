require('coin_combinations')
require('rspec')
require('pry')

describe('Coins#combo') do
  it('returns pennies for an amount up to 4 cents') do
    coins = Coins.new()
    expect(coins.combo(4)).to(eq([4, 0, 0, 0, 0]))
  end

  it('returns pennies and nickels for an amount up to 9 cents') do
    coins = Coins.new()
    expect(coins.combo(9)).to(eq([4, 1, 0, 0, 0]))
  end

  it('returns pennies, nickels and dimes for an amount up to 24 cents') do
    coins = Coins.new()
    expect(coins.combo(24)).to(eq([4, 0, 2, 0, 0]))
  end

  it('returns pennies, nickels, dimes, and quarters for an amount up to 99 cents') do
    coins = Coins.new()
    expect(coins.combo(99)).to(eq([4, 0, 2, 3, 0]))
  end

  it('returns pennies, nickels, dimes, quarters, and dollars for an amount up to 499 cents') do
    coins = Coins.new()
    expect(coins.combo(499)).to(eq([4, 0, 2, 3, 4]))
  end

end
