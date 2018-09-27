#
class User
  attr_reader :name
  attr_accessor :recipe_card
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def declare_allergen(allergy_ingredient)
    Allergen.new(allergy_ingredient, self)
  end

  def allergens
    Allergen.all.select {|allergy| allergy.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def recipes
    RecipeCard.all.select{|recipe| recipe.user == self}
  end

  def top_three_recipes
    rating_arr = self.recipes.sort_by {|recipe| recipe.rating}
    rating_arr[-3..-1]
  end

  def most_recent_recipe
    date_arr = self.recipes.sort_by {|recipe| recipe.date }
    date_arr[-1]
  end

  def safe_recipes
    allergy_arr = self.allergens.collect {|item| item.ingredient.name }.uniq
    
  end

end
