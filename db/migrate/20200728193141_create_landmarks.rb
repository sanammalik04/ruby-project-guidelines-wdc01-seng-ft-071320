class CreateLandmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :location_id
      t.string :address
      t.string :best_season_to_visit
      t.text :description
    end
  end
end
