class RenamePhotoToPhotosToBeasts < ActiveRecord::Migration[6.1]
  def change
    rename_column :beasts, :photo, :photos
  end
end
