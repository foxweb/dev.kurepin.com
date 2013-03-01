class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :type
      t.references :section
      t.string :author
      t.string :email
      t.string :www
      t.string :source
      t.string :title
      t.text :body
      t.text :info
      t.string :keywords
      t.integer :rating
      t.boolean :public

      t.timestamps
    end
  end
end
