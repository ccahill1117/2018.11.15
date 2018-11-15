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

  it('returns primes up to 9') do
    primes = Primes.new()
    expect(primes.sift(9)).to(eq([0, 0, 2, 3, 0, 5, 0, 7, 0, 0]))
  end

  it('returns primes up to 25') do
    primes = Primes.new()
    expect(primes.sift(25)).to(eq([0, 0, 2, 3, 0, 5, 0, 7, 0, 0, 0, 11, 0, 13, 0, 0, 0, 17, 0, 19, 0, 0, 0, 23, 0, 0]))
  end
end
