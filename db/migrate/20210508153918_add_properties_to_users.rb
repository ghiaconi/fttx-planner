class AddPropertiesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :full_name, :string
    add_column :users, :nickname, :string
    add_column :users, :phone_number, :string
    add_column :users, :team_id, :integer
  end
end
