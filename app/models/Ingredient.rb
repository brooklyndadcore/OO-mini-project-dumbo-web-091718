
class Ingredient
  attr_accessor :count
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @count = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    @@all.sort_by{|allergen| allergen.count}[-1]
  end

end
