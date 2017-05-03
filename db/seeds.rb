User.destroy_all

guest = User.create(username: "Guest", password: "password")
u1 = User.create(username: "Billy", password: "password")
u2 = User.create(username: "Sally", password: "password")
u3 = User.create(username: "abc123", password: "password")


Deck.destroy_all

d1 = Deck.create(name: 'Bustin Maestro Pro Totemu Longboard Deck - 2017', brand: 'Bustin',
                 description: 'The Maestro Pro was designed to be one of the best commuters you can get your hands on. Designed by the masterminds at Bustin, and tested in New York, this board was built to ride even the busiest of terrain. The Bustin Maestro Pro features a drop through construction, lowering your ride height for an easy push through the city. Quickly accelerate through any terrain, and quickly footbreak to a stop in case of any obstructions in your way. The Bustin Maestro Pro is topped off with functional kicktails, giving you a ride that is both fun and functional. No matter what you’re looking to skate, the Maestro Pro is ready to handle it all with ease. Whether you’re late to class, or ready to go home, the Bustin Maestro Pro is here to perform.',
                 concave: 'Mild', flex: 'Medium', mount: 'Drop Through', traction: 'Grip Tape',
                 shape: 'Cutout', price: 12495, length: 39.75, width: 9.50, wheelbase: 27)

d2 = Deck.create(name: 'Sector 9 Mini Fractal Longboard Deck - 2017', brand: "Sector 9",
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

d6 = Deck.create(name: 'Restless Splinter 38 Owl Longboard Deck - 2017', brand: 'Restless',
                 description: "The Restless Splinter 38 Owl takes everything you’ve loved in the Splinter 40, and puts it in a more nimble package. The board is shortened 2 inches for a tighter turning radius. So when it comes to city riding, the Restless Splinter 38 Owl will be able to hit all of the sharp turns and easily slalom through the city streets. The board has a drop through design, so no matter how far you’re looking to push, the Restless Splinter 38 Owl eases the strain on your legs so you can push harder and farther than ever. Completed with twin kicks, this adds extra flare and style to your ride. So whether it be freeride, freestyle, or just cruising, the Restless Splinter 38 Owl will be ready to handle it all.",
                 concave: 'Mild', flex: 'Medium', mount: "Drop Through",
                 traction: "Grip Tape", shape: 'Cutout', price: 13595, length: 38, width: 9.75, wheelbase: 27)

d7 = Deck.create(name: 'Never Summer Super Freak Longboard Deck - 2017', brand: 'Never Summer',
                 description: "More info to come!",
                 concave: 'Medium', flex: 'Stiff', mount: 'Top',
                 traction: 'Grip Tape', shape: 'Twin', price: 16295, length: 36.25, width: 9.625, wheelbase: 22.5)

d8 = Deck.create(name: 'Bustin Mission 36" Hana Longboard Deck - 2017', brand: 'Bustin',
                 description: "The Mission 36\" is the little brother of the full sized Mission 40\", but it represents a class of its own. Having a drop through design, the Mission 36\" gives you a very low ride height for easy pushing and riding in the city. Its twin shape gives you a symmetrical ride no matter which way you’re shredding, and the bamboo maple construction gives you a snappy flex and tons of durability. Having a very rigid and responsive ride lets you shred with confidence while keeping a comfortable platform. Overall the Mission 36\" is perfect for the city rider or the more aggressive dancer.",
                 concave: 'Medium', flex: 'Medium', mount: 'Drop Through',
                 traction: 'Die Cut Grip', shape: 'Cutout', price: 9495, length: 36, width: 8.5, wheelbase: 26)

# d1 = Deck.create(name: , brand: , description: , concave: , flex: , mount: ,
#                  traction: , shape: , price: , length: , width: , wheelbase: )
