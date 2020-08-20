10.times do |n|
User.create!(
             email: "sample#{n + 1}@example.com",
             password: '00000000',
             admin: false,
            )
end

10.times do |n|
User.create!(
             email: "sample#{n + 11}@example.com",
             password: '00000000',
             admin: true,
            )
end
