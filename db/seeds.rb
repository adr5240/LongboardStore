User.destroy_all

guest = User.create(username: "Guest", password: "password")
u1 = User.create(username: "Billy", password: "password")
u2 = User.create(username: "Sally", password: "password")
u3 = User.create(username: "abc123", password: "password")

# ---------------------------------------------------------------------------------------------------------
# DECKS
# ---------------------------------------------------------------------------------------------------------

Deck.destroy_all

d1 = Deck.create(name: 'Bustin Maestro Pro Totemu Longboard Deck - 2017', brand: 'Bustin',
                 description: 'The Maestro Pro was designed to be one of the best commuters you can get your hands on. Designed by the masterminds at Bustin, and tested in New York, this board was built to ride even the busiest of terrain. The Bustin Maestro Pro features a drop through construction, lowering your ride height for an easy push through the city. Quickly accelerate through any terrain, and quickly footbreak to a stop in case of any obstructions in your way. The Bustin Maestro Pro is topped off with functional kicktails, giving you a ride that is both fun and functional. No matter what you’re looking to skate, the Maestro Pro is ready to handle it all with ease. Whether you’re late to class, or ready to go home, the Bustin Maestro Pro is here to perform.',
                 concave: 'Mild', flex: 'Medium', mount: 'Drop Through', traction: 'Grip Tape',
                 shape: 'Cutout', price: 12495, length: 39.75, width: 9.50, wheelbase: 27,
                 image: File.open('app/assets/images/deck/d1.jpg'))

d2 = Deck.create(name: 'Sector 9 Mini Fractal Longboard Deck - 2017', brand: "Sector 9",
                 description: 'So what do you get when you have a board that’s fun, functional, and then shrink it down two inches? The Sector 9 Mini Fractal! This board was built to be a part of the Sidewinder Series, making this board a very lively and responsive ride. The Sector 9 Mini Fractal is a drop through cruiser, giving you a very low ride height for easy pushing through the city streets. The short wheelbase gives you a nimble ride that easily whips and weaves through any and all obstacles in your path. So no matter where you need to go, this board can easily maneuver around town. No matter the distance, the Sector 9 Mini Fractal is here and ready to tackle any course in your path.',
                 concave: 'Mild', flex: 'Medium', mount: 'Drop Through', traction: 'Grip Tape',
                 shape: 'Speedboard', price: 9195, length: 34, width: 8.75, wheelbase: 24.4,
                 image: File.open('app/assets/images/deck/d2.jpg'))

d3 = Deck.create(name: 'Loaded Icarus Longboard Deck', brand: 'Loaded',
                 description: "Ya know, when Loaded releases an all new board, it\'s hard to not get so giddy and smiley to the point that our cheeks hurt. But hey, if it means an all new creation of mystical shredding, what\'s a little sore cheek from time to time. Thus, the Loaded Icarus is born. A flexy, fun, and lively ride. The board comes in at 38.4 inches long, 8.6 inches wide, with a wheelbase of 28.25 inches long. You\'ll notice right away it\'s a little narrower than your standard 10 inch deck. This cuts down on the weight of the board, making it extremely easy to push around town. With a fully symmetrical shape, the Loaded Icarus performs outstandingly well as both a freestyle and freeride setup. The board features an all new construction, that we dare say could only be straight out of Greek mythology. Combining their \"bamboo biscuit\" technology into their already amazing bamboo, fiberglass, and cork construction, you get a board with some shapely curves that you can bring home to your momma. This creates ample wheel flares, that are unobtrusive to your stance. That means the Loaded Icarus locks you in for pumping, and carving hard through the city streets, while keeping a comfortable standing platform. The board comes in 2 different flexes. The flex 1 is the stiffer of the two, for riders ranging from 170-200+. This board will be better for aggressive turning, and more controlled while sliding. That makes the flex 2 the flexier of the 2. This board is much more lively and playful than its stiff counterpart, making pumping a breeze. The weight range for this board is 75-200+ pounds. Keep in mind, these are only suggested weight ranges, so you don't have to worry about that holiday weight. The board is topped off with functional nose and tail, giving you the shred everything setup, in a lowered drop through ride that makes it a fun every day setup.",
                 concave: 'Mild', flex: 'Flexy', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 21500, length: 38.4, width: 8.6, wheelbase: 28.25,
                 image: File.open('app/assets/images/deck/d3.jpg'))

d4 = Deck.create(name: 'Landyachtz Switchblade 36 Mountain Longboard Deck', brand: 'Landyachtz',
                 description: "The Landyachtz Switchblade 36 Mountain has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 36 Mountain Green is the shortest of the three. This means you get a ride that is extremely nimble and maneuverable, without compromising stability. So regardless of the road you’re about to hit, the Landyachtz Switchblade 36 Mountain Green is ready to accomplish the task at hand.",
                 concave: 'Medium', flex: 'Stiff', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 13895, length: 36, width: 9.5, wheelbase: 27,
                 image: File.open('app/assets/images/deck/d4.jpg'))

