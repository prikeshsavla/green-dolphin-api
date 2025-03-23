class CreateEnvironmentFlags < ActiveRecord::Migration[8.0]
  def change
    create_table :environment_flags do |t|
      t.references :environment, null: false, foreign_key: true
      t.references :flag, null: false, foreign_key: true
      t.boolean :value, default: false
      t.timestamps
    end
  end
end
