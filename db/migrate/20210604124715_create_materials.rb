class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :title
      t.text :description
      t.references :task, null: true, foreign_key: true

      t.timestamps
    end
  end
end
