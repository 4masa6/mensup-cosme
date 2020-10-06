class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :item_name, null: false
      t.text :content, null: false
      t.float :rate,null: false
      t.timestamps
    end
  end
end
