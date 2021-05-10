class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :scheduled_at
      t.date :completed_on
      t.string :status, default: 'open'
      t.belongs_to :team
      t.belongs_to :project

      t.timestamps
    end
  end
end
