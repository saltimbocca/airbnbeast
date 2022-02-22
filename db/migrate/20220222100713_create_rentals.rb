class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :beast, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
