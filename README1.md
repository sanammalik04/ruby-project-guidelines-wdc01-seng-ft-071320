# traveller_tips
Traveller Tips is a user-driven app for travel enthusiasts, who want to share their experiences with other travellers, or retrieve info before booking a trip.


Traveller (username)
* has many trips
* has many locations through trips

Trip (traveller, location, date, rate_location)
* belongs to a traveller
* belongs to a location
* has many restaurants through location
* has many landmarks through location

Restaurant (location, name, address, cuisine)
* belongs to a location
* has many trips through rate_restaurant

Landmark (location, name, address, description, best_season_to_visit)
* belongs to a location
* has many trips through rate_landmark

Location (city, country, info)
* has many trips
* has many travellers, through trip
* has many restaurants
* has many landmarks

Rate_Restaurant (restaurant, rating, trip)
* belongs to a restaurant
* belongs to a trip

Rate_Landmark (landmark, rating, trip)
* belongs to a trip
* belongs to a landmark
