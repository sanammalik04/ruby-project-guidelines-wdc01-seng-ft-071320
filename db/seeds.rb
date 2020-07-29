require 'pry'

Traveller.destroy_all
Location.destroy_all
Restaurant.destroy_all
Landmark.destroy_all
RateLandmark.destroy_all
RateRestaurant.destroy_all


sanam04 = Traveller.create(username: "Sanam04")
cla = Traveller.create(username: "Claudietta")
alex = Traveller.create(username: "Alex_Smith")
lau = Traveller.create(username: "Laurin_Laure")
daphne_bi = Traveller.create(username: "Daphne_Bi")
robin = Traveller.create(username: "Robin23")
lulu = Traveller.create(username: "LuLu")

paris = Location.create(city: "Paris", country: "France", info: "American travellers temporarily restricted due to Covid. No vaccines needed to enter. Paris has twenty arrondissements. River: Seine")
london = Location.create(city: "London", country: "United Kingdom", info: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations.")
milan = Location.create(city: "Milan", country: "Italy", info: "Milan, a metropolis in Italy's northern Lombardy region, is a global capital of fashion and design. Home to the national stock exchange, it’s a financial hub also known for its high-end restaurants and shops. Population: 1.4 million.")
washington = Location.create(city: "Washington, DC", country: "United States", info: "Washington, DC, the U.S. capital, is a compact city on the Potomac River, bordering the states of Maryland and Virginia. It’s defined by imposing neoclassical monuments and buildings – including the iconic ones that house the federal government’s 3 branches: the Capitol, White House and Supreme Court.")
tampa = Location.create(city: "Tampa, FL", country: "United States", info: "Tampa is a city on Tampa Bay, along Florida’s Gulf Coast. A major business center, it’s also known for its museums and other cultural offerings. Busch Gardens is an African-themed amusement park with thrill rides and animal-viewing areas. The historic Ybor City neighborhood, developed by Cuban and Spanish cigar-factory workers at the turn of the 20th century, is a dining and nightlife destination.")
nyc = Location.create(city: "New York, NY", country: "United States", info: "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.")
st_tropez = Location.create(city: "Saint-Tropez", country: "France", info: "Saint-Tropez is a coastal town on the French Riviera, in the Provence-Alpes-Côte d'Azur region of southeastern France. Long popular with artists, the town attracted the international jet set in the 1960s, and remains known for its beaches and nightlife.")
cannes = Location.create(city: "Cannes", country: "France", info: "Cannes, a resort town on the French Riviera, is famed for its international film festival. Its Boulevard de la Croisette, curving along the coast, is lined with sandy beaches, upmarket boutiques and palatial hotels. It’s also home to the Palais des Festivals et des Congrès, a modern building complete with red carpet and Allée des Étoiles – Cannes’ walk of fame.")
rome = Location.create(city: "Rome", country: "Italy", info: "A heady mix of haunting ruins, awe-inspiring art and vibrant street life, Italy’s hot-blooded capital is one of the world’s most romantic and charismatic cities.")
los_angeles = Location.create(city: "Los Angeles", country: "United States", info: "Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry. Near its iconic Hollywood sign, studios such as Paramount Pictures, Universal and Warner Brothers offer behind-the-scenes tours. On Hollywood Boulevard, TCL Chinese Theatre displays celebrities’ hand- and footprints, the Walk of Fame honors thousands of luminaries and vendors sell maps to stars’ homes.")

eiffel_tower = Landmark.create(name: "Tour Eiffel", location_id: paris.id, address:"Champ de Mars", best_season_to_visit: "all", description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Constructed from 1887 to 1889 as the entrance to the 1889 World's Fair, it was initially criticised by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognisable structures in the world.[3] The Eiffel Tower is the most-visited paid monument in the world; 6.91 million people ascended it in 2015. The tower is 324 metres (1,063 ft) tall, about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side.")
louvre = Landmark.create(name: "Louvre Museum", location_id: paris.id, address: "Rue de Rivoli", best_season_to_visit: "summer", description: "The Louvre Museum is the world's largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square meters (782,910 square feet).[4] In 2019, the Louvre received 9.6 million visitors, making it the most visited museum in the world.")
notre_dame = Landmark.create(name: "Cathédrale Notre-Dame de Paris", location_id: paris.id, address: "6 Parvis Notre-Dame - Pl. Jean-Paul II", best_season_to_visit: "spring", description: "Notre-Dame de Paris, referred to simply as Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture.")
buckingham = Landmark.create(name: "Buckingham Palace", location_id: london.id, address: "Westminster", best_season_to_visit: "fall", description: "Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.")
duomo = Landmark.create(name: "Duomo di Milano", location_id: milan.id, address: "Piazza del Duomo", best_season_to_visit: "spring", description: "Milan Cathedral is the cathedral church of Milan, Lombardy, Italy. Dedicated to the Nativity of St Mary, it is the seat of the Archbishop of Milan, currently Archbishop Mario Delpini. The cathedral took nearly six centuries to complete: construction began in 1386, and the final details were completed in 1965.")
castle = Landmark.create(name: "Sforzesco Castle", location_id: milan.id, address: "Piazza Castello", best_season_to_visit: "summer", description: "Sforza Castle is in Milan, northern Italy. It was built in the 15th century by Francesco Sforza, Duke of Milan, on the remnants of a 14th-century fortification. Later renovated and enlarged, in the 16th and 17th centuries it was one of the largest citadels in Europe.")
white_house = Landmark.create(name: "The White House", location_id: washington.id, address: "1600 Pennsylvania Avenue NW", best_season_to_visit: "fall", description: "The White House is the official residence and workplace of the president of the United States. It is located at 1600 Pennsylvania Avenue NW in Washington, D.C., and has been the residence of every U.S. president since John Adams in 1800. The term White House is often used as a metonym for the president and his advisers.")
capitol = Landmark.create(name: "United States Capitol", location_id: washington.id, address: "First St SE", best_season_to_visit: "spring", description: "The United States Capitol, often called the Capitol Building, is the home of the United States Congress and the seat of the legislative branch of the U.S. federal government. It is located on Capitol Hill at the eastern end of the National Mall in Washington, D.C..")
aquarium = Landmark.create(name: "The Florida Aquarium", location_id: tampa.id, address: "701 Channelside Dr", best_season_to_visit: "winter", description: "The Florida Aquarium is a 501 not-for-profit organization, publicly operated institution located in Tampa, Florida, United States. It is a large scale, 250,000-square-foot aquarium and is accredited by the Association of Zoos and Aquariums.")
central_park = Landmark.create(name: "Central Park", location_id: nyc.id, address: "Manhattan", best_season_to_visit: "spring", description: "Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan. It is the fifth-largest park in the city by area, covering 843 acres.")
colosseum = Landmark.create(name: "Colosseum", location_id: rome.id, address: "Via I Maggio, 8", best_season_to_visit: "spring", description: "The Colosseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of travertine limestone, tuff, and brick-faced concrete, it was the largest amphitheatre ever built at the time and held 50,000 to 80,000 spectators.")
hollywood = Landmark.create(name: "Hollywood Sign", location_id: los_angeles.id, address: "Los Angeles Hollywood Hill", best_season_to_visit: "summer", description: "The Hollywood Sign is an American landmark and cultural icon overlooking Hollywood, Los Angeles, California. It is situated on Mount Lee, in the Hollywood Hills area of the Santa Monica Mountains.")

bistro = Restaurant.create(name: "Paris Bistro", address: "Rue la Fayette", cuisine: "French", location_id: paris.id)
sushi_p = Restaurant.create(name: "Sushi Lover", address: "Place de la Republique", cuisine: "Japanese", location_id: paris.id)
ratatouille = Restaurant.create(name: "Ratatouille", address: "Rue Disney", cuisine: "French", location_id: paris.id)
le_diplomate = Restaurant.create(name: "Le Diplomate", address: "14th Street", cuisine: "French", location_id: washington.id)

sp = Trip.create(traveller_id: sanam04.id, location_id: paris.id, date: 2016, rate_location: 9)
cw = Trip.create(traveller_id: cla.id, location_id: washington.id, date: 2015, rate_location: 8)
lup = Trip.create(traveller_id: lulu.id, location_id: paris.id, date: 2018, rate_location: 10)
lap = Trip.create(traveller_id: lau.id, location_id: paris.id, date: 2020, rate_location: 6)
law = Trip.create(traveller_id:lau.id, location_id: washington.id, date: 2017, rate_location: 7)
cn = Trip.create(traveller_id: cla.id, location_id: nyc.id, date: 2018, rate_location: 8)
sp = Trip.create(traveller_id: sanam04.id, location_id: tampa.id, date: 2020, rate_location: 9)
rt = Trip.create(traveller_id: robin.id, location_id: tampa.id, date: 2017, rate_location: 7)

sanam_louvre = RateLandmark.create(landmark_id: louvre.id, trip_id: sp.id, rating: 6)
sanam_eiffel = RateLandmark.create(landmark_id: eiffel_tower.id, trip_id: sp.id, rating: 9)
cla_white = RateLandmark.create(landmark_id: white_house.id, trip_id: cw.id, rating: 7)
lau_white = RateLandmark.create(landmark_id: white_house.id, trip_id: law.id, rating: 10)
lu_eiffel = RateLandmark.create(landmark_id: eiffel_tower.id, trip_id: lup.id, rating: 8)

sanam_bistro = RateRestaurant.create(restaurant_id: bistro.id, trip_id: sp.id, rating: 7)
lu_bistro = RateRestaurant.create(restaurant_id: bistro.id, trip_id: lup.id, rating: 4)
cla_ledipl = RateRestaurant.create(restaurant_id: le_diplomate.id, trip_id: cw.id, rating: 9)
la_ledipl = RateRestaurant.create(restaurant_id: le_diplomate.id, trip_id:law.id, rating: 8)




