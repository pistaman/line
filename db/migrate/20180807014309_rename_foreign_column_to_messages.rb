class RenameForeignColumnToMessages < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :users_id, :user_id
    rename_column :messages, :rooms_id, :room_id
  end
end
