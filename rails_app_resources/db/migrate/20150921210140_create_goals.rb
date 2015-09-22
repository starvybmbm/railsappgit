class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text :content
      t.text :description
      t.integer :hours
      t.references :epic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
