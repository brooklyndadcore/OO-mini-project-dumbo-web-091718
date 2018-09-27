#

class RecipeCard
  attr_reader :user, :recipe, :date, :rating
  @@all = []

  def initialize(user, recipe,  date, rating)
    @recipe = recipe
    recipe.count += 1
    @user = user
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
