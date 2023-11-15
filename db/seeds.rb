# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
rest_name = %w[Ember Basilica Zenith Mosaic Savor Indulge Haven Elixir Zephyr Fusion]
rest_address = ["123 Maple Street", "456 Oak Avenue", "789 Pine Lane", "101 Cedar Court", "222 Birch Road", "333 Elm Boulevard", "444 Willow Drive", "555 Juniper Avenue", "666 Sycamore Lane", "777 Aspen Street"]
rest_phone = ["123-456-7890", "234-567-8901", "345-678-9012", "456-789-0123", "567-890-1234", "678-901-2345", "789-012-3456", "890-123-4567", "901-234-5678", "012-345-6789"]
rest_category = %w[chinese italian japanese french belgian]

10.times do
  sample = {
    name: rest_name.sample,
    address: rest_address.sample,
    phone_number: rest_phone.sample,
    category: rest_category.sample
  }
  restaurant = Restaurant.create(sample)
  puts "#{restaurant.name} has been succesfully created"
end
