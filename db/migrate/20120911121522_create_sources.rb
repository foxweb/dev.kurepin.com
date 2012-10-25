class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :md5
      t.string :author
      t.string :email
      t.string :www
      t.integer :section_id
      t.integer :category_id
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
