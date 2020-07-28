class CreateRateLandmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :rate_landmarks do |t|
      t.integer :landmark_id
      t.integer :trip_id
      t.integer :rating
    end
  end
end
