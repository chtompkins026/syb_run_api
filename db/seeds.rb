# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Booking.destroy_all
Schedule.destroy_all
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

client_array = []

#creating clients
10.times do
  client_user = User.create!({password:'password1', email:Faker::Internet.email, account_type:1})

  1.times do
    client = Client.create!({first_name:Faker::Name.name,last_name: Faker::Superhero.name,
      phone:Faker::PhoneNumber.cell_phone, instagram:Faker::FunnyName.name,
      user_id: client_user.id})

    client_array << client
  end
end

#creating Instructors
  instructor_array.each do |instructor|
    # instructor_account = Account.create!
    Instructor.create!({first_name:Faker::Name.name,last_name: Faker::Superhero.name,
    email: instructor.email, region: "New York", bio: Faker::ChuckNorris.fact, instagram: Faker::FunnyName.name,
      experience: '3 years', user_id: instructor.id})
  end

  # for Workout 1 Test
  date1 = DateTime.new(2019, 4, 17, 10, 00, 00)
  date2 = DateTime.new(2019, 4, 18, 12, 00, 00)
  date3 = DateTime.new(2019, 4, 19, 18, 00, 00)

  # for workout 2 test
  date4 = DateTime.new(2019, 4, 17, 8, 00, 00)
  date5 = DateTime.new(2019, 4, 18, 9, 00, 00)
  date6 = DateTime.new(2019, 4, 19, 9, 00, 00)

  # for workout3 test

  date7 = DateTime.new(2019, 4, 17, 12, 00, 00)
  date8 = DateTime.new(2019, 4, 18, 13, 00, 00)
  date9 = DateTime.new(2019, 4, 19, 14, 00, 00)


