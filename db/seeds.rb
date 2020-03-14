User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

# https://github.com/faker-ruby/faker/blob/master/doc/books/book.md
users = User.order(:created_at).take(5)
10.times do
  title = Faker::Book.title
  subject = Faker::Book.genre
  users.each { |user| user.tests.create!(title: title, subject: subject) }
end

tests = Test.order(:created_at).take(5)
10.times do
  Q = Faker::Lorem.question
  tests.each { |test| test.questions.create!(Q: Q) }
end