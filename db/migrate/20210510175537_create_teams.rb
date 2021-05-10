class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :van_model
      t.string :van_registration_number

      t.timestamps
    end
  end
end
