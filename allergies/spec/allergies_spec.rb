require ('pry')
require ('rspec')
require ('allergies')

describe('Allergies#allergy_check') do
  it('returns array of allergies based upon user number') do
    allergies = Allergies.new()
    expect(allergies.allergy_check(12)).to(eq(["shellfish", "strawberries"]))
  end
end
