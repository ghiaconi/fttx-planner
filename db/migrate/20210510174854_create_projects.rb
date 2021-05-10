class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :street_name
      t.integer :house_number
      t.integer :project_number
      t.string :responsible_phone
      t.text :remarks

      t.timestamps
    end
  end
end
