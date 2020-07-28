class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :traveller_id
      t.integer :location_id
      t.date :date
      t.integer :rate_location
  end
end
end
