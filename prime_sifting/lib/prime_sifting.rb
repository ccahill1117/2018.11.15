require ('pry')

class Primes
  def sift(user_number)
    values = *(0..user_number)
    values[1] = 0
    current_prime = 2

    values.map! do |int|
      if (int != current_prime) && (int % current_prime == 0)
        0
      else
        int
      end
    end
    values
    # values.select {|v| v > 0}
  end
end
