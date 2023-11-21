# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Cleaning time...
puts 'Cleaning database...'
Activity.destroy_all
puts 'Cleaned Activities...'
User.destroy_all
puts 'Cleaned Users...'
Booking.destroy_all
puts 'Cleaned Bookings...'

puts 'Seeding goodness and coder happiness...'
puts 'Creating | Activities | Bookings | Users ...'

# HOST USER 1A
user1a = User.create(first_name: 'Sofia', last_name:'Bercianine', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-a1@host.com', password: 'password')

# HOST USER 1B
user1b = User.create(first_name: 'Elena', last_name:'Prousali', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-1b@host.com', password: 'password')

# GUEST USER 2A
user2a = User.create(first_name: 'Tobias', last_name:'Groenland', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'guest-2a@guest.com', password: 'password')

# GUEST USER 2B
user2b = User.create(first_name: 'Francesca', last_name:'Santoriello', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'guest-2b@guest.com', password: 'password')

# Activities
Activity.create(user_id: user1a.id, name: 'Stone Massage', price: 500, location: 'Dam,Amsterdam', duration: 60, img_url: 'https://source.unsplash.com/random/?stone massage/1280*1280')
Activity.create(user_id: user1b.id, name: 'Group Yoga', price: 725, location: 'Grote Markt, The Hague', duration: 90, img_url: 'https://source.unsplash.com/random/?group yoga/1280*1280')
Activity.create(user_id: user1a.id, name: 'Group Spa', price: 150, location: 'Koolsingel, Rotterdam', duration: 180, img_url: 'https://source.unsplash.com/random/?group spa/1280*1280')
Activity.create(user_id: user2b.id, name: 'Ayurvedic Massage', price: 135, location: 'NS Central Station, Delft', duration: 60, img_url: 'https://source.unsplash.com/random/?Ayurvedic Massage/1280*1280')
Activity.create(user_id: user2a.id, name: 'Sauna day', price: 750, location: 'Europaplein, Rotterdam', duration: 500, img_url: 'https://source.unsplash.com/random/?Sauna Day/1280*1280')
Activity.create(user_id: user2b.id, name: 'Breathing experience', price: 750, location: 'Kanaalkade, Alkmaar', duration: 60, img_url: 'https://source.unsplash.com/random/?Pranayama/1280*1280')
Activity.create(user_id: user1a.id, name: 'Holistic Harmoney', price: 275, location: 'NS Central Station, Delft', duration: 75, img_url: 'https://source.unsplash.com/random/?Holistic Harmoney/1280*1280')
Activity.create(user_id: user1b.id, name: 'Acupuncture', price: 125, location: 'Grote Markt, Groningen', duration: 60, img_url: 'https://source.unsplash.com/random/?Acupuncture/1280*1280')

# Finished
puts 'Finished: All good, Happy coding ;-)'
