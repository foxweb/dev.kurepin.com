class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.string :author
      t.string :email
      t.text :description
      t.string :keywords
      t.integer :rating

      t.timestamps
    end
  end
end
