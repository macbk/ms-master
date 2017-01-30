class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.integer :number
      t.string :helicopter
      t.string :crs

      t.timestamps
    end
  end
end
