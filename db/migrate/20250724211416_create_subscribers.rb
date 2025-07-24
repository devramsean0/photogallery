class CreateSubscribers < ActiveRecord::Migration[8.0]
  def change
    create_table :subscribers do |t|
      t.string :email_address
      t.boolean :confirmed

      t.timestamps
    end

    change_column :photos, :in_digest, :boolean, default: false
  end
end
