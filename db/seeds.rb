User.destroy_all

guest = User.create(username: "Guest", password: "password")
u1 = User.create(username: "Billy", password: "password")
u2 = User.create(username: "Sally", password: "password")
u3 = User.create(username: "abc123", password: "password")

OrderStatus.destroy_all

OrderStatus.create(id: 1, name: "In Progress")
OrderStatus.create(id: 2, name: "Placed")
OrderStatus.create(id: 3, name: "Shipped")
OrderStatus.create(id: 4, name: "Cancelled")


# ---------------------------------------------------------------------------------------------------------
# DECKS
# ---------------------------------------------------------------------------------------------------------

Deck.destroy_all

d1 = Deck.create(name: 'Bustin Maestro Pro Totemu Longboard Deck', brand: 'Bustin',
                 description: 'The Maestro Pro was designed to be one of the best commuters you can get your hands on. Designed by the masterminds at Bustin, and tested in New York, this board was built to ride even the busiest of terrain. The Bustin Maestro Pro features a drop through construction, lowering your ride height for an easy push through the city. Quickly accelerate through any terrain, and quickly footbreak to a stop in case of any obstructions in your way. The Bustin Maestro Pro is topped off with functional kicktails, giving you a ride that is both fun and functional. No matter what you’re looking to skate, the Maestro Pro is ready to handle it all with ease. Whether you’re late to class, or ready to go home, the Bustin Maestro Pro is here to perform.',
                 concave: 'Mild', flex: 'Medium', mount: 'Drop Through', traction: 'Grip Tape',
                 shape: 'Cutout', price: 12495, length: 39.75, width: 9.50, wheelbase: 27)

d2 = Deck.create(name: 'Sector 9 Mini Fractal Longboard Deck', brand: "Sector 9",
                 description: 'So what do you get when you have a board that’s fun, functional, and then shrink it down two inches? The Sector 9 Mini Fractal! This board was built to be a part of the Sidewinder Series, making this board a very lively and responsive ride. The Sector 9 Mini Fractal is a drop through cruiser, giving you a very low ride height for easy pushing through the city streets. The short wheelbase gives you a nimble ride that easily whips and weaves through any and all obstacles in your path. So no matter where you need to go, this board can easily maneuver around town. No matter the distance, the Sector 9 Mini Fractal is here and ready to tackle any course in your path.',
                 concave: 'Mild', flex: 'Medium', mount: 'Drop Through', traction: 'Grip Tape',
                 shape: 'Speedboard', price: 9195, length: 34, width: 8.75, wheelbase: 24.4)

d3 = Deck.create(name: 'Loaded Icarus Longboard Deck', brand: 'Loaded',
                 description: "Ya know, when Loaded releases an all new board, it\'s hard to not get so giddy and smiley to the point that our cheeks hurt. But hey, if it means an all new creation of mystical shredding, what\'s a little sore cheek from time to time. Thus, the Loaded Icarus is born. A flexy, fun, and lively ride. The board comes in at 38.4 inches long, 8.6 inches wide, with a wheelbase of 28.25 inches long. You\'ll notice right away it\'s a little narrower than your standard 10 inch deck. This cuts down on the weight of the board, making it extremely easy to push around town. With a fully symmetrical shape, the Loaded Icarus performs outstandingly well as both a freestyle and freeride setup. The board features an all new construction, that we dare say could only be straight out of Greek mythology. Combining their \"bamboo biscuit\" technology into their already amazing bamboo, fiberglass, and cork construction, you get a board with some shapely curves that you can bring home to your momma. This creates ample wheel flares, that are unobtrusive to your stance. That means the Loaded Icarus locks you in for pumping, and carving hard through the city streets, while keeping a comfortable standing platform. The board comes in 2 different flexes. The flex 1 is the stiffer of the two, for riders ranging from 170-200+. This board will be better for aggressive turning, and more controlled while sliding. That makes the flex 2 the flexier of the 2. This board is much more lively and playful than its stiff counterpart, making pumping a breeze. The weight range for this board is 75-200+ pounds. Keep in mind, these are only suggested weight ranges, so you don't have to worry about that holiday weight. The board is topped off with functional nose and tail, giving you the shred everything setup, in a lowered drop through ride that makes it a fun every day setup.",
                 concave: 'Mild', flex: 'Flexy', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 21500, length: 38.4, width: 8.6, wheelbase: 28.25)

d4 = Deck.create(name: 'Landyachtz Switchblade 36 Mountain Longboard Deck', brand: 'Landyachtz',
                 description: "The Landyachtz Switchblade 36 Mountain has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 36 Mountain Green is the shortest of the three. This means you get a ride that is extremely nimble and maneuverable, without compromising stability. So regardless of the road you’re about to hit, the Landyachtz Switchblade 36 Mountain Green is ready to accomplish the task at hand.",
                 concave: 'Medium', flex: 'Stiff', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 13895, length: 36, width: 9.5, wheelbase: 27)

d5 = Deck.create(name: 'Landyachtz Switchblade 40 Mountain Longboard Deck', brand: 'Landyachtz',
                 description: "The Landyachtz Switchblade 40 Mountai has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 40 is the longest of the three. This equates to the most stable ride, ready for your next downhill race.",
                 concave: 'Medium', flex: 'Stiff', mount: 'Drop Through',
                 traction: 'Grip Tape', shape: 'Cutout', price: 13895, length: 40, width: 10, wheelbase: 31)

