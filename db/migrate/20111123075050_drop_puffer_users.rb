class DropPufferUsers < ActiveRecord::Migration
  def up
    drop_table :puffer_users
  end

  def down
  end
end
