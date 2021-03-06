require_relative '../config/environment.rb'
#



bill = User.new("bill")
tood = User.new("tood")
steve = User.new("steve")
matt = User.new("matt")
bill = User.new("bill")
jenny = User.new("jenny")
sarah = User.new("sarah")

cookies = Recipe.new("cookies")
lasagna = Recipe.new("lasagna")
bread = Recipe.new("bread")
brownies = Recipe.new("brownies")

flour = Ingredient.new("flour")
salt = Ingredient.new("salt")
sugar = Ingredient.new("sugar")
egg = Ingredient.new("egg")
butter = Ingredient.new("butter")
vanilla = Ingredient.new("vanilla")
baking_soda = Ingredient.new("baking soda")
yeast = Ingredient.new("yeast")
water = Ingredient.new("water")
milk = Ingredient.new("milk")
noodles = Ingredient.new("noodles")
cheese = Ingredient.new("cheese")
sauce = Ingredient.new("sauce")

bread.add_ingredients([yeast, flour, salt, water])
cookies.add_ingredients([egg, flour, salt, sugar, butter])
brownies.add_ingredients([egg, flour, salt, milk, butter, sugar])
lasagna.add_ingredients([noodles, cheese, sauce])

sarah.add_recipe_card(cookies, 20180101, 6)
sarah.add_recipe_card(cookies, 20180101, 6)
sarah.add_recipe_card(brownies, 20180101, 6)
sarah.add_recipe_card(bread, 20180101, 6)
sarah.add_recipe_card(bread, 20180101, 6)
sarah.add_recipe_card(brownies, 20180201, 5)
sarah.add_recipe_card(cookies, 20180101, 6)

sarah.declare_allergen(sugar)
tood.declare_allergen(egg)
bill.declare_allergen(flour)
jenny.declare_allergen(milk)
sarah.declare_allergen(milk)

# p Allergen.all


# p lasagna.ingredients
# p brownies.ingredients
# p cookies.ingredients
# p bread.ingredients

# binding.pry

# sarah.safe_recipes

binding.pry
