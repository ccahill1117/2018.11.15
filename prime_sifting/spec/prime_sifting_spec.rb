require ('rspec')
require ('prime_sifting')
require ('pry')

describe('Primes#sift') do
  it('returns primes up to 3') do
    primes = Primes.new()
    expect(primes.sift(3)).to(eq([0, 0, 2, 3]))
  end

  it('returns primes up to 5') do
    primes = Primes.new()
    expect(primes.sift(5)).to(eq([0, 0, 2, 3, 0, 5]))
  end

end
