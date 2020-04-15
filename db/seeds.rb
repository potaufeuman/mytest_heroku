User.create!(name:  "Example User",
            email: "example@fortune.org",
            password:              "foobar",
            password_confirmation: "foobar",
            admin:     false,
            activated: true,
            activated_at: Time.zone.now)
             
# User.create!(name:  "Sumiko",
#             email: "ssumiko724@gmail.com",
#             password:              "omakase724",
#             password_confirmation: "omakase724",
#             admin:     false,
#             activated: true,
#             activated_at: Time.zone.now)