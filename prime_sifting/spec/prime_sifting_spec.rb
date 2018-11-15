require ('rspec')
require ('prime_sifting')
require ('pry')

describe('Primes#sift') do
  it('returns primes up to 3') do
    primes = Primes.new()
    expect(primes.sift(3)).to(eq([2, 3]))
  end

end
