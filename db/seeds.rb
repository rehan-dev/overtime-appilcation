@user = User.create(email: "test@test.com", password: "0300rehan", password_confirmation: "0300rehan", first_name: "John", last_name: "Snow")

puts "1 user created"
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "100 posts have been created"