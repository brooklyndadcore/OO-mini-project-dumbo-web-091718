
class Allergen
  attr_reader :ingredient, :user
  @@all = []

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
    ingredient.allergy_count += 1
    @@all << self
  end

  def self.all
    @@all
  end

end
