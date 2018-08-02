class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :user
      t.references :room
      t.boolean :seen

      t.timestamps
    end
  end
end
