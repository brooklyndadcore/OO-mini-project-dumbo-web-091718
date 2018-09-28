#
class Recipe
  attr_accessor :ingredient, :count
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

  def self.most_popular
    counted = RecipeCard.all.sort_by {|x| x.recipe.count}
    counted[-1].recipe
  end

  def add_ingredients(ingredient_arr)
    self.ingredient = ingredient_arr
  end

  def users
    RecipeCard.all.select {|card| card.recipe == self}
  end

  def ingredients
    self.ingredient.collect {|item| item.name }
  end

  def allergens
    name_arr = []
    allergen_list = Allergen.all.collect {|item| item.ingredient.name }.uniq
    allergen_list.each do |item|
      self.ingredients.each do |ind|
        if item == ind.name
          name_arr << item
        end
      end
    end
    name_arr
  end


end
