class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :product
      t.string :references
      t.string :cart
      t.string :belongs_to

      t.timestamps null: false
    end
  end
end
