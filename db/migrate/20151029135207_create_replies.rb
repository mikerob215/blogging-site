class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :body
      t.integer :user_id
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end