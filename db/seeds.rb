# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Booking.destroy_all
User.destroy_all
Instructor.destroy_all
Workout.destroy_all

admin_1 = User.create!({password:'password8', email:'sybadmin@gmail.com', account_type:3})
admin_2 = User.create!({password:'password1', email:'chtompkins027@gmail.com', account_type:3})

instructor_user1 = User.create!({password:'password2', email:'andymoran@syb.com', account_type:2})
instructor_user2 = User.create!({password:'password3', email:'dalemoss@syb.com', account_type:2})
instructor_user3 = User.create!({password:'password3', email:'mantaszvinas@syb.com', account_type:2})
instructor_user4 = User.create!({password:'password3', email:'jennamoroso@syb.com', account_type:2})
instructor_user5 = User.create!({password:'password3', email:'samirpoonawala@syb.com', account_type:2})
instructor_user6 = User.create!({password:'password3', email:'elenabrown@syb.com', account_type:2})
instructor_user7 = User.create!({password:'password3', email:'katieb@syb.com', account_type:2})

instructor_array = [instructor_user1, instructor_user2, instructor_user3, instructor_user4, instructor_user5, instructor_user6,
  instructor_user7]

#creating clients
10.times do
  client_user = User.create!({password:'password1', email:Faker::Internet.email, account_type:1})
  user_account = Account.create!
  1.times do
    Client.create!({first_name:Faker::Name.name,last_name: Faker::Superhero.name,
      phone:Faker::PhoneNumber.cell_phone, instagram:Faker::FunnyName.name,
      user_id: client_user.id, account_id: user_account.id})
  end
end

#creating Instructors

  instructor_array.each do |instructor|
    instructor_account = Account.create!
    Instructor.create!({first_name:Faker::Name.name,last_name: Faker::Superhero.name,
    email: instructor.email, bio: Faker::ChuckNorris.fact, instagram: Faker::FunnyName.name,
      experience: '3 years', user_id: instructor.id, account_id: instructor_account.id})
  end
