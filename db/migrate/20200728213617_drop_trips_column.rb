class DropTripsColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :rate_restaurant_id
    remove_column :trips, :rate_landmark_id
  end
end
