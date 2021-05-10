class CreateAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email     = 'admin@fttx-planner.com'
      u.password  = 'password'
      u.admin = true
    end
  end
end
