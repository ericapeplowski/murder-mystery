class CreateSecretPassages < ActiveRecord::Migration[5.0]
  def change
    create_table :secret_passages do |t|
      t.integer :entry
      t.integer :exit
      t.timestamps
    end
  end
end
