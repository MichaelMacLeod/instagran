class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :foreign_key
  end
end
