
class Ingredient
  attr_reader :name
  @@all << self

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Allergen.all.sort_by {|allergy|[allergy.ingredient, allergy.user]}
  end

end
