class AddAuthCodeToSubscribers < ActiveRecord::Migration[8.0]
  def change
    add_column :subscribers, :auth_code, :string
    add_index :subscribers, :auth_code
  end
end
