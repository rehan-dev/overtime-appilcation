FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name 'John'
    last_name 'Snow'
    email { generate :email }
    password "0300rehan"
    password_confirmation "0300rehan"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email "admin@user.com"
    password "0300rehan"
    password_confirmation "0300rehan"
  end
end