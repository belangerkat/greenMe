class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :definition
      t.references :difficulty, null: false, foreign_key: true
      t.references :duration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
