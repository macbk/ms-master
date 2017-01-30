class ChangeColumns < ActiveRecord::Migration[5.0]
  def change
  	change_table :statements do |t|
  		t.remove :number
  		t.rename :helicopter, :sot
  	end
  end
end