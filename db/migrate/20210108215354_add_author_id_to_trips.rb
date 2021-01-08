class AddAuthorIdToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :author_id, :integer
    add_index :trips, :author_id
  end
end
