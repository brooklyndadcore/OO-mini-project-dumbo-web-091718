
class Ingredient
  attr_accessor :allergy_count
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @allergy_count = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    @@all.sort_by{|allergen| allergen.allergy_count}[-1]
  end

end
