class CreateDifficulties < ActiveRecord::Migration[6.0]
  def change
    create_table :difficulties do |t|
      t.string :rank
      t.integer :points

      t.timestamps
    end
  end
end
