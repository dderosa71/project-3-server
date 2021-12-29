puts "🌱 Seeding spices..."

# Seed your database here

5.times do 
location = Location.create(
    city: Faker::Address.city,
    state: Faker::Address.city,
    country: Faker::Address.country
)

rand(1..10).times do
Attraction.create(
        name: Faker::Restaurant.name,
        attraction_type: "Restaurant",
        notes: "good food",
        location_id: location.id
        )
end
end

puts "✅ Done seeding!"

# require 'faker'
# require 'populator'

# 1000.times do
#   article = Article.create( 
#     :title => Faker::Name.title, #=> "Legacy Creative Director",
#     :body => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#   )
#   puts article.inspect
# end
