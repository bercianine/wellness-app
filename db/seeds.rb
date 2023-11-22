# Clean database
puts 'Cleaning database...'
Activity.destroy_all
puts 'Cleaned Activities...'
User.destroy_all
puts 'Cleaned Users...'
Booking.destroy_all
puts 'Cleaned Bookings...'

# Set the user data
puts 'Creating users...'
user1a = { first_name: 'Sofia', last_name: 'Bercianine', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-a1@host.com', password: 'password123' }
user1b = { first_name: 'Elena', last_name: 'Prousali', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-1b@host.com', password: 'password12' }
user2a = { first_name: 'Tobias', last_name: 'Groenland', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-2a@host.com', password: 'password1' }
user2b = { first_name: 'Francesca', last_name: 'Santoriello', avatar_url: 'https://source.unsplash.com/random/500x500/?portrait', email: 'host-2b@host.com', password: 'password' }

# Create users
user1a_record = User.create!(user1a)
puts "Created #{user1a_record.first_name} #{user1a_record.last_name}"
user1b_record = User.create!(user1b)
puts "Created #{user1b_record.first_name} #{user1b_record.last_name}"
user2a_record = User.create!(user2a)
puts "Created #{user2a_record.first_name} #{user2a_record.last_name}"
user2b_record = User.create!(user2b)
puts "Created #{user2b_record.first_name} #{user2b_record.last_name}"

# Set the activity data
puts 'Creating activities...'
activity1 = { user_id: user1a_record.id, name: 'Hot Stone Massage', price: 500, location: 'Dam, Amsterdam', duration: 60, img_url: 'https://images.unsplash.com/photo-1600334129128-685c5582fd35?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', date: Date.strptime("09/14/2009", "%m/%d/%Y"), start_time: Time.parse("08:00") }
activity2 = { user_id: user1b_record.id, name: 'Group Yoga', price: 725, location: 'Grote Markt, The Hague', duration: 90, img_url: 'https://plus.unsplash.com/premium_photo-1663047487227-0f3cd88ed8aa?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity3 = { user_id: user2a_record.id, name: 'Group Spa', price: 150, location: 'Koolsingel, Rotterdam', duration: 180, img_url: 'https://plus.unsplash.com/premium_photo-1661277693458-6c65cb09aa41?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity4 = { user_id: user2b_record.id, name: 'Ayurvedic Massage', price: 135, location: 'NS Central Station, Delft', duration: 60, img_url: 'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity5 = { user_id: user1a_record.id, name: 'Sauna Day', price: 750, location: 'Europaplein, Rotterdam', duration: 500, img_url: 'https://plus.unsplash.com/premium_photo-1661322614846-d34da9f111dc?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity6 = { user_id: user1b_record.id, name: 'Breathing experience', price: 750, location: 'Kanaalkade, Alkmaar', duration: 60, img_url: 'https://plus.unsplash.com/premium_photo-1663047812698-fdd05e787f00?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity7 = { user_id: user2a_record.id, name: 'Holistic Harmoney', price: 275, location: 'NS Central Station, Delft', duration: 75, img_url: 'https://images.unsplash.com/photo-1494390248081-4e521a5940db?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity8 = { user_id: user2b_record.id, name: 'Acupuncture', price: 125, location: 'Grote Markt, Groningen', duration: 60, img_url: 'https://images.unsplash.com/photo-1512290923902-8a9f81dc236c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
activity9 = { user_id: user1a_record.id, name: 'Clay Mask Treatment', price: 100, location: 'Jordaan, Amsterdam', duration: 30, img_url: 'https://images.unsplash.com/photo-1570172619644-dfd03ed5d881?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }

# Create activities
[activity1, activity2, activity3, activity4, activity5, activity6, activity7, activity8, activity9].each do |attributes|
  activity = Activity.create!(attributes)
  puts "Created #{activity.name}"
end

puts 'All good!'
