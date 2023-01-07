
# Create a main sample user.
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",             
             activated: true,
             activated_at: Time.zone.now)


User.create!(name:  "Milos",
             email: "mradenkovic@raf.edu.rs",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,             
             activated: true,
             activated_at: Time.zone.now)


# Generate a bunch of additional users.
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
