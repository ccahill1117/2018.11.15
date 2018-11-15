require ('pry')

class Primes
  def cross_out(current_prime, values)
    values.map do |int|
      if (int != current_prime) && (int % current_prime == 0)
        0
      else
        int
      end
    end
  end

  def find_next_prime(current_prime, values)
    current_prime += 1
    until (current_prime >= values.length) || (values[current_prime] > 0)
      current_prime += 1
    end
    if(current_prime >= values.length)
      0
    else
      current_prime
    end
  end

  def sift(user_number)
    values = *(0..user_number)
    values[1] = 0
    current_prime = 2

    values = cross_out(current_prime, values)
    current_prime = find_next_prime(current_prime, values)
    if current_prime > 0
      values = cross_out(current_prime, values)
      current_prime = find_next_prime(current_prime, values)
      if current_prime > 0
        values = cross_out(current_prime, values)
      end
    end
    # binding.pry

    values
    # values.select {|v| v > 0}
  end
end
