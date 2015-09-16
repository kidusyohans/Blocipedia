# # Create an admin user
 admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!
 
 # Create a premium
 moderator = User.new(
   name:     'Premium User',
   email:    'premium@example.com',
   password: 'helloworld',
   role:     'premium'
 )
 premium.skip_confirmation!
 premium.save!
 
 # Create a standard
 member = User.new(
   name:     'Standard User',
   email:    'standard@example.com',
   password: 'helloworld'
 )
 standard.skip_confirmation!
 standard.save!