d6 = Deck.create(name: 'Restless Splinter 38 Owl Longboard Deck', brand: 'Restless',
                 description: "The Restless Splinter 38 Owl takes everything you’ve loved in the Splinter 40, and puts it in a more nimble package. The board is shortened 2 inches for a tighter turning radius. So when it comes to city riding, the Restless Splinter 38 Owl will be able to hit all of the sharp turns and easily slalom through the city streets. The board has a drop through design, so no matter how far you’re looking to push, the Restless Splinter 38 Owl eases the strain on your legs so you can push harder and farther than ever. Completed with twin kicks, this adds extra flare and style to your ride. So whether it be freeride, freestyle, or just cruising, the Restless Splinter 38 Owl will be ready to handle it all.",
                 concave: 'Mild', flex: 'Medium', mount: "Drop Through",
                 traction: "Grip Tape", shape: 'Cutout', price: 13595, length: 38, width: 9.75, wheelbase: 27)

d7 = Deck.create(name: 'Never Summer Super Freak Longboard Deck', brand: 'Never Summer',
                 description: "More info to come!",
                 concave: 'Medium', flex: 'Stiff', mount: 'Top',
                 traction: 'Grip Tape', shape: 'Twin', price: 16295, length: 36.25, width: 9.625, wheelbase: 22.5)

d8 = Deck.create(name: 'Bustin Mission 36" Hana Longboard Deck', brand: 'Bustin',
                 description: "The Mission 36\" is the little brother of the full sized Mission 40\", but it represents a class of its own. Having a drop through design, the Mission 36\" gives you a very low ride height for easy pushing and riding in the city. Its twin shape gives you a symmetrical ride no matter which way you’re shredding, and the bamboo maple construction gives you a snappy flex and tons of durability. Having a very rigid and responsive ride lets you shred with confidence while keeping a comfortable platform. Overall the Mission 36\" is perfect for the city rider or the more aggressive dancer.",
                 concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                 traction: 'Die Cut Grip', shape: 'Cutout', price: 9495, length: 36, width: 8.5, wheelbase: 26)

d9 = Deck.create(name: "Arbor Timeless 42\" Groundswell Longboard Deck", brand: "Arbor",
                 description: 'The Arbor Timeless 42" Groundswell was made to be one of the most fun pintails on the market. The board features a 42 inch length, for an extremely fun ride. The board has a top mount construction, giving you maximum leverage and control over your trucks. This equates to sharper carves, and harder turns, for easily weaving through campus. So whether it be to get to class, or to get out of class as quickly as possible, the Arbor Timeless 42" Groundswell was made to be the one board to get you there with ease.',
                 concave: 'Mild', flex: 'Medium', mount: 'Top', traction: 'Painted',
                 shape: 'Pintail', price: 10995, length: 42, width: 9, wheelbase: 29.15)

d10 = Deck.create(name: "Arbor Fish 37\" Groundswell Longboard Deck", brand: "Arbor",
                  description: 'The Arbor Fish 37" Groundswell is the perfect pintail cruiser, for completing your quiver. This board has a top mount construction for easy city riding. With full leverage over your trucks, you get more grip and more control than most boards on the market. The Arbor Fish 37" Groundswell features a timeless pintail shape, that is both easy to ride, and aesthetically pleasing. So whether it’s for your little nephew, boyfriend, girlfriend, or anyone in between, this board is sure to be a crowd pleaser in the world of longboarding.',
                  concave: 'Mild', flex: 'Medium', mount: "Top",
                  traction: "Painted", shape: "Pintail", price: 9995, length: 37, width: 8.5, wheelbase: 26)

