require 'faker'
 
## Create Users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  #user.skip_confirmation!
  user.save
end
 users = User.all
 
## Create wikis
20.times do 
  wiki = Wiki.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

wikis = Wiki.all
puts "#{wikis.count} wikis created."

# # Create an admin user
 admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 #admin.skip_confirmation!
 admin.save!
 
 # Create a premium
 moderator = User.new(
   name:     'Premium User',
   email:    'premium@example.com',
   password: 'helloworld',
   role:     'premium'
 )
 #premium.skip_confirmation!
 premium.save!
 
 # Create a standard
 member = User.new(
   name:     'Standard User',
   email:    'standard@example.com',
   password: 'helloworld'
 )
 #standard.skip_confirmation!
 standard.save!
 
 