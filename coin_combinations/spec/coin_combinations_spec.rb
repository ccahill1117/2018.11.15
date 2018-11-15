require('coin_combinations')
require('rspec')
require('pry')

describe('Coins#combo') do
  it('returns pennies for an amount up to 4 cents') do
    coins = Coins.new()
    expect(coins.combo(4)).to(eq([4, 0, 0, 0]))
  end
end
