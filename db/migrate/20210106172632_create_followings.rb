class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.integer :author_id
      t.integer :follower_id

      t.timestamps
    end
    add_index :followings, :author_id
    add_index :followings, :follower_id
  end
end
