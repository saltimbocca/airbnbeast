class AddStatusToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :status, :string
  end
end
