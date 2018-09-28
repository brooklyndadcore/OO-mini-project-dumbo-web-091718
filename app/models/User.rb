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

  def allergy_test(allergies, recipe)
    # binding.pry
    allergies.each do |a_item|
      if recipe.include?(a_item) == true
        return false
      end
    end
    return true
  end

  def safe_recipes
    safe_arr = []
    allergies = self.allergens.collect {|item| item.ingredient }.uniq
    Recipe.all.each do |recipe|
      # binding.pry
      if allergy_test(allergies, recipe.ingredient) == true
        safe_arr << recipe
      end
    end
    safe_arr
  end

end
