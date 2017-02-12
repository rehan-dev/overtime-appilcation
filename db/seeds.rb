@user = User.create(email: "test@test.com", password: "0300rehan", password_confirmation: "0300rehan", first_name: "John", last_name: "Snow")
puts "1 user created"
AdminUser.create(email: "admin@admin.com", password: "0300rehan", password_confirmation: "0300rehan", first_name: "Admin", last_name: "Khan")
puts "1 Admin user created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "100 posts have been created"