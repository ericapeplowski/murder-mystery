class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :title
      t.string :instructions
      t.string :example
      t.string :correct_code
      t.timestamps
    end
  end
end
