# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning DB...'
Restaurant.destroy_all

puts 'Creating restaurants'
subway = { name: 'Subway', address: 'Freguesia', phone_number: '22-96574-4873', category: 'french' }
sushi = { name: 'Sushi', address: 'Botafogo', phone_number: '21-96532-8715', category: 'japanese' }
bere = { name: 'Berê', address: 'Barra', phone_number: '45-97718-0087', category: 'italian' }
tropikus = { name: 'Tropikus', address: 'Ipanema', phone_number: '33-98788-7560', category: 'chinese' }
adao = { name: 'Bar do Adão', address: 'Barra', phone_number: '35-99885-4407', category: 'belgian' }

[subway, sushi, bere, tropikus, adao].each do |restaurant_attributes|
  restaurant = Restaurant.create!(restaurant_attributes)
  puts "Created #{restaurant.name}"
end
