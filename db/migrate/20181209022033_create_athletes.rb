class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :job1
      t.string :job2
      t.string :job3
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
