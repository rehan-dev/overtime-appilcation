namespace :notification do
  desc 'Sends mail notification to managers (admin users) each day to inform of pending overtime requests'
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any request
    # 3. Iterate over the list of admin users/admin
    # 4. send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
