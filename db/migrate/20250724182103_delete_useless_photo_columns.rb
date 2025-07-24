class DeleteUselessPhotoColumns < ActiveRecord::Migration[8.0]
  def change
    remove_column :photos, :camera
    remove_column :photos, :digitized_date
    remove_column :photos, :shot_date
    remove_column :photos, :location
  end
end
