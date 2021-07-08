puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)


puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(name: "Aaa", age: rand(20..40), email: "aaa@gmail.com", cohort_id:rand(1..5))
s2 = Student.create(name: "Bbb", age: rand(20..40), email: "bbb@gmail.com", cohort_id:rand(1..5))
s3 = Student.create(name: "Ccc", age: rand(20..40), email: "ccc@gmail.com", cohort_id:rand(1..5))
s4 = Student.create(name: "Ddd", age: rand(20..40), email: "ddd@gmail.com", cohort_id:rand(1..5))
s5 = Student.create(name: "Eee", age: rand(20..40), email: "eee@gmail.com", cohort_id:rand(1..5))
s6 = Student.create(name: "Fff", age: rand(20..40), email: "fff@gmail.com", cohort_id:rand(1..5))
s7 = Student.create(name: "Ggg", age: rand(20..40), email: "ggg@gmail.com", cohort_id:rand(1..5))


puts "Done!"