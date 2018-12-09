class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :trekking
      t.integer :mtb
      t.integer :kayaking
      t.integer :orienteering
      t.integer :vertical

      t.timestamps
    end
  end
end
