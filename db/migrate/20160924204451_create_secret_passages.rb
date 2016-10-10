class CreateSecretPassages < ActiveRecord::Migration[5.0]
  def change
    create_table :secret_passages do |t|
      t.integer :entry_id
      t.integer :exit_id
      t.timestamps
    end
  end
end
