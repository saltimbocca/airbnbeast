class CreateBeasts < ActiveRecord::Migration[6.1]
  def change
    create_table :beasts do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.string :species
      t.string :photo
      t.string :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
