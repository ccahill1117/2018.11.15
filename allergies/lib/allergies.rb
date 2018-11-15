require ('pry')

class Allergies
  def initialize()
    @allergies = Hash.new()
    @allergies.store(1,"eggs")
    @allergies.store(2,"peanuts")
    @allergies.store(4,"shellfish")
    @allergies.store(8,"strawberries")
    @allergies.store(16,"tomatoes")
    @allergies.store(32,"chocolate")
    @allergies.store(64,"pollen")
    @allergies.store(128,"cats")
  end

  def allergy_check(user_number)
    allergy_array = []
    key = 1
    while (key <= user_number)
      if (user_number & key) > 0
        allergy_array.push(@allergies.fetch(key))
      end
      key = key * 2
    end
    allergy_array
  end
end
