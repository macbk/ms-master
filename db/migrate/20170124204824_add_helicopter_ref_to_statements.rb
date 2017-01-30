class AddHelicopterRefToStatements < ActiveRecord::Migration[5.0]
  def change
    add_reference :statements, :helicopter, index: true, foreign_key: true
  end
end
