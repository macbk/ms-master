class CreateHelicopters < ActiveRecord::Migration[5.0]
  def change
    create_table :helicopters do |t|
      t.string :registration
      t.integer :serial_number
      t.integer :last_ms

      t.timestamps
    end
  end
end
