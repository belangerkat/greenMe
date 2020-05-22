class CreateDurations < ActiveRecord::Migration[6.0]
  def change
    create_table :durations do |t|
      t.string :length
      t.integer :points

      t.timestamps
    end
  end
end
