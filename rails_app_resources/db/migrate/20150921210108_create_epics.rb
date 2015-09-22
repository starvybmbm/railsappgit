class CreateEpics < ActiveRecord::Migration
  def change
    create_table :epics do |t|
      t.text :content
      t.text :description
      t.integer :hours
      t.references :estimate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
