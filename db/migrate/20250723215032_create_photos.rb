class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos do |t|
      t.string :camera
      t.string :digitized_date
      t.string :shot_date
      t.string :location
      t.string :in_digest

      t.timestamps
    end
  end
end
