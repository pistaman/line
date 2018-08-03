class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :users, foreign_key: true
      t.references :rooms, foreign_key: true
      t.boolean :seen

      t.timestamps
    end
  end
end
