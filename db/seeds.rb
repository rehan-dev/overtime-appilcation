@user = User.create(email: "test@test.com", password: "0300rehan", password_confirmation: "0300rehan", first_name: "John", last_name: "Snow")
puts "1 user created"
AdminUser.create(email: "admin@admin.com", password: "0300rehan", password_confirmation: "0300rehan", first_name: "Admin", last_name: "Khan")
puts "1 Admin user created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "100 audit log have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes from a line in section 1.10.32.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts have been created"