d5 = Deck.create(name: 'Landyachtz Switchblade 40 Mountain Longboard Deck', brand: 'Landyachtz',
                 description: "The Landyachtz Switchblade 40 Mountai has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 40 is the longest of the three. This equates to the most stable ride, ready for your next downhill race.",
                 concave: 'Medium', flex: 'Stiff', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 13895, length: 40, width: 10, wheelbase: 31,
                 image: File.open('app/assets/images/deck/d5.jpg'))

d6 = Deck.create(name: 'Restless Splinter 38 Owl Longboard Deck - 2017', brand: 'Restless',
                 description: "The Restless Splinter 38 Owl takes everything you’ve loved in the Splinter 40, and puts it in a more nimble package. The board is shortened 2 inches for a tighter turning radius. So when it comes to city riding, the Restless Splinter 38 Owl will be able to hit all of the sharp turns and easily slalom through the city streets. The board has a drop through design, so no matter how far you’re looking to push, the Restless Splinter 38 Owl eases the strain on your legs so you can push harder and farther than ever. Completed with twin kicks, this adds extra flare and style to your ride. So whether it be freeride, freestyle, or just cruising, the Restless Splinter 38 Owl will be ready to handle it all.",
                 concave: 'Mild', flex: 'Medium', mount: "Drop Through",
                 traction: "Grip Tape", shape: 'Cutout', price: 13595, length: 38, width: 9.75, wheelbase: 27,
                 image: File.open('app/assets/images/deck/d6.jpg'))

d7 = Deck.create(name: 'Never Summer Super Freak Longboard Deck - 2017', brand: 'Never Summer',
                 description: "More info to come!",
                 concave: 'Medium', flex: 'Stiff', mount: 'Top',
                 traction: 'Grip Tape', shape: 'Twin', price: 16295, length: 36.25, width: 9.625, wheelbase: 22.5,
                 image: File.open('app/assets/images/deck/d7.jpg'))

d8 = Deck.create(name: 'Bustin Mission 36" Hana Longboard Deck - 2017', brand: 'Bustin',
                 description: "The Mission 36\" is the little brother of the full sized Mission 40\", but it represents a class of its own. Having a drop through design, the Mission 36\" gives you a very low ride height for easy pushing and riding in the city. Its twin shape gives you a symmetrical ride no matter which way you’re shredding, and the bamboo maple construction gives you a snappy flex and tons of durability. Having a very rigid and responsive ride lets you shred with confidence while keeping a comfortable platform. Overall the Mission 36\" is perfect for the city rider or the more aggressive dancer.",
                 concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                 traction: 'Die Cut Grip', shape: 'Cutout', price: 9495, length: 36, width: 8.5, wheelbase: 26,
                 image: File.open('app/assets/images/deck/d8.jpg'))

# d1 = Deck.create(name: , brand: , description: , concave: , flex: , mount: ,
#                  traction: , shape: , price: , length: , width: , wheelbase: )


# ---------------------------------------------------------------------------------------------------------
# TRUCKS
# ---------------------------------------------------------------------------------------------------------

Truck.destroy_all

t1 = Truck.create(name: 'Arsenal 180mm 50 Degree Trucks', brand: 'Arsenal', hole_pattern: 'Old School',
                  description: "Arsenal 180mm 50 Degree Raw Longboard Trucks are the newest all-round cast trucks in the scene, raw and ready to take you anywhere. They have the best feedback. Designed to be as close to precision as the gravity casting process can provide.
Arsenal Cast Trucks are designed to be as close to precision as the gravity casting process can provide. With extremely low tolerances and superior engineering, Cast Arsenals are the strongest and most comfortable cast truck on the market period. They feature tall bushings, a bushing seat that complements the aggressive geometry and allows for ample lean and stability. After hundreds of hours of testing the strength, durability, and overall feel: we believe that Cast Arsenals just may be the best cast truck you will ever ride.",
                  width: 250, angle: 50, price: 6400,
                  image: File.open('app/assets/images/trucks/t1.jpg'))

t2 = Truck.create(name: 'Bear Polar Bear 105mm Trucks', brand: 'Bear', hole_pattern: "New School",
                  description: "The Bear Polar Bear 105mm Black trucks are designed for park, pool, street, freestyle, cruising, and freeriding. The cast hanger measures 105mm long with 173mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
                  width: 173, angle: 40, price: 3900,
                  image: File.open('app/assets/images/trucks/t2.jpg'))

t3 = Truck.create(name: 'Bear Polar Bear 155mm Raw Trucks', brand: 'Bear', hole_pattern: 'New School',
                  description: "The Bear Polar Bear 155mm Raw trucks are designed for park, pool, street, freestyle, freeride, and cruising. The cast hanger measures 154mm long with 222mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
                  width: 222, angle: 45, price: 4700,
                  image: File.open('app/assets/images/trucks/t3.jpg'))

