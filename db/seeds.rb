# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << admin.email

Bobs_beans = Merchant.create(name: "Bob's Beans", password: "password", email: "beans@example.com", description: "Best Beans in town")
PaleoParths = Merchant.create(name: "Paleo Parths", password: "password", email: "parth@example.com", description: "Where all the paleo stuffs is")
Larrys      = Merchant.create(name: "Larry's Place", password: "password", email: "larrys@example.com", description: "a place for all things larry")

#three stores with three products each 9 total 
pinto_beans = Product.create(name: "Pinto Beans", kind: "food", price: 3.50, description: "these are pinto beans", quantity: 1)
black_beans = Product.create(name: "Black Beans", kind: "food", price: 1.25, description: "black beans are beans that are black", quantity: 1)
soybeans   = Product.create(name: "Soybeans", kind: "food", price: 3.00, description: "Soybeans are from a soy plant", quantity: 1)

Bobs_beans.products << pinto_beans
Bobs_beans.products << black_beans
Bobs_beans.products << soybeans

almonds = Product.create(name: "Almonds", kind: "food", price: 5.25, description: "Almonds are nuts that are good", quantity: 2)
eggs    = Product.create(name: "Eggs", kind: "food", price: 4.50, description: "Eggs are fair game, can be hunted/gathered", quantity: 6)
beef    = Product.create(name: "Beef", kind: "food", price: 7.50, description: "Finest ground beef available", quantity: 1)

PaleoParths.products << almonds
PaleoParths.products << eggs
PaleoParths.products << beef

windex = Product.create(name: "windex", kind: "cleaner", price: 3.50, description: "multi purpose cleaner for any glass surfaces", quantity: 1)
chap_stick = Product.create(name: "carmex", kind: "personal care", price: 1.25, description: "for chapped lips, works great", quantity: 1)
toilet_paper = Product.create(name: "toilet paper", kind: "bathroom", price: 5.00, description: "Ultra soft and ultra strong, used by bears", quantity: 6)

Larrys.products << windex
Larrys.products << chap_stick
Larrys.products << toilet_paper

# merchants making purchases

PaleoParths.purchases << pinto_beans


