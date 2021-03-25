# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.destroy_all
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Ice")
# Ingredient.create(name: "Rum")
# Ingredient.create(name: "Sugar syrup")
# -----------------------Ingredients---------------------------------->
require 'open-uri'

puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?

puts "Destroy Cocktails"
Cocktail.destroy_all if Rails.env.development?

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
# ----------------------Cocktails------------------------------------------>
Cocktail.destroy_all
Cocktail.create!(
  name: "Jungle Bird",
  image_url: 'https://images.unsplash.com/photo-1575650772417-e6b418b0d106?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
  # dose: "hello everyone"
  )

Cocktail.create!(
  name: "Margarita",
  image_url: 'https://images.unsplash.com/photo-1541288892379-c987c60cd049?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'
  )

Cocktail.create!(
  name: "Walk of Shame",
  image_url: 'https://images.unsplash.com/photo-1481671703460-040cb8a2d909?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'
  )

Cocktail.create!(
  name: "Mary Pickford Cocktail",
  image_url: 'https://images.unsplash.com/photo-1536599424071-0b215a388ba7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'
  )


Cocktail.create!(
  name: "French 75",
  image_url: 'https://images.unsplash.com/photo-1560508179-b2c9a3f8e92b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80'
  )

Cocktail.create!(
  name: "Pisco Sour",
  image_url: 'https://images.unsplash.com/photo-1523371054106-bbf80586c38c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'
  )
# -----
# --------------------------Doses------------------------------------------>
# Dose.destroy_all
# Dose.create!(
#   # ingredient: "lemon",
#   description: "This citrusy drink is said to have started its path to popularity by thirsty Americans (Ernest Hemingway, for one) living or visiting Cuba during Prohibition. Although you’ll see variations churning away in frozen slush machines in bars and restaurants all over, the original was once served, very cold, over ice.",
#   cocktail: "Pisco Sour"
#   )
