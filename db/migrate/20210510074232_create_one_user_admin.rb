class CreateOneUserAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email     = 'admin@fttx-planner.net'
      u.password  = 'password'
      u.admin = true
      u.confirm
    end
  end
end
