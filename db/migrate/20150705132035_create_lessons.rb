class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :StartTime
      t.datetime :EndTime
      t.string :location
      t.string :category
      t.string :name
      t.float :price
      t.integer :capacity
      t.text :description
      t.string :langauge
      t.references :host

      t.timestamps null: false
    end
  end
end
