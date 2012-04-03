class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :email
      t.text :body
      t.references :post
      t.integer :rating

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
