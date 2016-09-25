class CreateSuspects < ActiveRecord::Migration[5.0]
  def change
    create_table :suspects do |t|
      t.string :first_name
      t.string :last_name
      t.string :prefix
      t.integer :age
      t.string :occupation
      t.boolean :alive
      t.timestamps
    end
  end
end
