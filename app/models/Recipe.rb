#
class Recipe
  attr_accessor :ingredients
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    RecipeCard.all.each do |recipe|
      recipe.name
    end
  end

  def add_ingredients(ingredient_arr)
  end

  def users
    RecipeCard.all.select {|card| card.recipe == self}
  end

end
