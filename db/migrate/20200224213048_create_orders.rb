class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :details
      t.string :imgs
      t.string :quote
      t.boolean :complete
      t.boolean :starred
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
