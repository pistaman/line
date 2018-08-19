class Messages < ActiveRecord::Migration[5.2]
  def change
    change_column_null :messages, :seen,false,0
    change_column_null :messages, :content,false,nil
    change_column_null :messages, :user_id,false,nil
    change_column_null :messages, :room_id,false,nil
  end
end