t4 = Truck.create(name: 'Caliber II 44 Degree Trucks', brand: "Caliber", hole_pattern: 'New School',
                  description: 'The Caliber II 44 Degree Black Out trucks are designed for downhill, freeriding, freestyle, carving, and cruising. Cast with aluminum, the hanger measures 7.25" long with a 10" axle length. The 44 degree baseplate has a broad turing radius and is stable at high speeds. The double barrel bushings provide additional stability.
The inner-step bushing seat has a large contact area for high rebound from the bushing.
The outer-step bushing seat is a perfect circle to provide a snug fit with oversized aftermarket bushings.
The decreased chamfer in the pivot cup seat increases contact with the baseplate. This creates a tight fit for the pivot pin.
The circular pivot hole matches the specs in Caliber precision trucks. This offers a consistent lean and avoides kingpin bite on the hanger.
The trucks are heat treated in-house for a 40% increase in strength. The pressed in kingpin provides maximum response and control through corners. It can be hammered out and replaced for personalized kingpin lengths. The reinforced baseplate provides additional protection during high speed impacts. Unlike powder coats, these trucks have thinner paints to insure tightened tolerances.',
                  width: 254, angle: 44, price: 5400,
                  image: File.open('app/assets/images/trucks/t4.jpg'))

# t1 = Truck.create(name: , brand: , hole_pattern: , description: , width: , angle: , price: )


# ---------------------------------------------------------------------------------------------------------
# WHEELS
# ---------------------------------------------------------------------------------------------------------

Wheel.destroy_all

w1 = Wheel.create(name: 'Arbor Sucrose Bogart 61mm 78a Wheels', brand: 'Arbor',
                  description: "The Arbor 61mm 78a Bogart Blue wheels are designed for freeriding, carving, and cruising. The firm durometer maintains speed over smooth surfaces. The rounded lips and stoneground surface produce natural slides.",
                  lip_profile: 'Rounded', hub_placement: 'Slight Offset', price: 3600, diameter: 61, durometer: 78, width: 45,
                  image: File.open('app/assets/images/wheels/w1.jpg'))

w2 = Wheel.create(name: 'Arbor Sucrose Vice 69mm 80a Wheels', brand: 'Arbor',
                  description: "The Arbor Vice 69mm 80a Blue wheels are designed for freeriding. With rounded lips and stoneground surface for sliding, the firm durometer maintains a quick roll speed.",
                  lip_profile: 'Rounded', hub_placement: 'Offset', price: 4600, diameter: 69, durometer: 80, width: 45,
                  image: File.open('app/assets/images/wheels/w2.jpg'))

w3 = Wheel.create(name: 'Santa Cruz Slime Balls 66mm 78a Wheels', brand: 'Santa Cruz',
                  description: "The Santa Cruz Slime Balls 66mm 78a Wheels are designed for cruising. With rounded lips for grip, the soft durometer reduces shock over rough terrain.",
                  lip_profile: 'Rounded', hub_placement: 'Centerset', price: 3700, diameter: 66, durometer: 78, width: 47,
                  image: File.open('app/assets/images/wheels/w3.jpg'))

w4 = Wheel.create(name: 'Blank 70mm 78a Wheels', brand: 'Blank', description: "Description coming soon!",
                  lip_profile: 'Squared', hub_placement: 'Offset', price: 4000, diameter: 70, durometer: 78, width: 55,
                  image: File.open('app/assets/images/wheels/w4.jpg'))

w5 = Wheel.create(name: 'Kryptonics Star Trac 65mm 82a Pink Wheels', brand: 'Kryptonics',
                  description: "The Star Trac 65mm 82a wheels are designed for park, pool, cruising and carving. With sideset hubs for sliding, the firm durometer maintains speed over smooth surfaces.",
                  lip_profile: 'Squared', hub_placement: 'Sideset', price: 3200, diameter: 65, durometer: 82, width: 44,
                  image: File.open('app/assets/images/wheels/w5.jpg'))

w6 = Wheel.create(name: 'Kryptonics Star Trac 65mm 86a Green Wheels', brand: 'Kryptonics',
                  description: "The Kryptonics Star Trac 65mm 86a Green wheels are designed for park, pool, carving and cruising. With a sideset hub for sliding, the hard durometer maintains a quick roll speed over smooth terrain.",
                  lip_profile: 'Squared', hub_placement: 'Sideset', price: 3200, diameter: 65, durometer: 86, width: 44,
                  image: File.open('app/assets/images/wheels/w6.jpg'))

w7 = Wheel.create(name: 'Kryptonics Star Trac 75mm 86a Green Wheels', brand: 'Kryptonics',
                  description: "The Kryptonics Star Trac 75mm 86a Green wheels are designed for downhill, carving, cruising. With a firm durometer for speed over smooth terrain, the squared lips provide grip.",
                  lip_profile: 'Squared', hub_placement: 'Offset', price: 4000, diameter: 75, durometer: 78, width: 50,
                  image: File.open('app/assets/images/wheels/w7.jpg'))

# w1 = Wheel.create(name: '', brand: '', description: "", lip_profile: '', hub_placement: '', price: , diameter: , durometer: , width: )
