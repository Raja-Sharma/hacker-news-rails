class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :value, null: false
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
