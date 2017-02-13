class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :term
      t.belongs_to :statement, foreign_key: true

      t.timestamps
    end
  end
end
