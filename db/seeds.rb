# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
american = Category.where(name: "american").first_or_create(name: "american")
chinese = Category.where(name: "Chinese").first_or_create(name: "Chinese")
greek = Category.where(name: "Greek").first_or_create(name: "Greek")
indian = Category.where(name: "Indian").first_or_create(name: "Indian")
italian = Category.where(name: "Italian").first_or_create(name: "Italian")
japanese = Category.where(name: "Japanese").first_or_create(name: "Japanese")
mexican = Category.where(name: "Mexican").first_or_create(name: "Mexican")

Restaurant.where(name: "Taco Bell").first_or_create(name: "Taco Bell", description: "tacos", city:"los angeles", state:"CA", category_id: mexican.id)
Restaurant.where(name: "Taco Gorew").first_or_create(name: "Taco Gorew", description: "tacos", city:"san francisco", state:"CA", category_id: mexican.id)
Restaurant.where(name: "Cilantro Tacos").first_or_create(name: "Cilantro Tacos", description: "tacos", city:"san diego", state:"CA", category_id: mexican.id)
Restaurant.where(name: "Taco Tuesday").first_or_create(name: "Taco Tuesday", description: "tacos", city:"napa valley", state:"CA", category_id: mexican.id)
Restaurant.where(name: "Taco Kiara").first_or_create(name: "Taco Kiara", description: "tacos", city:"irvine", state:"CA", category_id: mexican.id)
sleep 0.25
Restaurant.where(name: "Five Guys").first_or_create(name: "Five Guys", description: "burgers", city:"los angeles", state:"CA", category_id: american.id)
Restaurant.where(name: "Outback").first_or_create(name: "Outback", description: "burgers", city:"san francisco", state:"CA", category_id: american.id)
Restaurant.where(name: "Relish").first_or_create(name: "Relish", description: "burgers", city:"san diego", state:"CA", category_id: american.id)
Restaurant.where(name: "Publix Fried Chix Wings").first_or_create(name: "Publix Fried Chix Wings", description: "burgers", city:"napa valley", state:"CA", category_id: american.id)
Restaurant.where(name: "Burger 21").first_or_create(name: "Burger 21", description: "burgers", city:"irvine", state:"CA", category_id: american.id)
sleep 0.25
Restaurant.where(name: "Masa").first_or_create(name: "Masa", description: "sushi", city:"los angeles", state:"CA", category_id: japanese.id)
Restaurant.where(name: "Ginza").first_or_create(name: "Ginza", description: "sushi", city:"san francisco", state:"CA", category_id: japanese.id)
Restaurant.where(name: "Koizi").first_or_create(name: "Koizi", description: "sushi", city:"san diego", state:"CA", category_id: japanese.id)
Restaurant.where(name: "Soho").first_or_create(name: "Soho", description: "sushi", city:"napa valley", state:"CA", category_id: japanese.id)
Restaurant.where(name: "SushiKo").first_or_create(name: "SushiKo", description: "sushi", city:"irvine", state:"CA", category_id: japanese.id)
sleep 0.25
Restaurant.where(name: "Sbarros").first_or_create(name: "Sbarros", description: "pasta,pizza", city:"Tampa", state:"FL", category_id: italian.id)
Restaurant.where(name: "Winehouse").first_or_create(name: "Winehouse", description: "pasta,pizza", city:"miami", state:"FL", category_id: italian.id)
Restaurant.where(name: "Carabas").first_or_create(name: "Carabas", description: "pasta,pizza", city:"gainesville", state:"FL", category_id: italian.id)
Restaurant.where(name: "Pastassss").first_or_create(name: "Pastassss", description: "pasta,pizza", city:"orlando", state:"FL", category_id: italian.id)
Restaurant.where(name: "Marinas").first_or_create(name: "Marinas", description: "pasta,pizza", city:"daytona", state:"FL", category_id: italian.id)
sleep 0.25
Restaurant.where(name: "Pitaz").first_or_create(name: "Pitaz", description: "gyros", city:"los angeles", state:"CA", category_id:greek.id)
Restaurant.where(name: "KebabsRCool").first_or_create(name: "KebabsRCool", description: "gyros", city:"san francisco", state:"CA", category_id: greek.id)
Restaurant.where(name: "QuickGyros").first_or_create(name: "QuickGyros", description: "gyros", city:"san diego", state:"CA", category_id: greek.id)
Restaurant.where(name: "Acrop").first_or_create(name: "Acrop", description: "gyros", city:"napa valley", state:"CA", category_id:greek.id)
Restaurant.where(name: "Little Greek").first_or_create(name: "Little Greek", description: "gyros", city:"irvine", state:"CA", category_id: greek.id)