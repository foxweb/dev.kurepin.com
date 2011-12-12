class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.boolean :lang
      t.text :description
      t.integer :num

      t.timestamps
    end
  end
end
