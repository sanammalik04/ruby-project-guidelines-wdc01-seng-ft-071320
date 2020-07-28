class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :traveller_id
      t.integer :location_id
      t.date :date
      t.integer :rate_location
      t.integer :rate_restaurant_id
      t.integer :rate_landmark_id
  end
end
end
