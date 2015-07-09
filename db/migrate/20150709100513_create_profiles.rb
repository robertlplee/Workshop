class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.string :base
      t.text :education
      t.text :interests
      t.references :user

      t.timestamps null: false
    end
  end
end
