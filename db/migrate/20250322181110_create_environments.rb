class CreateEnvironments < ActiveRecord::Migration[8.0]
  def change
    create_table :environments do |t|
      t.string :name
      t.string :key

      t.timestamps
    end
    add_index :environments, :name, unique: true
    add_index :environments, :key, unique: true
  end
end
