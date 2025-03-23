class CreateFlags < ActiveRecord::Migration[8.0]
  def change
    create_table :flags do |t|
      t.string :name
      t.string :key
      t.text :description
      t.boolean :default_value

      t.timestamps
    end
    add_index :flags, :name, unique: true
    add_index :flags, :key, unique: true
  end
end
