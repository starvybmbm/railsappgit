class CreateEpics < ActiveRecord::Migration
  def change
    create_table :epics do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
