class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :username, null: false
      t.integer :comment_count, null: false

      t.timestamps
    end
  end
end
