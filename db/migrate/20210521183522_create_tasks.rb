class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :scheduled_at
      t.datetime :completed_on
      t.string :status, default: 'open'
      t.integer :project_id
      t.integer :team_id

      t.timestamps
    end
  end
end
