# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_user(email,password)
  user = User.find_by_email(email);
  user ||= User.create!(:email => email, :password => password, :password_confirmation => password)
  user
end

puts 'SETTING UP DEFAULT USER LOGIN'
user = create_user('admin@kitatdot.net','adminadmin')
puts 'First user created: ' << user.email

demo_user = create_user('demo@kitatdot.net','demodemo')
puts 'Demo user created: ' << demo_user.email


