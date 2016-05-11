(1..5).each do |u|
  user = User.create(name: "Name_#{u}", email: "name_#{u}@gmail.com")
  loops = rand(1..10)
  loops.times.each do |i|
    user.products.create(title: "Product_#{i}", description: "This is the description for the product product_#{i}.", deadline: Date.today + rand(1..30).days)
  end
end

puts "Seeding complete"