d11 = Deck.create(name: "Arbor Axis 37\" Solstice Longboard Deck", brand: "Arbor",
                  description: 'Find your center, and reach nirvana on the all new Arbor Axis 37" Solstice. The board was made to be the go to cruiser board for rippin’ through the city. This board features a drop through platform for an extremely low ride height. That means no matter how far you’re looking to push, this board gets you there with ease. With a subtle flex, and fully symmetrical construction, this board is extremely comfortable to ride no matter how far the distance. Get your hands on the all new Arbor Axis 37" Solstice to find out why this is one of the best boards around.',
                  concave: 'Flat', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Painted', shape: 'Cutout', price: 19995, length: 37, width: 8.5, wheelbase: 37.4)

d12 = Deck.create(name: 'Arbor Shakedown 37" Crosscut Longboard Deck', brand: 'Arbor',
                  description: 'When it comes to ballin’ on a budget, there’s no better way to do it than with the Arbor Shakedown 37" Crosscut. This board was made to be a little skate everything setup. The board comes with a skate everything mentality, from longboarding to street skating, this board does it all. The Arbor Shakedown 37" Crosscut is a double kick setup, that can bomb your favorite hill, slash your favorite sidewalk, skate and explore the city, and is no stranger to your local skatepark. That means no matter what you’re going, the Arbor Shakedown 37" Crosscut is sure to be packed in the car on your next skate trip.',
                  concave: 'Mild', flex: 'Stiff', mount: 'Top',
                  traction: "Grip Tape", shape: 'Twin', price: 7995, length: 37, width: 9.25, wheelbase: 18.75)

d13 = Deck.create(name: 'Arbor Shakedown 34" Crosscut Longboard Deck', brand: 'Arbor',
                  description: 'Packing for your next skate trip, you’re sure to need a board that does it all. That’s where the Arbor Shakedown 34" Crosscut comes into play. The Arbor Shakedown 34" Crosscut is a double kick setup, that is extremely versatile for any style of skating. With a simple switch of the wheels, the board can go from ripping your local park, to slashing your steepest sidewalks. The board is sure to be a local favorite, that has everything you need all in one rippin’ ride. So whether it be cruising, carving, freeriding, slide jams, skate parks, or lurk sessions, be sure to grab the all new Arbor Shakedown 34" Crosscut.',
                  concave: 'Mild', flex: 'Stiff', mount: 'Top',
                  traction: "Grip Tape", shape: 'Twin', price: 6995, length: 34, width: 9, wheelbase: 15.75)

d14 = Deck.create(name: 'Arbor Photo Collection Walnut Drop Cruiser Longboard Deck - 38"', brand: 'Arbor',
                  description: 'Extra low for that dope roll. The Arbor Photo Collection Walnut Drop Cruiser was made to be one of the easiest boards on the market to push around town. The Arbor Photo Collection Walnut Drop Cruiser features a double drop construction that gives it an extremely low ride height. This equates to both an easy push, and unmatched stability by lowering your center of gravity. The natural pockets of this board from the drop platform locks you in for both downhilling and freeriding. Overall, a setup that does it all, the Arbor Photo Collection Walnut Drop Cruiser.',
                  concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Grip Tape', shape: "Cutout", price: 10995, length: 38, width: 9.75, wheelbase: 29.95)

d15 = Deck.create(name: 'Arbor Artist Collection Catalyst GT Longboard Deck - 40"', brand: "Arbor",
                  description: 'The Arbor Catalyst is a freeriding and freestyling beauty. This board features a drop through design for easy pushing and easy riding. The functional nose and tail gives you a freestyle influence for whatever you may be looking to sesh. Locked in enough for knocking out stand up slides as well, the Arbor Catalyst is a great all-around setup.',
                  concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Grip Tape', shape: 'Cutout', price: 10995, length: 40, width: 9, wheelbase: 26)

d16 = Deck.create(name: 'Arbor Artist Collection Axis GT Drop Cruiser Longboard Deck - 38"', brand: 'Arbor',
                  description: 'The Arbor Axis GT Drop Cruiser is a drop through and drop down cruiser deck, that anyone is sure to love. This board is drop through, giving you a lowered platform, for an easier push. Team that up with the drop platform, and you get an extra low ride. This also equates to a lower center of gravity, giving you a comforting stable feeling. The Axis GT Drop Cruiser is fully symmetrical, letting you ride any which way you please. Whether it be forward or backward, it’ll feel exactly the same on this setup. So whether it be cruising to class, or just cruising for fun, the Arbor Axis GT Drop Cruiser is sure to be a crowd pleaser that anyone will love.',
                  concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Grip Tape', shape: 'Cutout', price: 10995, length: 38, width: 8.8, wheelbase: 28.8)

d17 = Deck.create(name: 'Arbor Artist Collection Axis GT Longboard Deck - 40"', brand: 'Arbor',
                  description: 'The Arbor Axis is a drop through cruiser deck, that anyone is sure to love. This board is drop through, giving you a lowered platform, for an easier push. This also equates to a lower center of gravity, giving you a comforting stable feeling. The Axis is fully symmetrical, letting you ride any which way you please. Whether it be forward or backward, it’ll feel exactly the same on this setup. So whether it be cruising to class, or just cruising for fun, the Arbor Axis is sure to be a crowd pleaser that anyone will love.',
                  concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Grip Tape', shape: 'Cutout', price: 9995, length: 40, width: 9, wheelbase: 30.5)

d18 = Deck.create(name: 'Arbor Bamboo Timeless Longboard Deck - 42"', brand: 'Arbor',
                  description: 'The Arbor Timeless is, at this point, a timeless classic. A pintail shape is a family favorite, making it the perfect gift for anyone out there. This board is top mounted, giving you maximum leverage and control over your trucks. This makes turning a breeze, and carving through anything and everything in your path. This board is perfect for anyone looking for a beginner setup, to someone who wants a board that’ll stand up against the test of time.',
                  concave: 'Flat', flex: 'Medium', mount: 'Top',
                  traction: 'Painted', shape: 'Pintail', price: 9495, length: 42, width: 9.25, wheelbase: 30.25)

d19 = Deck.create(name: 'Arbor Photo Collection Walnut Timeless Longboard Deck - 42"', brand: 'Arbor',
                  description: 'The Arbor Timeless is, at this point, a timeless classic. A pintail shape is a family favorite, making it the perfect gift for anyone out there. This board is top mounted, giving you maximum leverage and control over your trucks. This makes turning a breeze, and carving through anything and everything in your path. This board is perfect for anyone looking for a beginner setup, to someone who wants a board that’ll stand up against the test of time.',
                  concave: 'Flat', flex: 'Medium', mount: 'Top',
                  traction: 'Painted', shape: 'Pintail', price: 9995, length: 42, width: 9.25, wheelbase: 30.25)

d20 = Deck.create(name: 'Arbor Drop Cruiser GT Longboard Deck', brand: 'Arbor',
                  description: 'The Arbor Drop Cruiser is a double drop setup, making it very low to the ground for an easy push. The drop down construction gives you pockets to lock your feet into. So when you’re getting slidey and wanting to drift, this board perfectly locks you in for all the fun. The drop through setup lowers your ride, giving you a lower center of gravity for extra stability. This also makes the board extremely easy to slide. So you’ll have the confidence to kick out those slides for getting steezy. Ready for the push race, city cruise, freeriding, or any session you want to throw at it. The Arbor Drop Cruiser is one of the most fun boards you can get your hands on.',
                  concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                  traction: 'Grip Tape', shape: 'Cutout', price: 18995, length: 38, width: 9.75, wheelbase: 29.25)

d21 = Deck.create(name: 'Arbor Bamboo Pocket Rocket Longboard Deck', brand: 'Arbor',
                  description: 'The Arbor Pocket Rocket is a perfect little cruiser setup, that easily stashes away in any school locker, making this board, the perfect cruiser setup. This board is a small single kick setup, equipping this board with everything you need to easily get around town. With a small design, this board is extremely lightweight, making it easy to kick around town. Overall, the Arbor Pocket Rocket is the perfect cruiser for the everyday rider.',
                  concave: 'Medium', flex: 'Stiff', mount: 'Top',
                  traction: 'Painted', shape: 'Mini Cruiser', price: 7995, length: 26, width: 7.75, wheelbase: 14)

d22 = Deck.create(name: 'Arbor Pocket Rocket GT Longboard Deck', brand: 'Arbor',
                  description: 'The Arbor Pocket Rocket is a perfect little cruiser setup, that easily stashes away in any school locker, making this board, the perfect cruiser setup. This board is a small single kick setup, equipping this board with everything you need to easily get around town. With a small design, this board is extremely lightweight, making it easy to kick around town. Overall, the Arbor Pocket Rocket is the perfect cruiser for the everyday rider.',
                  concave: 'Mild', flex: 'Stiff', mount: 'Top',
                  traction: 'Grip Tape', shape: 'Mini Cruiser', price: 6995, length: 26, width: 7.75, wheelbase: 14)

# d23 = Deck.create(name: , brand: ,
#                   description: ,
#                   concave: , flex: , mount: ,
#                   traction: , shape: , price: , length: , width: , wheelbase: )


# ---------------------------------------------------------------------------------------------------------
# TRUCKS
# ---------------------------------------------------------------------------------------------------------

Truck.destroy_all

t1 = Truck.create(name: 'Arsenal 180mm 50 Degree Trucks', brand: 'Arsenal', hole_pattern: 'Old School',
                  description: "Arsenal 180mm 50 Degree Longboard Trucks are the newest all-round cast trucks in the scene, raw and ready to take you anywhere. They have the best feedback. Designed to be as close to precision as the gravity casting process can provide.
                  Arsenal Cast Trucks are designed to be as close to precision as the gravity casting process can provide. With extremely low tolerances and superior engineering, Cast Arsenals are the strongest and most comfortable cast truck on the market period. They feature tall bushings, a bushing seat that complements the aggressive geometry and allows for ample lean and stability. After hundreds of hours of testing the strength, durability, and overall feel: we believe that Cast Arsenals just may be the best cast truck you will ever ride.",
                  width: 250, angle: 50, price: 6400)

t2 = Truck.create(name: 'Bear Polar Bear 105mm Trucks', brand: 'Bear', hole_pattern: "New School",
                  description: "The Bear Polar Bear 105mm trucks are designed for park, pool, street, freestyle, cruising, and freeriding. The cast hanger measures 105mm long with 173mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
                  width: 173, angle: 40, price: 3900)

t3 = Truck.create(name: 'Bear Polar Bear 155mm Raw Trucks', brand: 'Bear', hole_pattern: 'New School',
                  description: "The Bear Polar Bear 155mm Raw trucks are designed for park, pool, street, freestyle, freeride, and cruising. The cast hanger measures 154mm long with 222mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
                  width: 222, angle: 45, price: 4700)

t4 = Truck.create(name: 'Caliber II 44 Degree Trucks', brand: "Caliber", hole_pattern: 'New School',
                  description: 'The Caliber II 44 Degree trucks are designed for downhill, freeriding, freestyle, carving, and cruising. Cast with aluminum, the hanger measures 7.25" long with a 10" axle length. The 44 degree baseplate has a broad turing radius and is stable at high speeds. The double barrel bushings provide additional stability.
                  The inner-step bushing seat has a large contact area for high rebound from the bushing.
                  The outer-step bushing seat is a perfect circle to provide a snug fit with oversized aftermarket bushings.
                  The decreased chamfer in the pivot cup seat increases contact with the baseplate. This creates a tight fit for the pivot pin.
                  The circular pivot hole matches the specs in Caliber precision trucks. This offers a consistent lean and avoides kingpin bite on the hanger.
                  The trucks are heat treated in-house for a 40% increase in strength. The pressed in kingpin provides maximum response and control through corners. It can be hammered out and replaced for personalized kingpin lengths. The reinforced baseplate provides additional protection during high speed impacts. Unlike powder coats, these trucks have thinner paints to insure tightened tolerances.',
                  width: 254, angle: 44, price: 5400)

t5 = Truck.create(name: "Atlas 180mm 48 Degree Trucks", brand: 'Atlas', hole_pattern: 'Old School & New School',
                  description: 'The Atlas 180mm 48 Degree trucks are designed for freeride, freestyle, downhill, carving and cruising. Cast with A356 Aluminum for strength, the hanger measures 174mm long with a 211mm axle length. With a 48 degree baseplate for a quick turing radius, the double barrel bushings provide stability.
                                The kingpin is tapered at a 1:20 ratio to fit securely inside the precision tapered hole in the baseplate. As the kingpin is tightened, it self-centers to provide a zero tolerance fit. This is why the kingpin does not site flush.
                                Because of the ball pivots shape, there is less contact with the edge of the pivot cup. This allows an unrestricted range of motion. The shape also has a 50% increase in load-bearing surface for additional balance, control, and movement.
                                The Atlas pivot cup is built with Nylon6, a low friction and abrasion resistant material. It is self cleaning due to the three grooves that sweep dirt into a threaded air pocket below. The axle fits directly into this pocket for removal and maintenance without the need for extra tools. The 8mm by 10mm stepped axle is strong and stiff for a responsive ride. It also eliminates the need for an inner speed ring. The I-Beam hanger adds extra strength to prevent bending and weight balance. The flat washer does not restrict the bushings and increases turing ability.',
                  width: 211, angle: 48, price: 5800)

t6 = Truck.create(name: 'Caliber Standard 8" Trucks', brand: 'Caliber', hole_pattern: 'Old School & New School',
                  description: 'The Caliber Standard 8" trucks are designed for street, park, pool, freestyle, freeriding, and cruising. Cast with A356 T6 Virgin Aluminum, the hanger measures 5.375" long with a 8" axle length. The board side barrel bushing provides stability while the road side short cone bushing dives into turns.
                                The hanger has a reinforced surface for grinding and increased life span.
                                The Tombstone Design hanger provides strength to take abuse of everyday skating.
                                The Grade A Kingpin provides maximum clearance and smoother "lock-in" while grinding.
                                The fitted bushing seat design provides quick turning and response.',
                  width: 203, angle: 90, price: 4800)

t7 = Truck.create(name: 'Gullwing Charger 9" Trucks', brand: 'Gullwing', hole_pattern: 'Old School & New School',
                  description: 'The Gullwing Charger 9" trucks are designed for carving, cruising, freeriding, downhill and freestyle. Cast with aluminum, the hanger measures 6.29" long with a 9" axle length. With a 50 degree baseplate for a tight turing radius, the double cone bushings dive into carves.',
                  width: 228, angle: 50, price: 5200)

t8 = Truck.create(name: 'Gullwing Sidewinder II 9" Trucks', brand: 'Gullwing', hole_pattern: 'Old School & New School',
                  description: 'The Gullwing Sidewinder II 9" trucks are designed for carving. Cast with aluminum, the hanger measures 6.22" long with a 9" axle length. The double kingpins provide an extremely tight turing radius. With a board side barrel bushing for stability, the road side tall cone provides additional carving ability.
                                Due to their intense turing radius, please be aware that these trucks must be set up on an appropriately shaped deck, with proper clearance, in order to avoid wheel bite. Sidewinder\'s are unstable at high speeds and are not recommend for downhill skating.',
                  width: 228, angle: 50, price: 6600)

t9 = Truck.create(name: 'Gullwing Pro III 9" Trucks', brand: 'Gullwing', hole_pattern: 'Old School & New School',
                  description: 'The Gullwing Pro III 9" trucks are designed for park, pool, street, freestyle, and cruising. Cast with aluminum, the hanger measures 6.14" long with a 9" axle length. The board side barrel bushing provides stability and the road side tall cone dips into turns.',
                  width: 228, angle: 50, price: 6000)

# t1 = Truck.create(name: , brand: , hole_pattern: ,
#                   description: ,
#                   width: , angle: , price: )


# ---------------------------------------------------------------------------------------------------------
# WHEELS
# ---------------------------------------------------------------------------------------------------------

Wheel.destroy_all

w1 = Wheel.create(name: 'Arbor Sucrose Bogart 61mm 78a Wheels', brand: 'Arbor',
                  description: "The Arbor 61mm 78a Bogart wheels are designed for freeriding, carving, and cruising. The firm durometer maintains speed over smooth surfaces. The rounded lips and stoneground surface produce natural slides.",
                  lip_profile: 'Rounded', hub_placement: 'Slight Offset', price: 3600, diameter: 61, durometer: 78, width: 45)

w2 = Wheel.create(name: 'Arbor Sucrose Vice 69mm 80a Wheels', brand: 'Arbor',
                  description: "The Arbor Vice 69mm 80a wheels are designed for freeriding. With rounded lips and stoneground surface for sliding, the firm durometer maintains a quick roll speed.",
                  lip_profile: 'Rounded', hub_placement: 'Offset', price: 4600, diameter: 69, durometer: 80, width: 45)

w3 = Wheel.create(name: 'Santa Cruz Slime Balls 66mm 78a Wheels', brand: 'Santa Cruz',
                  description: "The Santa Cruz Slime Balls 66mm 78a Wheels are designed for cruising. With rounded lips for grip, the soft durometer reduces shock over rough terrain.",
                  lip_profile: 'Rounded', hub_placement: 'Centerset', price: 3700, diameter: 66, durometer: 78, width: 47)

w4 = Wheel.create(name: 'Blank 70mm 78a Wheels', brand: 'Blank', description: "Description coming soon!",
                  lip_profile: 'Squared', hub_placement: 'Offset', price: 4000, diameter: 70, durometer: 78, width: 55)

w5 = Wheel.create(name: 'Kryptonics Star Trac 65mm 82a Pink Wheels', brand: 'Kryptonics',
                  description: "The Star Trac 65mm 82a wheels are designed for park, pool, cruising and carving. With sideset hubs for sliding, the firm durometer maintains speed over smooth surfaces.",
                  lip_profile: 'Squared', hub_placement: 'Sideset', price: 3200, diameter: 65, durometer: 82, width: 44)

w6 = Wheel.create(name: 'Kryptonics Star Trac 65mm 86a Green Wheels', brand: 'Kryptonics',
                  description: "The Kryptonics Star Trac 65mm 86a Green wheels are designed for park, pool, carving and cruising. With a sideset hub for sliding, the hard durometer maintains a quick roll speed over smooth terrain.",
                  lip_profile: 'Squared', hub_placement: 'Sideset', price: 3200, diameter: 65, durometer: 86, width: 44)

w7 = Wheel.create(name: 'Kryptonics Star Trac 75mm 86a Green Wheels', brand: 'Kryptonics',
                  description: "The Kryptonics Star Trac 75mm 86a Green wheels are designed for downhill, carving, cruising. With a firm durometer for speed over smooth terrain, the squared lips provide grip.",
                  lip_profile: 'Squared', hub_placement: 'Offset', price: 4000, diameter: 75, durometer: 78, width: 50)

# w1 = Wheel.create(name: '', brand: '', description: "", lip_profile: '', hub_placement: '', price: , diameter: , durometer: , width: )


# ---------------------------------------------------------------------------------------------------------
# BEARINGS
# ---------------------------------------------------------------------------------------------------------

Bearing.destroy_all

# ABEC 5
b1 = Bearing.create(name: "Independent ABEC 5 8mm Bearings", brand: "Independent", material: "Stainless Steel", price: 1400, rating: "ABEC 5",
                    description: "The Independent ABEC 5 8mm bearings have a dust proof outer shield and grit blocking cage to keep the stainless steel ball bearings clean. With an open back for easy maintenance, the stainless steel races provide durability.")
b2 = Bearing.create(name: "Rush ABEC 5 Titanium Coated 8mm Bearings", brand: "Rush", material: "Stainless Steel", price: 1200, rating: "ABEC 5",
                    description: "The Rush ABEC 5 Titanium Coated 8mm bearings are titanium coated for strength and speed. With a nylon retainer to keep the ball bearings secure, the rubber shields provide easy maintenance. Includes bearing spacers to maintain quality and increase maximum roll speed.")
b3 = Bearing.create(name: "Sector 9 PDP ABEC 5 8mm Bearings", brand: "Sector 9", material: "Stainless Steel", price: 1000, rating: "ABEC 5",
                    description: "These brand new, professional grade ABEC 5 bearings by Sector 9 are pre-lubricated for a smooth, fast ride. They come in the standard size (608 with an 8mm core, 22mm outer diameter, and 7mm width) and provide the best for performance and durability. Each set of Sector 9 8mm PDP ABEC 5 Bearings contains eight (8) bearings, which is enough for four (4) wheels.")
b4 = Bearing.create(name: "System ABEC 5 8mm Bearings", brand: "System", material: "Stainless Steel", price: 1000, rating: "ABEC 5",
                    description: "The System ABEC 5 8mm bearings have stainless steel ball bearings. The removable shields provide easy maintenance.")

# ABEC 7
b5 = Bearing.create(name: "Sector 9 Cosmic ABEC 7 8mm Bearings", brand: "Sector 9", material: "Stainless Steel", price: 2000, rating: "ABEC 7",
                    description: "The Sector 9 Cosmic ABEC 7 8mm bearings have stainless steel ball bearings for speed and rubber coated steel shields for protection.")

# Non-Rated
b6 = Bearing.create(name: "Bronson Speed Co. G3 Next Generation Bearings", brand: "Bronson", material: "Stainless Steel", price: 3000, rating: "Non-Rated",
                    description: "The Bronson Speed Co. Next Generation Bearings have 7 steel ball bearing with a steel casing. The deep groove raceways reduce impact damage and maintain speed. Non-contact rubber shields protect against grime, reduces oil leaks, and allows for easy cleaning. Microscopic groove raceways are self-smoothing for improved lubrication and spin. The max impact cage design is constructed with non-distorted glass filled nylon for strength and evenly spaced ball bearings. The ball cage sockets surfaces are engineered to hold oil for lubrication. Built with Bronson's \"Balls Out Technology\", the balls-out cage-in orientation reduces shield and cage contact for increased speed. A special blend high speed ceramic oil increases durability, reduces rust, and increases speed. Each set of Bronson bearings are hand inspected twice, micro polished, ultrasonic solvent washed 3 times prior to lubrication, and packaged in nitrogen filled shrink wrap to reduce oxidation during shipping.")
b7 = Bearing.create(name: "Goldcoast Rolleroid Bearings", brand: "Goldcoast", material: "Stainless Steel", price: 2000, rating: "Non-Rated",
                    description: "The GoldCoast Rolleroid Bearings are produced with 7 stainless steel ball bearings. The chemically developed process lubricates the ball bearings for increased speed. Removable shields provide easy maintenance.")
b8 = Bearing.create(name: "Independent Black 8mm Bearings", brand: "Independent", material: "Stainless Steel", price: 2500, rating: "Non-Rated",
                    description: "The Independent Black 8mm bearings have stainless steel ball bearings with double sided rubber shields for protection. They come pre-oiled and greased for immediate use.")
b9 = Bearing.create(name: "Rush Downhill Bombers Titanium Coated Bearings", brand: "Rush", material: "Stainless Steel", price: 1000, rating: "Non-Rated",
                    description: "The Rush Downhill Speed Bomber Ceramic Hybrid have 7 stainless steel waterproof ball bearings with a nylon retainer and steel casing, the rubber shields provide easy maintenance.")

# b1 = Bearing.create(name: "", brand: "", material: "", price: , rating: "",
#                     description: "")

# ---------------------------------------------------------------------------------------------------------
# PICTURES
# ---------------------------------------------------------------------------------------------------------

Picture.destroy_all

deck1 = Picture.create(picturable: d1, image: File.open('app/assets/images/decks/d1.jpg'))
deck2 = Picture.create(picturable: d2, image: File.open('app/assets/images/decks/d2.jpg'))
deck3 = Picture.create(picturable: d3, image: File.open('app/assets/images/decks/d3.jpg'))
deck4 = Picture.create(picturable: d4, image: File.open('app/assets/images/decks/d4.jpg'))
deck4_2 = Picture.create(picturable: d4, image: File.open('app/assets/images/decks/d4-2.jpg'))
deck5 = Picture.create(picturable: d5, image: File.open('app/assets/images/decks/d5.jpg'))
deck5_2 = Picture.create(picturable: d5, image: File.open('app/assets/images/decks/d5-2.jpg'))
deck6 = Picture.create(picturable: d6, image: File.open('app/assets/images/decks/d6.jpg'))
deck6_2 = Picture.create(picturable: d6, image: File.open('app/assets/images/decks/d6-2.jpg'))
deck7 = Picture.create(picturable: d7, image: File.open('app/assets/images/decks/d7.jpg'))
deck7_2 = Picture.create(picturable: d7, image: File.open('app/assets/images/decks/d7-2.jpg'))
deck8 = Picture.create(picturable: d8, image: File.open('app/assets/images/decks/d8.jpg'))
deck8_2 = Picture.create(picturable: d8, image: File.open('app/assets/images/decks/d8-2.jpg'))
deck9 = Picture.create(picturable: d9, image: File.open('app/assets/images/decks/d9.jpg'))
deck9_2 = Picture.create(picturable: d9, image: File.open('app/assets/images/decks/d9-2.jpg'))
deck10 = Picture.create(picturable: d10, image: File.open('app/assets/images/decks/d10.jpg'))
deck10_2 = Picture.create(picturable: d10, image: File.open('app/assets/images/decks/d10-2.jpg'))
deck11 = Picture.create(picturable: d11, image: File.open('app/assets/images/decks/d11.jpg'))
deck11_2 = Picture.create(picturable: d11, image: File.open('app/assets/images/decks/d11-2.jpg'))
deck12 = Picture.create(picturable: d12, image: File.open('app/assets/images/decks/d12.jpg'))
deck12_2 = Picture.create(picturable: d12, image: File.open('app/assets/images/decks/d12-2.jpg'))
deck13 = Picture.create(picturable: d13, image: File.open('app/assets/images/decks/d13.jpg'))
deck13_2 = Picture.create(picturable: d13, image: File.open('app/assets/images/decks/d13-2.jpg'))
deck14 = Picture.create(picturable: d14, image: File.open('app/assets/images/decks/d14.jpg'))
deck14_2 = Picture.create(picturable: d14, image: File.open('app/assets/images/decks/d14-2.jpg'))
deck15 = Picture.create(picturable: d15, image: File.open('app/assets/images/decks/d15.jpg'))
deck15_2 = Picture.create(picturable: d15, image: File.open('app/assets/images/decks/d15-2.jpg'))
deck16 = Picture.create(picturable: d16, image: File.open('app/assets/images/decks/d16.jpg'))
deck16_2 = Picture.create(picturable: d16, image: File.open('app/assets/images/decks/d16-2.jpg'))
deck17 = Picture.create(picturable: d17, image: File.open('app/assets/images/decks/d17.jpg'))
deck17_2 = Picture.create(picturable: d17, image: File.open('app/assets/images/decks/d17-2.jpg'))
deck18 = Picture.create(picturable: d18, image: File.open('app/assets/images/decks/d18.jpg'))
deck18_2 = Picture.create(picturable: d18, image: File.open('app/assets/images/decks/d18-2.jpg'))
deck19 = Picture.create(picturable: d19, image: File.open('app/assets/images/decks/d19.jpg'))
deck19_2 = Picture.create(picturable: d19, image: File.open('app/assets/images/decks/d19-2.jpg'))
deck20 = Picture.create(picturable: d20, image: File.open('app/assets/images/decks/d20.jpg'))
deck20_2 = Picture.create(picturable: d20, image: File.open('app/assets/images/decks/d20-2.jpg'))
deck21 = Picture.create(picturable: d21, image: File.open('app/assets/images/decks/d21.jpg'))
deck21_2 = Picture.create(picturable: d21, image: File.open('app/assets/images/decks/d21-2.jpg'))
deck22 = Picture.create(picturable: d22, image: File.open('app/assets/images/decks/d22.jpg'))
deck22_2 = Picture.create(picturable: d22, image: File.open('app/assets/images/decks/d22-2.jpg'))

truck1 = Picture.create(picturable: t1, image: File.open('app/assets/images/trucks/t1.jpg'))
truck1_2 = Picture.create(picturable: t1, image: File.open('app/assets/images/trucks/t1-2.jpg'))
truck2 = Picture.create(picturable: t2, image: File.open('app/assets/images/trucks/t2.jpg'))
truck2_2 = Picture.create(picturable: t2, image: File.open('app/assets/images/trucks/t2-2.jpg'))
truck2_3 = Picture.create(picturable: t2, image: File.open('app/assets/images/trucks/t2-3.jpg'))
truck2_4 = Picture.create(picturable: t2, image: File.open('app/assets/images/trucks/t2-4.jpg'))
truck3 = Picture.create(picturable: t3, image: File.open('app/assets/images/trucks/t3.jpg'))
truck3_2 = Picture.create(picturable: t3, image: File.open('app/assets/images/trucks/t3-2.jpg'))
truck4 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4.jpg'))
truck4_2 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-2.jpg'))
truck4_3 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-3.jpg'))
truck4_4 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-4.jpg'))
truck4_5 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-5.jpg'))
truck4_6 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-6.jpg'))
truck4_7 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-7.jpg'))
truck4_8 = Picture.create(picturable: t4, image: File.open('app/assets/images/trucks/t4-8.jpg'))
truck5 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5.jpg'))
truck5_2 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-2.jpg'))
truck5_3 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-3.jpg'))
truck5_4 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-4.jpg'))
truck5_5 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-5.jpg'))
truck5_6 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-6.jpg'))
truck5_7 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-7.jpg'))
truck5_8 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-8.jpg'))
truck5_9 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-9.jpg'))
truck5_10 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-10.jpg'))
truck5_11 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-11.jpg'))
truck5_12 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-12.jpg'))
truck5_13 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-13.jpg'))
truck5_14 = Picture.create(picturable: t5, image: File.open('app/assets/images/trucks/t5-14.jpg'))
truck6 = Picture.create(picturable: t6, image: File.open('app/assets/images/trucks/t6.jpg'))
truck6_2 = Picture.create(picturable: t6, image: File.open('app/assets/images/trucks/t6-2.jpg'))
truck6_3 = Picture.create(picturable: t6, image: File.open('app/assets/images/trucks/t6-3.jpg'))
truck6_4 = Picture.create(picturable: t6, image: File.open('app/assets/images/trucks/t6-4.jpg'))
truck7 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7.jpg'))
truck7_2 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7-2.jpg'))
truck7_3 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7-3.jpg'))
truck7_4 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7-4.jpg'))
truck7_5 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7-5.jpg'))
truck7_6 = Picture.create(picturable: t7, image: File.open('app/assets/images/trucks/t7-6.jpg'))
truck8 = Picture.create(picturable: t8, image: File.open('app/assets/images/trucks/t8.jpg'))
truck8_2 = Picture.create(picturable: t8, image: File.open('app/assets/images/trucks/t8-2.jpg'))
truck8_3 = Picture.create(picturable: t8, image: File.open('app/assets/images/trucks/t8-3.jpg'))
truck8_4 = Picture.create(picturable: t8, image: File.open('app/assets/images/trucks/t8-4.jpg'))
truck9 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9.jpg'))
truck9_2 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9-2.jpg'))
truck9_3 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9-3.jpg'))
truck9_4 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9-4.jpg'))
truck9_5 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9-5.jpg'))
truck9_6 = Picture.create(picturable: t9, image: File.open('app/assets/images/trucks/t9-6.jpg'))

wheel1 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1.jpg'))
wheel1_2 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1-2.jpg'))
wheel1_3 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1-3.jpg'))
wheel1_4 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1-4.jpg'))
wheel1_5 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1-5.jpg'))
wheel1_6 = Picture.create(picturable: w1, image: File.open('app/assets/images/wheels/w1-6.jpg'))
wheel2 = Picture.create(picturable: w2, image: File.open('app/assets/images/wheels/w2.jpg'))
wheel2_2 = Picture.create(picturable: w2, image: File.open('app/assets/images/wheels/w2-2.jpg'))
wheel2_3 = Picture.create(picturable: w2, image: File.open('app/assets/images/wheels/w2-3.jpg'))
wheel2_4 = Picture.create(picturable: w2, image: File.open('app/assets/images/wheels/w2-4.jpg'))
wheel3 = Picture.create(picturable: w3, image: File.open('app/assets/images/wheels/w3.jpg'))
wheel3_2 = Picture.create(picturable: w3, image: File.open('app/assets/images/wheels/w3-2.jpg'))
wheel3_3 = Picture.create(picturable: w3, image: File.open('app/assets/images/wheels/w3-3.jpg'))
wheel3_4 = Picture.create(picturable: w3, image: File.open('app/assets/images/wheels/w3-4.jpg'))
wheel4 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4.jpg'))
wheel4_2 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4-2.jpg'))
wheel4_3 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4-3.jpg'))
wheel4_4 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4-4.jpg'))
wheel4_5 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4-5.jpg'))
wheel4_6 = Picture.create(picturable: w4, image: File.open('app/assets/images/wheels/w4-6.jpg'))
wheel5 = Picture.create(picturable: w5, image: File.open('app/assets/images/wheels/w5.jpg'))
wheel5_2 = Picture.create(picturable: w5, image: File.open('app/assets/images/wheels/w5-2.jpg'))
wheel6 = Picture.create(picturable: w6, image: File.open('app/assets/images/wheels/w6.jpg'))
wheel6_2 = Picture.create(picturable: w6, image: File.open('app/assets/images/wheels/w6-2.jpg'))
wheel7 = Picture.create(picturable: w7, image: File.open('app/assets/images/wheels/w7.jpg'))
wheel7_2 = Picture.create(picturable: w7, image: File.open('app/assets/images/wheels/w7-2.jpg'))

bearing1 = Picture.create(picturable: b1, image: File.open('app/assets/images/bearings/b1.jpg'))
bearing2 = Picture.create(picturable: b2, image: File.open('app/assets/images/bearings/b2.jpg'))
bearing2_2 = Picture.create(picturable: b2, image: File.open('app/assets/images/bearings/b2-2.jpg'))
bearing3 = Picture.create(picturable: b3, image: File.open('app/assets/images/bearings/b3.jpg'))
bearing3_2 = Picture.create(picturable: b3, image: File.open('app/assets/images/bearings/b3-2.jpg'))
bearing4 = Picture.create(picturable: b4, image: File.open('app/assets/images/bearings/b4.jpg'))
bearing5 = Picture.create(picturable: b5, image: File.open('app/assets/images/bearings/b5.jpg'))
bearing6 = Picture.create(picturable: b6, image: File.open('app/assets/images/bearings/b6.jpg'))
bearing6_2 = Picture.create(picturable: b6, image: File.open('app/assets/images/bearings/b6-2.jpg'))
bearing6_3 = Picture.create(picturable: b6, image: File.open('app/assets/images/bearings/b6-3.jpg'))
bearing6_4 = Picture.create(picturable: b6, image: File.open('app/assets/images/bearings/b6-4.jpg'))
bearing7 = Picture.create(picturable: b7, image: File.open('app/assets/images/bearings/b7.jpg'))
bearing7_2 = Picture.create(picturable: b7, image: File.open('app/assets/images/bearings/b7-2.jpg'))
bearing8 = Picture.create(picturable: b8, image: File.open('app/assets/images/bearings/b8.jpg'))
bearing9 = Picture.create(picturable: b9, image: File.open('app/assets/images/bearings/b9.jpg'))
bearing9_2 = Picture.create(picturable: b9, image: File.open('app/assets/images/bearings/b9-2.jpg'))

profilePic = Picture.create(picturable: guest, image: File.open('app/assets/images/user.jpg'))
