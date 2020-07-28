class CreateRateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :rate_restaurants do |t|
      t.integer :restaurant_id
      t.integer :trip_id
      t.integer :rating
    end
  end
end
