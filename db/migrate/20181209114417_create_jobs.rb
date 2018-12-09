class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.references :athletes, foreign_key: true

      t.timestamps
    end
  end
end
