class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :post_id

      t.timestamps null: false
    end
  end
end