#creating Workouts
   workout1 = Workout.create!({name: "Burn Class", duration: 55, region: "Boston", description: "Burn 1000 Calories in 45 minutes", cost:30, level:"Novice"})
     schedule1 = Schedule.create!({title: workout1.name, start: date1, end: date1.change(hour: 1), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule2 = Schedule.create!({title: workout1.name, start: date1.change(hour: 2), end: date1.change(hour: 3), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule3 = Schedule.create!({title: workout1.name, start: date1.change(hour: 4), end: date1.change(hour: 5), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule4 = Schedule.create!({title: workout1.name, start: date2, end: date2.change(hour: 1), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule5 = Schedule.create!({title: workout1.name, start: date2.change(hour: 2), end: date2.change(hour: 3), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule6 = Schedule.create!({title: workout1.name, start: date2.change(hour: 4), end: date2.change(hour: 5), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule7 = Schedule.create!({title: workout1.name, start: date3, end: date3.change(hour: 1), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule8 = Schedule.create!({title: workout1.name, start: date3.change(hour: 2), end: date3.change(hour: 3), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule9 = Schedule.create!({title: workout1.name, start: date3.change(hour: 4), end: date3.change(hour: 5), instructor_id: Instructor.first.id, workout_id: workout1.id})
     schedule10 = Schedule.create!({title: workout1.name, start: date3.change(hour: 6), end: date3.change(hour: 7), instructor_id: Instructor.first.id, workout_id: workout1.id})


    workout2 = Workout.create!({name: "Crossfit", duration: 55, region: "New York", description: "High Intensity Movement", cost:30, level:"Intermediate"})
      schedule11 = Schedule.create!({title: workout2.name, start: date4, end: date4.change(hour: 1), instructor_id: Instructor.first.id, workout_id: workout2.id})
      schedule21 = Schedule.create!({title: workout2.name, start: date4.change(hour: 2), end: date4.change(hour: 3), instructor_id: Instructor.second.id, workout_id: workout2.id})
      schedule31 = Schedule.create!({title: workout2.name, start: date4.change(hour: 4), end: date4.change(hour: 5), instructor_id: Instructor.second.id, workout_id: workout2.id})
      schedule41 = Schedule.create!({title: workout2.name, start: date5, end: date5.change(hour: 1), instructor_id: Instructor.second.id, workout_id: workout2.id})
      schedule51 = Schedule.create!({title: workout2.name, start: date5.change(hour: 3), end: date5.change(hour: 4), instructor_id: Instructor.first.id, workout_id: workout2.id})
      schedule61 = Schedule.create!({title: workout2.name, start: date5.change(hour: 5), end: date5.change(hour: 6), instructor_id: Instructor.first.id, workout_id: workout2.id})
      schedule71 = Schedule.create!({title: workout2.name, start: date6, end: date6.change(hour: 1), instructor_id: Instructor.first.id, workout_id: workout2.id})
      schedule81 = Schedule.create!({title: workout2.name, start: date6.change(hour: 2), end: date6.change(hour: 3), instructor_id: Instructor.third.id, workout_id: workout2.id})
      schedule91 = Schedule.create!({title: workout2.name, start: date6.change(hour: 4), end: date6.change(hour: 5), instructor_id: Instructor.third.id, workout_id: workout2.id})
      schedule101 = Schedule.create!({title: workout2.name, start: date6.change(hour: 6), end: date6.change(hour: 7), instructor_id: Instructor.third.id, workout_id: workout2.id})

    workout3 = Workout.create!({name: "Tonehouse Workout", duration: 55, region: "San Francisco", description: "Intensive Cardio Class Designed To Get You In Shape", cost:30, level:"Advanced"})
      schedule12 = Schedule.create!({title: workout3.name, start: date7, end: date7.change(hour: 1), instructor_id: Instructor.fourth.id, workout_id: workout3.id})
      schedule22 = Schedule.create!({title: workout3.name, start: date7.change(hour: 2), end: date7.change(hour: 3), instructor_id: Instructor.fourth.id, workout_id: workout3.id})
      schedule32 = Schedule.create!({title: workout3.name, start: date7.change(hour: 4), end: date7.change(hour: 5), instructor_id: Instructor.fifth.id, workout_id: workout3.id})
      schedule42 = Schedule.create!({title: workout3.name, start: date8, end: date8.change(hour: 1), instructor_id: Instructor.fifth.id, workout_id: workout3.id})
      schedule52 = Schedule.create!({title: workout3.name, start: date8.change(hour: 2), end: date8.change(hour: 3), instructor_id: Instructor.fifth.id, workout_id: workout3.id})
      schedule62 = Schedule.create!({title: workout3.name, start: date8.change(hour: 4), end: date8.change(hour: 5), instructor_id: Instructor.fifth.id, workout_id: workout3.id})
      schedule72 = Schedule.create!({title: workout3.name, start: date9, end: date9.change(hour: 1), instructor_id: Instructor.fifth.id, workout_id: workout3.id})
      schedule82 = Schedule.create!({title: workout3.name, start: date9.change(hour: 2), end: date9.change(hour: 3), instructor_id: Instructor.last.id, workout_id: workout3.id})
      schedule92 = Schedule.create!({title: workout3.name, start: date9.change(hour: 4), end: date9.change(hour: 5), instructor_id: Instructor.last.id, workout_id: workout3.id})
      schedule102 = Schedule.create!({title: workout3.name, start: date9.change(hour: 6), end: date9.change(hour: 7), instructor_id: Instructor.last.id, workout_id: workout3.id})

    #Creating Fake Bookings
     client1 = client_array[0]
     client2 = client_array[1]
     client3 = client_array[2]
     client4 = client_array[3]
     client5 = client_array[4]
     client6 = client_array[5]


    #Workout 1
    booking1 = Booking.create!({status: "confirmed", title:"booking", cost: Workout.first.cost, start: schedule1.start, instructor_id: schedule1.instructor_id, schedule_id: schedule1.id, client_id: client1.id})
    booking2 = Booking.create!({status: "confirmed", title:"booking", cost: Workout.first.cost, start: schedule2.start, instructor_id: schedule2.instructor_id, schedule_id: schedule2.id, client_id: client1.id})
    booking3 = Booking.create!({status: "confirmed", title:"booking", cost: Workout.first.cost, start: schedule1.start, instructor_id: schedule1.instructor_id, schedule_id: schedule1.id, client_id: client2.id})
    booking4 = Booking.create!({status: "confirmed", title:"booking", cost: Workout.first.cost, start: schedule2.start, instructor_id: schedule2.instructor_id, schedule_id: schedule2.id, client_id: client2.id})

    #Workout 2
    booking5 = Booking.create!({status: "confirmed", title:"booking", cost: workout2.cost, start: schedule11.start, instructor_id: schedule11.instructor_id, schedule_id: schedule11.id, client_id: client3.id})
    booking6 = Booking.create!({status: "confirmed", title:"booking", cost: workout2.cost, start: schedule21.start, instructor_id: schedule21.instructor_id, schedule_id: schedule21.id, client_id: client3.id})
    booking7 = Booking.create!({status: "confirmed", title:"booking", cost: workout2.cost, start: schedule11.start, instructor_id: schedule11.instructor_id, schedule_id: schedule11.id, client_id: client4.id})
    booking8 = Booking.create!({status: "confirmed", title:"booking", cost: workout2.cost, start: schedule21.start, instructor_id: schedule21.instructor_id, schedule_id: schedule21.id, client_id: client4.id})

    #Workout 3
    booking9 = Booking.create!({status: "confirmed", title:"booking", cost: workout3.cost, start: schedule12.start, instructor_id: schedule12.instructor_id, schedule_id: schedule12.id, client_id: client5.id})
    booking10 = Booking.create!({status: "confirmed", title:"booking", cost: workout3.cost, start: schedule22.start, instructor_id: schedule22.instructor_id, schedule_id: schedule22.id, client_id: client5.id})
    booking11 = Booking.create!({status: "confirmed", title:"booking", cost: workout3.cost, start: schedule12.start, instructor_id: schedule12.instructor_id, schedule_id: schedule12.id, client_id: client6.id})
    booking12 = Booking.create!({status: "confirmed", title:"booking", cost: workout3.cost, start: schedule22.start, instructor_id: schedule22.instructor_id, schedule_id: schedule22.id, client_id: client6.id})
