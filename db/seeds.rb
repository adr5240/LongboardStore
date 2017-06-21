BRANDS = {
    abec11: "ABEC 11",
    arbor: "Arbor",
    arsenal: "Arsenal",
    atlas: "Atlas",
    bear: "Bear",
    blank: "Blank",
    bloodOrange: "Blood Orange",
    bones: "Bones",
    bronson: "Bronson",
    bustin: "Bustin",
    cadillac: "Cadillac",
    caliber: "Caliber",
    goldcoast: "Goldcoast",
    gullwing: "Gullwing",
    holesom: "Holesom",
    independent: "Independent",
    kryptonics: "Kryptonics",
    landyachtz: "Landyachtz",
    loaded: "Loaded",
    neverSummer: "Never Summer",
    oust: "Oust",
    randal: "Randal",
    restless: "Restless",
    rush: "Rush",
    santaCruz: "Santa Cruz",
    sector9: "Sector 9",
    system: "System",
    slant: "Slant",
    tracker: "Tracker",
    zealous: "Zealous"
}


User.destroy_all

guest = User.create(username: "Guest", password: "password")
admin = User.create(username: "Admin", password: "password", admin: true)
u1 = User.create(username: "Billy", password: "password")
u2 = User.create(username: "Sally", password: "password")
u3 = User.create(username: "abc123", password: "password")

OrderStatus.destroy_all
OrderItem.destroy_all
Order.destroy_all

OrderStatus.create(id: 1, name: "In Progress")
OrderStatus.create(id: 2, name: "Placed")
OrderStatus.create(id: 3, name: "Shipped")
OrderStatus.create(id: 4, name: "Cancelled")


# ---------------------------------------------------------------------------------------------------------
# DECKS
# ---------------------------------------------------------------------------------------------------------

Deck.destroy_all

SHAPE = {
    cutout: 'Cutout',
    miniCruiser: 'Mini Cruiser',
    pintail: 'PinTail',
    speedboard: 'Speedboard',
    twin: 'Twin'
}

CONCAVE = {
    flat: 'Flat',
    mild: 'Mild',
    medium: 'Medium',
    stiff: 'Stiff'
}

FLEX = {
    flexy: 'Flexy',
    medium: 'Medium',
    stiff: 'Stiff'
}

MOUNT = {
    dropThrough: 'Drop Through',
    top: 'Top'
}

TRACTION = {
    dieCut: 'Die Cut Grip',
    gripTape: 'Grip Tape',
    painted: 'Painted'
}

d = {
    d1: Deck.create(name: 'Bustin Maestro Pro Totemu Longboard Deck', brand: BRANDS[:bustin],
                     description: 'The Maestro Pro was designed to be one of the best commuters you can get your hands on. Designed by the masterminds at Bustin, and tested in New York, this board was built to ride even the busiest of terrain. The Bustin Maestro Pro features a drop through construction, lowering your ride height for an easy push through the city. Quickly accelerate through any terrain, and quickly footbreak to a stop in case of any obstructions in your way. The Bustin Maestro Pro is topped off with functional kicktails, giving you a ride that is both fun and functional. No matter what you’re looking to skate, the Maestro Pro is ready to handle it all with ease. Whether you’re late to class, or ready to go home, the Bustin Maestro Pro is here to perform.',
                     concave: CONCAVE[:mild], flex: FLEX[:medium], mount: MOUNT[:dropThrough], traction: TRACTION[:gripTape],
                     shape: SHAPE[:cutout], price: 12495, length: 39.75, width: 9.50, wheelbase: 27),

    d2: Deck.create(name: 'Sector 9 Mini Fractal Longboard Deck', brand: BRANDS[:sector9],
                     description: 'So what do you get when you have a board that’s fun, functional, and then shrink it down two inches? The Sector 9 Mini Fractal! This board was built to be a part of the Sidewinder Series, making this board a very lively and responsive ride. The Sector 9 Mini Fractal is a drop through cruiser, giving you a very low ride height for easy pushing through the city streets. The short wheelbase gives you a nimble ride that easily whips and weaves through any and all, obstacles in your path. So no matter where you need to go, this board can easily maneuver around town. No matter the distance, the Sector 9 Mini Fractal is here and ready to tackle any course in your path.',
                     concave: CONCAVE[:mild], flex: FLEX[:medium], mount: MOUNT[:dropThrough], traction: TRACTION[:gripTape],
                     shape: SHAPE[:speedboard], price: 9195, length: 34, width: 8.75, wheelbase: 24.4),

    d3: Deck.create(name: 'Loaded Icarus Longboard Deck', brand: BRANDS[:loaded],
                     description: "Ya know, when Loaded releases an all new board, it\'s hard to not get so giddy and smiley to the point that our cheeks hurt. But hey, if it means an all new creation of mystical shredding, what\'s a little sore cheek from time to time. Thus, the Loaded Icarus is born. A flexy, fun, and lively ride. The board comes in at 38.4 inches long, 8.6 inches wide, with a wheelbase of 28.25 inches long. You\'ll notice right away it\'s a little narrower than your standard, 10 inch deck. This cuts down on the weight of the board, making it extremely easy to push around town. With a fully symmetrical shape, the Loaded Icarus performs outstandingly well as both a freestyle and freeride setup. The board features an all new construction, that we dare say could only be straight out of Greek mythology. Combining their \"bamboo biscuit\" technology into their already amazing bamboo, fiberglass, and cork construction, you get a board with some shapely curves that you can bring home to your momma. This creates ample wheel flares, that are unobtrusive to your stance. That means the Loaded Icarus locks you in for pumping, and carving hard through the city streets, while keeping a comfortable standing platform. The board comes in 2 different flexes. The flex 1 is the stiffer of the two, for riders ranging from 170-200+. This board will be better for aggressive turning, and more controlled while sliding. That makes the flex 2 the flexier of the 2. This board is much more lively and playful than its stiff counterpart, making pumping a breeze. The weight range for this board is 75-200+ pounds. Keep in mind, these are only suggested weight ranges, so you don't have to worry about that holiday weight. The board is topped off with functional nose and tail, giving you the shred everything setup, in a lowered drop through ride that makes it a fun every day setup.",
                     concave: CONCAVE[:mild], flex: FLEX[:flexy], mount: MOUNT[:dropThrough],
                     traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 21500, length: 38.4, width: 8.6, wheelbase: 28.25),

    d4: Deck.create(name: 'Landyachtz Switchblade 36 Mountain Longboard Deck', brand: BRANDS[:landyachtz],
                     description: "The Landyachtz Switchblade 36 Mountain has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 36 Mountain Green is the shortest of the three. This means you get a ride that is extremely nimble and maneuverable, without compromising stability. So regardless of the road you’re about to hit, the Landyachtz Switchblade 36 Mountain Green is ready to accomplish the task at hand.",
                     concave: CONCAVE[:medium], flex: FLEX[:stiff], mount: MOUNT[:dropThrough],
                     traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 13895, length: 36, width: 9.5, wheelbase: 27),

    d5: Deck.create(name: 'Landyachtz Switchblade 40 Mountain Longboard Deck', brand: BRANDS[:landyachtz],
                     description: "The Landyachtz Switchblade 40 Mountai has been in the industry for much longer than you’ve been skating. This board set the way for stability in downhill riding, helping riders push their limits for what was possible on a skateboard. The double drop design gives you an extremely stable ride by lowering your center of gravity. The drop down construction provides pockets for you to lock your feet into, for both freeriding and downhilling. When pushing the limits of speed, you want to ensure that you’re glued to your deck. The W concave of the board teams up to ensure no matter how much centrifugal force is thrown at your board, you’re locked in. And topped off with its symmetrical construction, this board is one of the most versatile rides around. Coming in three different sizes, the Landyachtz Switchblade 40 is the longest of the three. This equates to the most stable ride, ready for your next downhill race.",
                     concave: CONCAVE[:medium], flex: FLEX[:stiff], mount: MOUNT[:dropThrough],
                     traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 13895, length: 40, width: 10, wheelbase: 31),

    d6: Deck.create(name: 'Restless Splinter 38 Owl Longboard Deck', brand: BRANDS[:restless],
                     description: "The Restless Splinter 38 Owl takes everything you’ve loved in the Splinter 40, and puts it in a more nimble package. The board is shortened 2 inches for a tighter turning radius. So when it comes to city riding, the Restless Splinter 38 Owl will be able to hit all of the sharp turns and easily slalom through the city streets. The board has a drop through design, so no matter how far you’re looking to push, the Restless Splinter 38 Owl eases the strain on your legs so you can push harder and farther than ever. Completed with twin kicks, this adds extra flare and style to your ride. So whether it be freeride, freestyle, or just cruising, the Restless Splinter 38 Owl will be ready to handle it all.",
                     concave: CONCAVE[:mild], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                     traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 13595, length: 38, width: 9.75, wheelbase: 27),

    d7: Deck.create(name: 'Never Summer Super Freak Longboard Deck', brand: BRANDS[:neverSummer],
                     description: "More info to come!",
                     concave: CONCAVE[:medium], flex: FLEX[:stiff], mount: MOUNT[:top],
                     traction: TRACTION[:gripTape], shape: SHAPE[:twin], price: 16295, length: 36.25, width: 9.625, wheelbase: 22.5),

    d8: Deck.create(name: 'Bustin Mission 36" Hana Longboard Deck', brand: BRANDS[:bustin],
                     description: "The Mission 36\" is the little brother of the full sized Mission 40\", but it represents a class of its own. Having a drop through design, the Mission 36\" gives you a very low ride height for easy pushing and riding in the city. Its twin shape gives you a symmetrical ride no matter which way you’re shredding, and the bamboo maple construction gives you a snappy flex and tons of durability. Having a very rigid and responsive ride lets you shred with confidence while keeping a comfortable platform. Overall the Mission 36\" is perfect for the city rider or the more aggressive dancer.",
                     concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                     traction: TRACTION[:dieCut], shape: SHAPE[:cutout], price: 9495, length: 36, width: 8.5, wheelbase: 26),

    d9: Deck.create(name: "Arbor Timeless 42\" Groundswell Longboard Deck", brand: BRANDS[:arbor],
                     description: 'The Arbor Timeless 42" Groundswell was made to be one of the most fun pintails on the market. The board features a 42 inch length, for an extremely fun ride. The board has a top mount construction, giving you maximum leverage and control over your trucks. This equates to sharper carves, and harder turns, for easily weaving through campus. So whether it be to get to class, or to get out of class as quickly as possible, the Arbor Timeless 42" Groundswell was made to be the one board to get you there with ease.',
                     concave: CONCAVE[:mild], flex: FLEX[:medium], mount: MOUNT[:top], traction: TRACTION[:painted],
                     shape: SHAPE[:pintail], price: 10995, length: 42, width: 9, wheelbase: 29.15),

    d10: Deck.create(name: "Arbor Fish 37\" Groundswell Longboard Deck", brand: BRANDS[:arbor],
                      description: 'The Arbor Fish 37" Groundswell is the perfect pintail cruiser, for completing your quiver. This board has a top mount construction for easy city riding. With full leverage over your trucks, you get more grip and more control than most boards on the market. The Arbor Fish 37" Groundswell features a timeless pintail shape, that is both easy to ride, and aesthetically pleasing. So whether it’s for your little nephew, boyfriend, girlfriend, or anyone in between, this board is sure to be a crowd pleaser in the world of longboarding.',
                      concave: CONCAVE[:mild], flex: FLEX[:medium], mount: MOUNT[:top],
                      traction: TRACTION[:painted], shape: SHAPE[:pintail], price: 9995, length: 37, width: 8.5, wheelbase: 26),

    d11: Deck.create(name: "Arbor Axis 37\" Solstice Longboard Deck", brand: BRANDS[:arbor],
                      description: 'Find your center, and reach nirvana on the all new Arbor Axis 37" Solstice. The board was made to be the go to cruiser board for rippin’ through the city. This board features a drop through platform for an extremely low ride height. That means no matter how far you’re looking to push, this board gets you there with ease. With a subtle flex, and fully symmetrical construction, this board is extremely comfortable to ride no matter how far the distance. Get your hands on the all new Arbor Axis 37" Solstice to find out why this is one of the best boards around.',
                      concave: CONCAVE[:flat], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:painted], shape: SHAPE[:cutout], price: 19995, length: 37, width: 8.5, wheelbase: 37.4),

    d12: Deck.create(name: 'Arbor Shakedown 37" Crosscut Longboard Deck', brand: BRANDS[:arbor],
                      description: 'When it comes to ballin’ on a budget, there’s no better way to do it than with the Arbor Shakedown 37" Crosscut. This board was made to be a little skate everything setup. The board comes with a skate everything mentality, from longboarding to street skating, this board does it all. The Arbor Shakedown 37" Crosscut is a double kick setup, that can bomb your favorite hill, slash your favorite sidewalk, skate and explore the city, and is no stranger to your local skatepark. That means no matter what you’re going, the Arbor Shakedown 37" Crosscut is sure to be packed in the car on your next skate trip.',
                      concave: CONCAVE[:mild], flex: FLEX[:stiff], mount: MOUNT[:top],
                      traction: TRACTION[:gripTape], shape: SHAPE[:twin], price: 7995, length: 37, width: 9.25, wheelbase: 18.75),

    d13: Deck.create(name: 'Arbor Shakedown 34" Crosscut Longboard Deck', brand: BRANDS[:arbor],
                      description: 'Packing for your next skate trip, you’re sure to need a board that does it all. That’s where the Arbor Shakedown 34" Crosscut comes into play. The Arbor Shakedown 34" Crosscut is a double kick setup, that is extremely versatile for any style of skating. With a simple switch of the wheels, the board can go from ripping your local park, to slashing your steepest sidewalks. The board is sure to be a local favorite, that has everything you need all in one rippin’ ride. So whether it be cruising, carving, freeriding, slide jams, skate parks, or lurk sessions, be sure to grab the all new Arbor Shakedown 34" Crosscut.',
                      concave: CONCAVE[:mild], flex: FLEX[:stiff], mount: MOUNT[:top],
                      traction: TRACTION[:gripTape], shape: SHAPE[:twin], price: 6995, length: 34, width: 9, wheelbase: 15.75),

    d14: Deck.create(name: 'Arbor Photo Collection Walnut Drop Cruiser Longboard Deck - 38"', brand: BRANDS[:arbor],
                      description: 'Extra low for that dope roll. The Arbor Photo Collection Walnut Drop Cruiser was made to be one of the easiest boards on the market to push around town. The Arbor Photo Collection Walnut Drop Cruiser features a double drop construction that gives it an extremely low ride height. This equates to both an easy push, and unmatched stability by lowering your center of gravity. The natural pockets of this board from the drop platform locks you in for both downhilling and freeriding. Overall, a setup that does it all, the Arbor Photo Collection Walnut Drop Cruiser.',
                      concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 10995, length: 38, width: 9.75, wheelbase: 29.95),

    d15: Deck.create(name: 'Arbor Artist Collection Catalyst GT Longboard Deck - 40"', brand: BRANDS[:arbor],
                      description: 'The Arbor Catalyst is a freeriding and freestyling beauty. This board features a drop through design for easy pushing and easy riding. The functional nose and tail gives you a freestyle influence for whatever you may be looking to sesh. Locked in enough for knocking out stand up slides as well, the Arbor Catalyst is a great all-around setup.',
                      concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 10995, length: 40, width: 9, wheelbase: 26),

    d16: Deck.create(name: 'Arbor Artist Collection Axis GT Drop Cruiser Longboard Deck - 38"', brand: BRANDS[:arbor],
                      description: 'The Arbor Axis GT Drop Cruiser is a drop through and drop down cruiser deck, that anyone is sure to love. This board is drop through, giving you a lowered platform, for an easier push. Team that up with the drop platform, and you get an extra low ride. This also equates to a lower center of gravity, giving you a comforting stable feeling. The Axis GT Drop Cruiser is fully symmetrical, letting you ride any which way you please. Whether it be forward or backward, it’ll feel exactly the same on this setup. So whether it be cruising to class, or just cruising for fun, the Arbor Axis GT Drop Cruiser is sure to be a crowd pleaser that anyone will love.',
                      concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 10995, length: 38, width: 8.8, wheelbase: 28.8),

    d17: Deck.create(name: 'Arbor Artist Collection Axis GT Longboard Deck - 40"', brand: BRANDS[:arbor],
                      description: 'The Arbor Axis is a drop through cruiser deck, that anyone is sure to love. This board is drop through, giving you a lowered platform, for an easier push. This also equates to a lower center of gravity, giving you a comforting stable feeling. The Axis is fully symmetrical, letting you ride any which way you please. Whether it be forward or backward, it’ll feel exactly the same on this setup. So whether it be cruising to class, or just cruising for fun, the Arbor Axis is sure to be a crowd pleaser that anyone will love.',
                      concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 9995, length: 40, width: 9, wheelbase: 30.5),

    d18: Deck.create(name: 'Arbor Bamboo Timeless Longboard Deck - 42"', brand: BRANDS[:arbor],
                      description: 'The Arbor Timeless is, at this point, a timeless classic. A pintail shape is a family favorite, making it the perfect gift for anyone out there. This board is top mounted, giving you maximum leverage and control over your trucks. This makes turning a breeze, and carving through anything and everything in your path. This board is perfect for anyone looking for a beginner setup, to someone who wants a board that’ll stand up against the test of time.',
                      concave: CONCAVE[:flat], flex: FLEX[:medium], mount: MOUNT[:top],
                      traction: TRACTION[:painted], shape: SHAPE[:pintail], price: 9495, length: 42, width: 9.25, wheelbase: 30.25),

    d19: Deck.create(name: 'Arbor Photo Collection Walnut Timeless Longboard Deck - 42"', brand: BRANDS[:arbor],
                      description: 'The Arbor Timeless is, at this point, a timeless classic. A pintail shape is a family favorite, making it the perfect gift for anyone out there. This board is top mounted, giving you maximum leverage and control over your trucks. This makes turning a breeze, and carving through anything and everything in your path. This board is perfect for anyone looking for a beginner setup, to someone who wants a board that’ll stand up against the test of time.',
                      concave: CONCAVE[:flat], flex: FLEX[:medium], mount: MOUNT[:top],
                      traction: TRACTION[:painted], shape: SHAPE[:pintail], price: 9995, length: 42, width: 9.25, wheelbase: 30.25),

    d20: Deck.create(name: 'Arbor Drop Cruiser GT Longboard Deck', brand: BRANDS[:arbor],
                      description: 'The Arbor Drop Cruiser is a double drop setup, making it very low to the ground for an easy push. The drop down construction gives you pockets to lock your feet into. So when you’re getting slidey and wanting to drift, this board perfectly locks you in for all the fun. The drop through setup lowers your ride, giving you a lower center of gravity for extra stability. This also makes the board extremely easy to slide. So you’ll have the confidence to kick out those slides for getting steezy. Ready for the push race, city cruise, freeriding, or any session you want to throw at it. The Arbor Drop Cruiser is one of the most fun boards you can get your hands on.',
                      concave: CONCAVE[:medium], flex: FLEX[:medium], mount: MOUNT[:dropThrough],
                      traction: TRACTION[:gripTape], shape: SHAPE[:cutout], price: 18995, length: 38, width: 9.75, wheelbase: 29.25),

    d21: Deck.create(name: 'Arbor Bamboo Pocket Rocket Longboard Deck', brand: BRANDS[:arbor],
                      description: 'The Arbor Pocket Rocket is a perfect little cruiser setup, that easily stashes away in any school locker, making this board, the perfect cruiser setup. This board is a small single kick setup, equipping this board with everything you need to easily get around town. With a small design, this board is extremely lightweight, making it easy to kick around town. Overall, the Arbor Pocket Rocket is the perfect cruiser for the everyday rider.',
                      concave: CONCAVE[:medium], flex: FLEX[:stiff], mount: MOUNT[:top],
                      traction: TRACTION[:painted], shape: SHAPE[:miniCruiser], price: 7995, length: 26, width: 7.75, wheelbase: 14),

    d22: Deck.create(name: 'Arbor Pocket Rocket GT Longboard Deck', brand: BRANDS[:arbor],
                      description: 'The Arbor Pocket Rocket is a perfect little cruiser setup, that easily stashes away in any school locker, making this board, the perfect cruiser setup. This board is a small single kick setup, equipping this board with everything you need to easily get around town. With a small design, this board is extremely lightweight, making it easy to kick around town. Overall, the Arbor Pocket Rocket is the perfect cruiser for the everyday rider.',
                      concave: CONCAVE[:mild], flex: FLEX[:stiff], mount: MOUNT[:top],
                      traction: TRACTION[:gripTape], shape: SHAPE[:miniCruiser], price: 6995, length: 26, width: 7.75, wheelbase: 14),

    # d23: Deck.create(name: , brand: BRANDS[:(FILL)],
    #                   description: ,
    #                   concave: CONCAVE[:(FILL)], flex: FLEX[:(FILL)], mount: MOUNT[:(FILL)],
    #                   traction: TRACTION[:(FILL)], shape: SHAPE[:(FILL)], price: , length: , width: , wheelbase: ),
}



# ---------------------------------------------------------------------------------------------------------
# TRUCKS
# ---------------------------------------------------------------------------------------------------------

Truck.destroy_all

HOLES = {
    both: 'Old School & New School',
    new: 'New School',
    old: 'Old School'
}

t = {
    t1: Truck.create(name: 'Arsenal 180mm 50 Degree Trucks', brand: BRANDS[:arsenal], hole_pattern: HOLES[:old],
        description: "Arsenal 180mm 50 Degree Longboard Trucks are the newest all-round cast trucks in the scene, raw and ready to take you anywhere. They have the best feedback. Designed to be as close to precision as the gravity casting process can provide.
        Arsenal Cast Trucks are designed to be as close to precision as the gravity casting process can provide. With extremely low tolerances and superior engineering, Cast Arsenals are the strongest and most comfortable cast truck on the market period. They feature tall bushings, a bushing seat that complements the aggressive geometry and allows for ample lean and stability. After hundreds of hours of testing the strength, durability, and overall feel: we believe that Cast Arsenals just may be the best cast truck you will ever ride.",
        width: 250, angle: 50, price: 6400),

    t2: Truck.create(name: 'Bear Polar Bear 105mm Trucks', brand: BRANDS[:bear], hole_pattern: HOLES[:new],
        description: "The Bear Polar Bear 105mm trucks are designed for park, pool, street, freestyle, cruising, and freeriding. The cast hanger measures 105mm long with 173mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
        width: 173, angle: 40, price: 3900),

    t3: Truck.create(name: 'Bear Polar Bear 155mm Raw Trucks', brand: BRANDS[:bear], hole_pattern: HOLES[:new],
        description: "The Bear Polar Bear 155mm Raw trucks are designed for park, pool, street, freestyle, freeride, and cruising. The cast hanger measures 154mm long with 222mm axle length. With a board side barrel bushing for stability, the road side short cone bushing has a tight turn radius.",
        width: 222, angle: 45, price: 4700),

    t4: Truck.create(name: 'Caliber II 44 Degree Trucks', brand: BRANDS[:caliber], hole_pattern: HOLES[:new],
        description: 'The Caliber II 44 Degree trucks are designed for downhill, freeriding, freestyle, carving, and cruising. Cast with aluminum, the hanger measures 7.25" long with a 10" axle length. The 44 degree baseplate has a broad turing radius and is stable at high speeds. The double barrel bushings provide additional stability.
        The inner-step bushing seat has a large contact area for high rebound from the bushing.
        The outer-step bushing seat is a perfect circle to provide a snug fit with oversized aftermarket bushings.
        The decreased chamfer in the pivot cup seat increases contact with the baseplate. This creates a tight fit for the pivot pin.
        The circular pivot hole matches the specs in Caliber precision trucks. This offers a consistent lean and avoides kingpin bite on the hanger.
        The trucks are heat treated in-house for a 40% increase in strength. The pressed in kingpin provides maximum response and control through corners. It can be hammered out and replaced for personalized kingpin lengths. The reinforced baseplate provides additional protection during high speed impacts. Unlike powder coats, these trucks have thinner paints to insure tightened tolerances.',
        width: 254, angle: 44, price: 5400),

    t5: Truck.create(name: "Atlas 180mm 48 Degree Trucks", brand: BRANDS[:atlas], hole_pattern: HOLES[:both],
        description: 'The Atlas 180mm 48 Degree trucks are designed for freeride, freestyle, downhill, carving and cruising. Cast with A356 Aluminum for strength, the hanger measures 174mm long with a 211mm axle length. With a 48 degree baseplate for a quick turing radius, the double barrel bushings provide stability.
        The kingpin is tapered at a 1:20 ratio to fit securely inside the precision tapered hole in the baseplate. As the kingpin is tightened, it self-centers to provide a zero tolerance fit. This is why the kingpin does not site flush.
        Because of the ball pivots shape, there is less contact with the edge of the pivot cup. This allows an unrestricted range of motion. The shape also has a 50% increase in load-bearing surface for additional balance, control, and movement.
        The Atlas pivot cup is built with Nylon6, a low friction and abrasion resistant material. It is self cleaning due to the three grooves that sweep dirt into a threaded air pocket below. The axle fits directly into this pocket for removal and maintenance without the need for extra tools. The 8mm by 10mm stepped axle is strong and stiff for a responsive ride. It also eliminates the need for an inner speed ring. The I-Beam hanger adds extra strength to prevent bending and weight balance. The flat washer does not restrict the bushings and increases turing ability.',
        width: 211, angle: 48, price: 5800),

    t6: Truck.create(name: 'Caliber Standard 8" Trucks', brand: BRANDS[:caliber], hole_pattern: HOLES[:both],
        description: 'The Caliber Standard 8" trucks are designed for street, park, pool, freestyle, freeriding, and cruising. Cast with A356 T6 Virgin Aluminum, the hanger measures 5.375" long with a 8" axle length. The board side barrel bushing provides stability while the road side short cone bushing dives into turns.
        The hanger has a reinforced surface for grinding and increased life span.
        The Tombstone Design hanger provides strength to take abuse of everyday skating.
        The Grade A Kingpin provides maximum clearance and smoother "lock-in" while grinding.
        The fitted bushing seat design provides quick turning and response.',
        width: 203, angle: 90, price: 4800),

    t7: Truck.create(name: 'Gullwing Charger 9" Trucks', brand: BRANDS[:gullwing], hole_pattern: HOLES[:both],
        description: 'The Gullwing Charger 9" trucks are designed for carving, cruising, freeriding, downhill and freestyle. Cast with aluminum, the hanger measures 6.29" long with a 9" axle length. With a 50 degree baseplate for a tight turing radius, the double cone bushings dive into carves.',
        width: 228, angle: 50, price: 5200),

    t8: Truck.create(name: 'Gullwing Sidewinder II 9" Trucks', brand: BRANDS[:gullwing], hole_pattern: HOLES[:both],
        description: 'The Gullwing Sidewinder II 9" trucks are designed for carving. Cast with aluminum, the hanger measures 6.22" long with a 9" axle length. The double kingpins provide an extremely tight turing radius. With a board side barrel bushing for stability, the road side tall cone provides additional carving ability.
        Due to their intense turing radius, please be aware that these trucks must be set up on an appropriately shaped deck, with proper clearance, in order to avoid wheel bite. Sidewinder\'s are unstable at high speeds and are not recommend for downhill skating.',
        width: 228, angle: 50, price: 6600),

    t9: Truck.create(name: 'Gullwing Pro III 9" Trucks', brand: BRANDS[:gullwing], hole_pattern: HOLES[:both],
        description: 'The Gullwing Pro III 9" trucks are designed for park, pool, street, freestyle, and cruising. Cast with aluminum, the hanger measures 6.14" long with a 9" axle length. The board side barrel bushing provides stability and the road side tall cone dips into turns.',
        width: 228, angle: 50, price: 6000),

    t10: Truck.create(name: 'Independent 109mm T-Hanger Trucks', brand: BRANDS[:independent], hole_pattern: HOLES[:both],
        description: 'The Independent 109mm T-Hanger trucks are designed for street, park, pool, freestyle, and cruising. With a 356 T6 aluminum baseplate and hanger, the axles are 4140 Chromoly steel. The hanger measures 109mm long with a 177mm axle length. The board side cylinder bushing provides stability and the road side supercush bushing provides agility.',
        width: 177, angle: 50, price: 5400),

    t11: Truck.create(name: 'Independent 159mm Standard Trucks', brand: BRANDS[:independent], hole_pattern: HOLES[:both],
        description: 'The Independent 159mm Standard trucks are designed for street, park, cruising, pool, and freestyle. WIth 4140 Chromoly steel axles, the hanger is and baseplate are cast with 356 T6 aluminum. The hanger measures 156mm in length with a 222mm axle length. The board side cylinder bushing provides stability and the road side supercush bushing provides agility.',
        width: 222, angle: 50, price: 4800),

    t12: Truck.create(name: 'Independent 159mm Forged Titanium Trucks', brand: BRANDS[:independent], hole_pattern: HOLES[:both],
        description: '159mm Forged Titanium Trucks - Silver, pair',
        width: 222, angle: 50, price: 8200),

    t13: Truck.create(name: 'Independent 139mm Standard Trucks', brand: BRANDS[:independent], hole_pattern: HOLES[:new],
        description: 'The Independent 139mm Standard trucks are designed for pool, street, park, freestyle, and a cruising. The hanger measures 136mm long with a 203mm axle length. With a board side barrel bushing for stability, the road side short cone increases agility.',
        width: 203, angle: 50, price: 4400),

    t14: Truck.create(name: 'Randal R-II 125mm 42 Degree Trucks', brand: BRANDS[:randal], hole_pattern: HOLES[:both],
        description: 'The Randal R-II 125mm 42 Degree trucks are designed for carving, cruising, and freestyle. Cast with aluminum, the hanger measures 122mm long with a 187mm axle length. The 42° baseplate is stable at high speeds with a broad turing radius. With a flippable hanger to change the caster angle, the double tall conical bushings are stable and agile. The virgin aluminum grade 8 kingpin and axles provide strength.',
        width: 128, angle: 42, price: 4800),

    t15: Truck.create(name: 'Randal R-II 125mm 50 Degree Trucks', brand: BRANDS[:randal], hole_pattern: HOLES[:both],
        description: 'The Randal R-II 125mm 50 Degree trucks are designed for carving, cruising, and freestyle. Cast with aluminum, the hanger measures 150mm long with a 128mm axle length. The 50° baseplate has a tight turning radius for sharp carves. With a flippable hanger to change the caster angle, the double tall conical bushings are stable and agile. The virgin aluminum grade 8 kingpin and axles provide strength.',
        width: 128, angle: 50, price: 5000),

    t16: Truck.create(name: 'Randal R-II 180mm 42 Degree Trucks', brand: BRANDS[:randal], hole_pattern: HOLES[:both],
        description: 'The Randal R-II 180mm 42 Degree trucks are designed for downhill, freestyle, carving, cruising, and freestyle. Cast with aluminum, the hanger measures 175mm long with a 244mm axle length. The 42° baseplate is stable at high speeds with a broad turing radius. With a flippable hanger to change the caster angle, the double tall conical bushings are stable and agile. The virgin aluminum grade 8 kingpin and axles provide strength.',
        width: 244, angle: 42, price: 5000),

    t17: Truck.create(name: 'Randal R-II 180mm 50 Degree Trucks', brand: BRANDS[:randal], hole_pattern: HOLES[:both],
        description: 'The Randal RII 180mm 50 Degree trucks are designed for carving, cruising, freestyle, and freeriding. Cast with aluminum, the hanger measures 175mm long with a 244mm axle length. The 50° baseplate has a tight turning radius for sharp turns. With a flippable hanger to change the caster angle, the double tall conical bushings are stable and agile. The virgin aluminum grade 8 kingpin and axles provide strength.',
        width: 244, angle: 50, price: 5000),

    t18: Truck.create(name: 'Randal R-III 180mm 50 Degree Trucks', brand: BRANDS[:randal], hole_pattern: HOLES[:both],
        description: 'The Randal R-III 180mm 50 Degree trucks are designed for carving, cruising, freestyle, and freeriding. Cast with aluminum, the hanger measures 175mm long with a 244mm axle length. The 50° baseplate has a tight turning radius for sharp carves. With a flippable hanger to change the caster angle, the double tall conical bushings are stable and agile. The virgin aluminum grade 8 kingpin and axles provide strength.',
        width: 244, angle: 50, price: 6000),

    t19: Truck.create(name: 'Slant 150mm 50 Degree Trucks', brand: BRANDS[:slant], hole_pattern: HOLES[:old],
        description: 'The Slant 150mm 50 Degree trucks are designed for carving, cruising, and freestyle. Cast with aluminum, the hanger measures 150mm long. The flippable hanger has a 4° rake, allowing both 50° and 54° options. The board side barrel bushing provides stability and the road side short cone provides maneuverability.',
        width: 177, angle: 50, price: 4500),

    t20: Truck.create(name: 'Tracker 150mm 50 Degree Fastrack Trucks', brand: BRANDS[:tracker], hole_pattern: HOLES[:both],
        description: 'The 150mm hangers are set at a 50 degree angle, and use a much larger then standard bushing. Having a larger diameter bushing creates a very smooth turn and positive center spring-back. The backside of the hanger has ample ribbing and plenty of rib surface, thus increasing strength dramatically.',
        width: 177, angle: 50, price: 4800),

    t21: Truck.create(name: 'Tracker 180mm 50 Degree Fastrack Trucks', brand: BRANDS[:tracker], hole_pattern: HOLES[:both],
        description: 'The Tracker 180mm 50 Degree Fastrack trucks are designed for carving, cruising, and freestyle. Cast with 356 T6 aircraft grade aluminum, the hanger measures 179mm long. The 251mm axle length is produced with 4140 Chromoly steel. The double wide short cone bushings are larger than standard bushings, providing high rebound. An additional seat allows standard bushings to be used. With a flippable hanger for carving or stability, the baseplate has internal webbing for strength.',
        width: 251, angle: 50, price: 5500),

    t22: Truck.create(name: 'Tracker 129mm RTX Racetrack Trucks', brand: BRANDS[:tracker], hole_pattern: HOLES[:old],
        description: 'The Tracker 129mm RTX Racetrack trucks is designed for slalom, carving, cruising, street, park, pool, and freestyle. The hanger and baseplate are cast with 356 T6 aircraft grade aluminum with 4140 Chromoly steel axles. The board side tall hour glass bushing provides stability and the road side short cone is offers maneuverability.',
        width: 196, angle: 50, price: 3900),

    t23: Truck.create(name: 'Tracker 161mm Raw Trucks', brand: BRANDS[:tracker], hole_pattern: HOLES[:new],
        description: 'The Tracker 161mm Raw trucks are designed for sidewalk surfing, cruising, carving, street, pool, park, and freestyle. The hanger and baseplate are cast with 356 T6 aircraft grade aluminum with 4140 Chromoly steel axles. The board side barrel bushing provides stability and the road side short cone is offers maneuverability.',
        width: 225, angle: 50, price: 4400),

    # t1: Truck.create(name: , brand: BRANDS[:(FILL), hole_pattern: HOLES.(FILL),
    #                   description: ,
    #                   width: , angle: , price: ),
}



# ---------------------------------------------------------------------------------------------------------
# WHEELS
# ---------------------------------------------------------------------------------------------------------

Wheel.destroy_all

LIP = {
    rounded: 'Rounded',
    squared: 'Squared'
}

HUB = {
    center: 'Centerset',
    off: 'Offset',
    side: 'Sideset',
    slight: 'Slight Offset'
}

w = {
    w1: Wheel.create(name: 'Arbor Sucrose Bogart 61mm 78a Wheels', brand: BRANDS[:arbor],
                     description: "The Arbor 61mm 78a Bogart wheels are designed for freeriding, carving, and cruising. The firm durometer maintains speed over smooth surfaces. The rounded lips and stoneground surface produce natural slides.",
                     lip_profile: LIP[:rounded], hub_placement: HUB[:slight], price: 3600, diameter: 61, durometer: 78, width: 45),

    w2: Wheel.create(name: 'Arbor Sucrose Vice 69mm 80a Wheels', brand: BRANDS[:arbor],
                     description: "The Arbor Vice 69mm 80a wheels are designed for freeriding. With rounded lips and stoneground surface for sliding, the firm durometer maintains a quick roll speed.",
                     lip_profile: LIP[:rounded], hub_placement: HUB[:off], price: 4600, diameter: 69, durometer: 80, width: 45),

    w3: Wheel.create(name: 'Santa Cruz Slime Balls 66mm 78a Wheels', brand: BRANDS[:santaCruz],
                     description: "The Santa Cruz Slime Balls 66mm 78a Wheels are designed for cruising. With rounded lips for grip, the soft durometer reduces shock over rough terrain.",
                     lip_profile: LIP[:rounded], hub_placement: HUB[:center], price: 3700, diameter: 66, durometer: 78, width: 47),

    w4: Wheel.create(name: 'Blank 70mm 78a Wheels', brand: BRANDS[:blank], description: "Description coming soon!",
                     lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 4000, diameter: 70, durometer: 78, width: 55),

    w5: Wheel.create(name: 'Kryptonics Star Trac 65mm 82a Pink Wheels', brand: BRANDS[:kryptonics],
                     description: "The Star Trac 65mm 82a wheels are designed for park, pool, cruising and carving. With sideset hubs for sliding, the firm durometer maintains speed over smooth surfaces.",
                     lip_profile: LIP[:squared], hub_placement: HUB[:side], price: 3200, diameter: 65, durometer: 82, width: 44),

    w6: Wheel.create(name: 'Kryptonics Star Trac 65mm 86a Green Wheels', brand: BRANDS[:kryptonics],
                     description: "The Kryptonics Star Trac 65mm 86a Green wheels are designed for park, pool, carving and cruising. With a sideset hub for sliding, the hard durometer maintains a quick roll speed over smooth terrain.",
                     lip_profile: LIP[:squared], hub_placement: HUB[:side], price: 3200, diameter: 65, durometer: 86, width: 44),

    w7: Wheel.create(name: 'Kryptonics Star Trac 75mm 86a Green Wheels', brand: BRANDS[:kryptonics],
                     description: "The Kryptonics Star Trac 75mm 86a Green wheels are designed for downhill, carving, cruising. With a firm durometer for speed over smooth terrain, the squared lips provide grip.",
                     lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 4000, diameter: 75, durometer: 78, width: 50),

    w8: Wheel.create(name: 'ABEC 11 Retro Skwertz 62mm 96a Wheels', brand: BRANDS[:abec11],
                     description: "The Abec 11 Noskoolz 65mm 96a wheels are designed for freeriding, park, and cruising. With a hard durometer to maintain a fast roll speed, the rounded lips are preferred for sliding.",
                     lip_profile: LIP[:rounded], hub_placement: HUB[:center], price: 2800, diameter: 62, durometer: 96, width: 39),

    w9: Wheel.create(name: 'ABEC 11 Noskoolz 65mm 96a Wheels', brand: BRANDS[:abec11],
                     description: "The Abec 11 Retro Skwertz 62mm 96a wheels are designed for park skating. With a compact size for agility, the hard durometer maintains a fast roll speed.",
                     lip_profile: LIP[:rounded], hub_placement: HUB[:center], price: 4000, diameter: 65, durometer: 96, width: 52),

    w10: Wheel.create(name: 'ABEC 11 Retro Erniez 65mm 81a Wheels', brand: BRANDS[:abec11],
                      description: "The Abec 11 Retro Erniez 65mm 81a wheels are designed for park skating and cruising. With a firm durometer to maintain speed, the compact size is maneuverable for tricks.",
                      lip_profile: LIP[:rounded], hub_placement: HUB[:side], price: 3900, diameter: 65, durometer: 81, width: 42),

    w11: Wheel.create(name: 'ABEC 11 ZigZags 66mm 83a Wheels', brand: BRANDS[:abec11],
                      description: "The Abec 11 ZigZags 66mm 83a wheels are designed for carving and cruising. With squared lips for grip, the firm durometer maintains speed over smooth terrain.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 3800, diameter: 66, durometer: 83, width: 51),

    w12: Wheel.create(name: 'ABEC 11 ZigZags 66mm 86a Wheels', brand: BRANDS[:abec11],
                      description: "The ZigZags 66mm 86a wheels are designed for carving and cruising. With a hard durometer to maintain speed over smooth terrain, the squared lips provide grip.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 4200, diameter: 66, durometer: 86, width: 51),

    w13: Wheel.create(name: 'ABEC 11 ZigZags 66mm 89a Wheels', brand: BRANDS[:abec11],
                      description: "The Abec 11 ZigZags 66mm 89a wheels are designed for carving and cruising. With squared lips for gip, the hard durometer maintains speed over smooth terrain.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 4500, diameter: 66, durometer: 89, width: 51),

    w14: Wheel.create(name: 'ABEC 11 Retro Freeride 72mm 80a Wheels', brand: BRANDS[:abec11],
                      description: "The Abec 11 Retro Freeride 72mm 80a wheels are designed for freeriding, downhill, and cruising. With rounded lips for sliding, the firm durometer make maintains a quick roll speed.",
                      lip_profile: LIP[:rounded], hub_placement: HUB[:off], price: 3700, diameter: 72, durometer: 80, width: 45),

    w15: Wheel.create(name: 'Blood Orange Alpine MPF 73mm 78a Wheels', brand: BRANDS[:bloodOrange],
                      description: "The Blood Orange Alpine MPF 73mm 78a wheels are designed for downhill and cruising. With squared lips for grip, the soft durometer reduces vibration.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 5000, diameter: 73, durometer: 78, width: 45),

    w16: Wheel.create(name: 'Blood Orange Alpine MPF 70mm 82a Wheels', brand: BRANDS[:bloodOrange],
                      description: "The Blood Orange Alpine MPF 73mm 82a wheels are designed for downhill and cruising. With squared lips for grip, the firm durometer maintains a quick roll speed.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 5000, diameter: 70, durometer: 82, width: 45),

    w17: Wheel.create(name: 'Bustin Five-O Royce Pro 64mm 80a Wheels', brand: BRANDS[:bustin],
                      description: "The Bustin Five-O Royce Pro 64mm 80a wheels are designed for freeriding and cruising. Known for leaving behind huge thane lines, the stoneground surface and rounded lips break into slides with ease. The hard durometer maintains a fast roll speed over smooth terrain.",
                      lip_profile: LIP[:rounded], hub_placement: HUB[:center], price: 3500, diameter: 64, durometer: 80, width: 42),

    w18: Wheel.create(name: 'Bustin Premier Formula 66mm 78a Wheels', brand: BRANDS[:bustin],
                      description: "The Bustin Premier Formula 66mm 78a wheels are designed for carving, and cruising. With squared lips for grip, the soft durometer absorbs shock from rough terrain.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 3800, diameter: 66, durometer: 78, width: 57),

    w19: Wheel.create(name: 'Cadillac Classic Two 70mm 80a Wheels', brand: BRANDS[:cadillac],
                      description: "The Cadillac Classic Two 70mm 80a wheels are designed for carving and cruising. With a firm durometer to maintain speed, the squared lips provide grip.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:slight], price: 4300, diameter: 70, durometer: 80, width: 50),

    w20: Wheel.create(name: 'Cadillac Crushers 69mm 78a Wheels', brand: BRANDS[:cadillac],
                      description: "The Cadillac Crushers 69mm 78a wheels are designed for carving and cruising. With square lips for grip, the firm durometer maintains a quick roll speed over smooth terrain.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:slight], price: 4800, diameter: 69, durometer: 78, width: 55),

    w21: Wheel.create(name: 'Cadillac White Walls 59mm 78a Wheels', brand: BRANDS[:cadillac],
                      description: "The Cadillac White Walls 59mm 78a wheels are designed for caving and cruising. With a square lip for grip, the soft durometer absorbs vibration over rough terrain.",
                      lip_profile: LIP[:squared], hub_placement: HUB[:off], price: 3200, diameter: 59, durometer: 78, width: 43),

    # w11: Wheel.create(name: '', brand: BRANDS[:FILL],
    #                   description: "",
    #                   lip_profile: LIP[:FILL], hub_placement: HUB[:FILL], price: , diameter: , durometer: , width: ),
}



# ---------------------------------------------------------------------------------------------------------
# BEARINGS
# ---------------------------------------------------------------------------------------------------------

Bearing.destroy_all

MATERIAL = {
    ceramic: "Ceramic",
    steel: "Stainless Steel"
}

RATING = {
    abec5: "ABEC 5",
    abec7: "ABEC 7",
    abec9: "ABEC 9",
    non: "Non-Rated"
}

b = {
    b1: Bearing.create(name: "Independent ABEC 5 8mm Bearings", brand: BRANDS[:independent], material: MATERIAL[:steel],
                        price: 1400, rating: RATING[:abec5],
                        description: "The Independent ABEC 5 8mm bearings have a dust proof outer shield and grit blocking cage to keep the stainless steel ball bearings clean. With an open back for easy maintenance, the stainless steel races provide durability."),

    b2: Bearing.create(name: "Rush ABEC 5 Titanium Coated 8mm Bearings", brand: BRANDS[:rush], material: MATERIAL[:steel],
                        price: 1200, rating: RATING[:abec5],
                        description: "The Rush ABEC 5 Titanium Coated 8mm bearings are titanium coated for strength and speed. With a nylon retainer to keep the ball bearings secure, the rubber shields provide easy maintenance. Includes bearing spacers to maintain quality and increase maximum roll speed."),

    b3: Bearing.create(name: "Sector 9 PDP ABEC 5 8mm Bearings", brand: BRANDS[:sector9], material: MATERIAL[:steel],
                        price: 1000, rating: RATING[:abec5],
                        description: "These brand new, professional grade ABEC 5 bearings by Sector 9 are pre-lubricated for a smooth, fast ride. They come in the standard size (608 with an 8mm core, 22mm outer diameter, and 7mm width) and provide the best for performance and durability. Each set of Sector 9 8mm PDP ABEC 5 Bearings contains eight (8) bearings, which is enough for four (4) wheels."),

    b4: Bearing.create(name: "System ABEC 5 8mm Bearings", brand: BRANDS[:system], material: MATERIAL[:steel],
                        price: 1000, rating: RATING[:abec5],
                        description: "The System ABEC 5 8mm bearings have stainless steel ball bearings. The removable shields provide easy maintenance."),

    b5: Bearing.create(name: "Sector 9 Cosmic ABEC 7 8mm Bearings", brand: BRANDS[:sector9], material: MATERIAL[:steel],
                        price: 2000, rating: RATING[:abec7],
                        description: "The Sector 9 Cosmic ABEC 7 8mm bearings have stainless steel ball bearings for speed and rubber coated steel shields for protection."),

    b6: Bearing.create(name: "Bronson Speed Co. G3 Next Generation Bearings", brand: BRANDS[:bronson], material: MATERIAL[:steel],
                        price: 3000, rating: RATING[:non],
                        description: "The Bronson Speed Co. Next Generation Bearings have 7 steel ball bearing with a steel casing. The deep groove raceways reduce impact damage and maintain speed. Non-contact rubber shields protect against grime, reduces oil leaks, and allows for easy cleaning. Microscopic groove raceways are self-smoothing for improved lubrication and spin. The max impact cage design is constructed with non-distorted glass filled nylon for strength and evenly spaced ball bearings. The ball cage sockets surfaces are engineered to hold oil for lubrication. Built with Bronson's \"Balls Out Technology\", the balls-out cage-in orientation reduces shield and cage contact for increased speed. A special blend high speed ceramic oil increases durability, reduces rust, and increases speed. Each set of Bronson bearings are hand inspected twice, micro polished, ultrasonic solvent washed 3 times prior to lubrication, and packaged in nitrogen filled shrink wrap to reduce oxidation during shipping."),

    b7: Bearing.create(name: "Goldcoast Rolleroid Bearings", brand: BRANDS[:goldcoast], material: MATERIAL[:steel],
                        price: 2000, rating: RATING[:non],
                        description: "The GoldCoast Rolleroid Bearings are produced with 7 stainless steel ball bearings. The chemically developed process lubricates the ball bearings for increased speed. Removable shields provide easy maintenance."),

    b8: Bearing.create(name: "Independent Black 8mm Bearings", brand: BRANDS[:independent], material: MATERIAL[:steel],
                        price: 2500, rating: RATING[:non],
                        description: "The Independent Black 8mm bearings have stainless steel ball bearings with double sided rubber shields for protection. They come pre-oiled and greased for immediate use."),

    b9: Bearing.create(name: "Rush Downhill Bombers Titanium Coated Bearings", brand: BRANDS[:rush], material: MATERIAL[:steel],
                        price: 1000, rating: RATING[:non],
                        description: "The Rush Downhill Speed Bomber Ceramic Hybrid have 7 stainless steel waterproof ball bearings with a nylon retainer and steel casing, the rubber shields provide easy maintenance."),

    b10: Bearing.create(name: "Atlas Blackout Built-In Bearings", brand: BRANDS[:atlas], material: MATERIAL[:steel],
                        price: 1600, rating: RATING[:non],
                        description: "The Atlas Blackout Built-In 8mm Bearings have built in bearing spacers for continuous alignment. These come pre-lubricated for continuous use."),

    b11: Bearing.create(name: "Bustin 6-Ball Bearings w/ Built-In Spacers", brand: BRANDS[:bustin], material: MATERIAL[:steel],
                        price: 4995, rating: RATING[:non],
                        description: "Bustin 6-Balls are for the racer or the long distance pusher. Larger radius ball bearings mean a higher roll speed and momentum. They come pre-lubricated with Skate Designed grease - developed in the lab to keep dirt out
                                      Removable inner and outer Shields - cleans easy, stays that way. Stockage Shields - specifically designed to keep more grit out. High-grade P5 Stainless Steel - only the best materials make the best bearings. Full-Pipe Races - extended inner races meet in the middle of the wheel to perfect wheel alignment"),

    b12: Bearing.create(name: "Bones Reds Race Bearings w/ Built-In Spacers", brand: BRANDS[:bones], material: MATERIAL[:steel],
                        price: 2795, rating: RATING[:non],
                        description: "Bones Reds have been the staple in bearings for many years now. They're fast, durable, and more importantly, won't break the bank. Bones decided to step it up for the downhill scene and took the ever popular Bones Reds and added extended inner races. Less parts for a faster setup. Spend less time changing wheels, and more time skating. Never worry about speed rings or bearing spacers ever again!"),

    b13: Bearing.create(name: "Bronson \"G3\" Next Generation Bearings", brand: BRANDS[:bronson], material: MATERIAL[:steel],
                        price: 2995, rating: RATING[:non],
                        description: "•	Deep Groove Raceways- balls roll deep in raceway channels - reduces side impact damage & breakage
                        •	Straight Edge Frictionless Shields- pop off resistant - holds oil in, dirt and moisture out- easy to clean
                        •	Micro Groove Raceway Surfaces- linear micro-groove surfaces improve bearing lubrication, speed and spin
                        •	Max Impact Cage Design- non- distortion custom cage keeps the balls precision spaced & oil circulating
                        •	Balls Out Technology- eliminates shield and cage contact on impact for a go fast, stay fast bearing
                        •	High Speed Ceramic Oil- nano-ceramic compounds for wear protection - moisture, rust, corrosion resistant
                        •	Factory Fresh Quality- nitrogen filled shrink wrap, reduces metal & oil oxidation until ready to be ridden"),

    b14: Bearing.create(name: "Atlas Blackout Bearings w/ Built-In Spacers", brand: BRANDS[:atlas], material: MATERIAL[:steel],
                        price: 1595, rating: RATING[:non],
                        description: "Atlas has just released the Blackout Built-In Bearings, and we must say they're quite unique due to the flared bearing spacer. The spacers extend slightly on the outside of the bearing so that you do not need speed rings either. There is an extremely tight feel between the bearings and the wheel. The energy between turns is absorbed by the wheel and not the bearing itself reducing impact and side load. Ultimately, you will have a bearing that will endure the demands of a downhill racer or any skateboard discipline."),

    b15: Bearing.create(name: "Zealous Ceramic Bearings w/ Built-In Spacers", brand: BRANDS[:zealous], material: MATERIAL[:ceramic],
                        price: 2795, rating: RATING[:non],
                        description: "Zealous Bearings have been some of the most popular bearing in the last few years. High quality bearings with built-in spacers and double rubber seals; what more could you ask for? Well, what about ceramics? Zealous now offers ceramic bearings for your speed and racing needs! Lighter, stronger, and smoother than metal ball bearings, they're are also very corrosive resistant. We love zealous bearings because they are high quality bearing that won't break the bank, and will keep you riding longer and faster. Throw on a set of Zealous Ceramic bearings on your setup and you'll see what we're talking about!"),

    b16: Bearing.create(name: "Oust Moc-5 Street Bearings", brand: BRANDS[:oust], material: MATERIAL[:steel],
                        price: 2895, rating: RATING[:non],
                        description: "The Oust Moc-5 Street bearings are designed for speed and durability, these bearings were developed and tested for the rigors of performance skateboarding. Also Oust add an amazing feature to the Moc-5 Street bearings. A small oil hole ( Pat.Pend ) in each shield was put in so the bearing could be cleaned and oiled. Tolerances were changed to accommodate the new environment and the Oust MOC 5 Street was complete. It's the fastest and toughest bearing in the industry for street. This is why we are stoked on Oust, because they know whats up when it comes to performance!!"),

    b17: Bearing.create(name: "Oust Moc-5 Tech Bearings", brand: BRANDS[:oust], material: MATERIAL[:steel],
                        price: 2895, rating: RATING[:non],
                        description: "The Oust Moc-5 Tech bearings are designed for speed and durability, these bearings were developed and tested for the rigors of performance skateboarding. Also Oust add an amazing feature to the Moc-5 Tech bearings have a high strength carbon steel ball cage. This cage would ensure ball placement in the harshest environments and extend bearing life for thousands of skating hours. Also the MOC-5 Tech bearing are designed with the same high precision specification as the MOC 7 Speed. This is why we are stoked on Oust, because they know whats up when it comes to performance!!"),

    b18: Bearing.create(name: "Oust Moc-7 Speed Bearings", brand: BRANDS[:oust], material: MATERIAL[:steel],
                        price: 3995, rating: RATING[:non],
                        description: "The Oust Moc-7 Speed bearings are specifically designed for going as fast as you possibly can. Also Oust add an amazing feature to the Moc-7 Speed bearings. Interior step ring to maintain constant lubrication. Super finish for extra smooth precision."),

    b19: Bearing.create(name: "Bear Ceramic Space Balls Bearings w/ Built-In Spacers", brand: BRANDS[:bear], material: MATERIAL[:ceramic],
                        price: 4895, rating: RATING[:abec7],
                        description: "These bearings are out of this world! The Bear Space Ball skateboard bearings feature built in spacers and speed rings in order to keep the number of parts on your skateboard to a minimum. That's 12 fewer parts to keep track of! The bearings also feature ceramic ball bearings to keep your bearings from overheating so they can roll faster and longer, as well as labyrinth seals that keep the dirt out of your bearings so they last noticeably longer. Fewer parts = fewer problems, good seals = long lasting bearings"),

    b20: Bearing.create(name: "Holesom California Bearings", brand: BRANDS[:holesom], material: MATERIAL[:steel],
                        price: 1395, rating: RATING[:abec7],
                        description: "Holesom's California longboard skateboard bearings are Abec 7 Rated and each bearing has a bearing spacer built right into them. The spacers extend slightly on the outside of the bearing so that you do not need speed rings either. There is an extremely tight feel between the bearings and the wheel. The energy between turns is absorbed by the wheel and not the bearing itself reducing impact and side load. Ultimately, you will have a bearing that will endure the demands of a downhill racer or any skateboard discipline."),

    b21: Bearing.create(name: "Arbor Componentry Stainless Steel Bearings", brand: BRANDS[:arbor], material: MATERIAL[:steel],
                        price: 2995, rating: RATING[:abec7],
                        description: "The Arbor Componentry Stainless Steel Abec 7 bearings were designed to help you win! These bearings come with dual-sided rubber shields protecting the bearings from dirt and other debris. We've given them the Muir field test and can confirm these are some sick bearings for what you're paying! One pack comes complete with everything you need to get your wheels spinning smoothly: 8 bearings, 4 8x10mm bearing spacers. Complete your Arbor wheels with a new set of these luscious bearings!"),

    b22: Bearing.create(name: "Holesom Holy Roller Built-in Bearings", brand: BRANDS[:holesom], material: MATERIAL[:steel],
                        price: 1595, rating: RATING[:abec9],
                        description: "Holesom's Holy Roller precision longboard skateboard bearings were definitely brought to us by a high power. They are Abec 9 Rated and each bearing has a bearing spacer built right into them. The spacers extend slightly on the outside of the bearing so that you do not need speed rings either. There is an extremely tight feel between the bearings and the wheel. The energy between turns is absorbed by the wheel and not the bearing itself reducing impact and side load. Ultimately, you will have a bearing that will endure the demands of a downhill racer or any skateboard discipline."),

    b23: Bearing.create(name: "Independent Sevens Bearings", brand: BRANDS[:independent], material: MATERIAL[:steel],
                        price: 1795, rating: RATING[:non],
                        description: "Independent knows what's up when it comes to skate gear, and their Sevens bearings are no exception. Extremely fast bearings with stainless steel races and balls mean you don't have to worry about rust or corrosion, and with a dirt blocking cage and shields, you won't have to worry about maintaining them every week. All this with an amazing price point, you literally can't go wrong."),

    b24: Bearing.create(name: "Bear Space Balls Bearings", brand: BRANDS[:bear], material: MATERIAL[:steel],
                        price: 2495, rating: RATING[:abec7],
                        description: "These bearings are out of this world! The Bear Space Ball skateboard bearings feature built in spacers and speed rings in order to keep the number of parts on your skateboard to a minimum. That's 12 fewer parts to keep track of! The bearings also feature labyrinth seals that keep the dirt out of your bearings so they last longer. Fewer parts means fewer problems and good seals lead to long lasting bearings"),

    b25: Bearing.create(name: "Sector 9 Push Don't Pollute Bearings", brand: BRANDS[:sector9], material: MATERIAL[:steel],
                        price: 1195, rating: RATING[:abec5],
                        description: "These Sector 9 skateboard PDP Bearings are designed for all types of wheels! They come with two shields per bearing, thus allowing them to stay that much cleaner. These currently feature a nice gray shield. Not much else is to be said about bearings. Just shred them and keep them out of water! Make sure to throw a set of Khiro Bearing Spacers in order to get maximum life out of your longboard bearings!"),

    b26: Bearing.create(name: "Blood Orange ABEC 7 Bearings", brand: BRANDS[:bloodOrange], material: MATERIAL[:steel],
                        price: 1995, rating: RATING[:abec7],
                        description: "Blood Orange have bolstered their already-extensive line of products with these new ABEC 7 steel bearings. We've given them the Muir field test and can confirm these are some sick bearings for what you're paying! One pack comes complete with everything you need to get your wheels spinning smoothly: 8 bearings, 4 8x10mm beaing spacers, and 8 speed rings. Complete your set of Caliber trucks with a new set of these luscious bearings!"),

    # b11: Bearing.create(name: "", brand: BRANDS[:FILL], material: MATERIAL[:FILL],
    #                     price: , rating: RATING[:FILL],
    #                     description: ""),
}


# ---------------------------------------------------------------------------------------------------------
# PICTURES
# ---------------------------------------------------------------------------------------------------------

Picture.destroy_all

deckPics = {
    p1: Picture.create(picturable: d[:d1], image: File.open('app/assets/images/decks/d1.jpg')),
    p1_2: Picture.create(picturable: d[:d1], image: File.open('app/assets/images/decks/d1-2.jpg')),
    p2: Picture.create(picturable: d[:d2], image: File.open('app/assets/images/decks/d2.jpg')),
    p2_2: Picture.create(picturable: d[:d2], image: File.open('app/assets/images/decks/d2-2.jpg')),
    p3: Picture.create(picturable: d[:d3], image: File.open('app/assets/images/decks/d3.jpg')),
    p3_2: Picture.create(picturable: d[:d3], image: File.open('app/assets/images/decks/d3-2.jpg')),
    p4: Picture.create(picturable: d[:d4], image: File.open('app/assets/images/decks/d4.jpg')),
    p4_2: Picture.create(picturable: d[:d4], image: File.open('app/assets/images/decks/d4-2.jpg')),
    p5: Picture.create(picturable: d[:d5], image: File.open('app/assets/images/decks/d5.jpg')),
    p5_2: Picture.create(picturable: d[:d5], image: File.open('app/assets/images/decks/d5-2.jpg')),
    p6: Picture.create(picturable: d[:d6], image: File.open('app/assets/images/decks/d6.jpg')),
    p6_2: Picture.create(picturable: d[:d6], image: File.open('app/assets/images/decks/d6-2.jpg')),
    p7: Picture.create(picturable: d[:d7], image: File.open('app/assets/images/decks/d7.jpg')),
    p7_2: Picture.create(picturable: d[:d7], image: File.open('app/assets/images/decks/d7-2.jpg')),
    p8: Picture.create(picturable: d[:d8], image: File.open('app/assets/images/decks/d8.jpg')),
    p8_2: Picture.create(picturable: d[:d8], image: File.open('app/assets/images/decks/d8-2.jpg')),
    p9: Picture.create(picturable: d[:d9], image: File.open('app/assets/images/decks/d9.jpg')),
    p9_2: Picture.create(picturable: d[:d9], image: File.open('app/assets/images/decks/d9-2.jpg')),
    p10: Picture.create(picturable: d[:d10], image: File.open('app/assets/images/decks/d10.jpg')),
    p10_2: Picture.create(picturable: d[:d10], image: File.open('app/assets/images/decks/d10-2.jpg')),
    p11: Picture.create(picturable: d[:d11], image: File.open('app/assets/images/decks/d11.jpg')),
    p11_2: Picture.create(picturable: d[:d11], image: File.open('app/assets/images/decks/d11-2.jpg')),
    p12: Picture.create(picturable: d[:d12], image: File.open('app/assets/images/decks/d12.jpg')),
    p12_2: Picture.create(picturable: d[:d12], image: File.open('app/assets/images/decks/d12-2.jpg')),
    p13: Picture.create(picturable: d[:d13], image: File.open('app/assets/images/decks/d13.jpg')),
    p13_2: Picture.create(picturable: d[:d13], image: File.open('app/assets/images/decks/d13-2.jpg')),
    p14: Picture.create(picturable: d[:d14], image: File.open('app/assets/images/decks/d14.jpg')),
    p14_2: Picture.create(picturable: d[:d14], image: File.open('app/assets/images/decks/d14-2.jpg')),
    p15: Picture.create(picturable: d[:d15], image: File.open('app/assets/images/decks/d15.jpg')),
    p15_2: Picture.create(picturable: d[:d15], image: File.open('app/assets/images/decks/d15-2.jpg')),
    p16: Picture.create(picturable: d[:d16], image: File.open('app/assets/images/decks/d16.jpg')),
    p16_2: Picture.create(picturable: d[:d16], image: File.open('app/assets/images/decks/d16-2.jpg')),
    p17: Picture.create(picturable: d[:d17], image: File.open('app/assets/images/decks/d17.jpg')),
    p17_2: Picture.create(picturable: d[:d17], image: File.open('app/assets/images/decks/d17-2.jpg')),
    p18: Picture.create(picturable: d[:d18], image: File.open('app/assets/images/decks/d18.jpg')),
    p18_2: Picture.create(picturable: d[:d18], image: File.open('app/assets/images/decks/d18-2.jpg')),
    p19: Picture.create(picturable: d[:d19], image: File.open('app/assets/images/decks/d19.jpg')),
    p19_2: Picture.create(picturable: d[:d19], image: File.open('app/assets/images/decks/d19-2.jpg')),
    p20: Picture.create(picturable: d[:d20], image: File.open('app/assets/images/decks/d20.jpg')),
    p20_2: Picture.create(picturable: d[:d20], image: File.open('app/assets/images/decks/d20-2.jpg')),
    p21: Picture.create(picturable: d[:d21], image: File.open('app/assets/images/decks/d21.jpg')),
    p21_2: Picture.create(picturable: d[:d21], image: File.open('app/assets/images/decks/d21-2.jpg')),
    p22: Picture.create(picturable: d[:d22], image: File.open('app/assets/images/decks/d22.jpg')),
    p22_2: Picture.create(picturable: d[:d22], image: File.open('app/assets/images/decks/d22-2.jpg')),
}

truckPics = {
    p1: Picture.create(picturable: t[:t1], image: File.open('app/assets/images/trucks/t1.jpg')),
    p1_2: Picture.create(picturable: t[:t1], image: File.open('app/assets/images/trucks/t1-2.jpg')),
    p2: Picture.create(picturable: t[:t2], image: File.open('app/assets/images/trucks/t2.jpg')),
    p2_2: Picture.create(picturable: t[:t2], image: File.open('app/assets/images/trucks/t2-2.jpg')),
    p2_3: Picture.create(picturable: t[:t2], image: File.open('app/assets/images/trucks/t2-3.jpg')),
    p2_4: Picture.create(picturable: t[:t2], image: File.open('app/assets/images/trucks/t2-4.jpg')),
    p3: Picture.create(picturable: t[:t3], image: File.open('app/assets/images/trucks/t3.jpg')),
    p3_2: Picture.create(picturable: t[:t3], image: File.open('app/assets/images/trucks/t3-2.jpg')),
    p4: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4.jpg')),
    p4_2: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-2.jpg')),
    p4_3: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-3.jpg')),
    p4_4: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-4.jpg')),
    p4_5: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-5.jpg')),
    p4_6: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-6.jpg')),
    p4_7: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-7.jpg')),
    p4_8: Picture.create(picturable: t[:t4], image: File.open('app/assets/images/trucks/t4-8.jpg')),
    p5: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5.jpg')),
    p5_2: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-2.jpg')),
    p5_3: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-3.jpg')),
    p5_4: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-4.jpg')),
    p5_5: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-5.jpg')),
    p5_6: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-6.jpg')),
    p5_7: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-7.jpg')),
    p5_8: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-8.jpg')),
    p5_9: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-9.jpg')),
    p5_10: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-10.jpg')),
    p5_11: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-11.jpg')),
    p5_12: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-12.jpg')),
    p5_13: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-13.jpg')),
    p5_14: Picture.create(picturable: t[:t5], image: File.open('app/assets/images/trucks/t5-14.jpg')),
    p6: Picture.create(picturable: t[:t6], image: File.open('app/assets/images/trucks/t6.jpg')),
    p6_2: Picture.create(picturable: t[:t6], image: File.open('app/assets/images/trucks/t6-2.jpg')),
    p6_3: Picture.create(picturable: t[:t6], image: File.open('app/assets/images/trucks/t6-3.jpg')),
    p6_4: Picture.create(picturable: t[:t6], image: File.open('app/assets/images/trucks/t6-4.jpg')),
    p7: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7.jpg')),
    p7_2: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7-2.jpg')),
    p7_3: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7-3.jpg')),
    p7_4: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7-4.jpg')),
    p7_5: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7-5.jpg')),
    p7_6: Picture.create(picturable: t[:t7], image: File.open('app/assets/images/trucks/t7-6.jpg')),
    p8: Picture.create(picturable: t[:t8], image: File.open('app/assets/images/trucks/t8.jpg')),
    p8_2: Picture.create(picturable: t[:t8], image: File.open('app/assets/images/trucks/t8-2.jpg')),
    p8_3: Picture.create(picturable: t[:t8], image: File.open('app/assets/images/trucks/t8-3.jpg')),
    p8_4: Picture.create(picturable: t[:t8], image: File.open('app/assets/images/trucks/t8-4.jpg')),
    p9: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9.jpg')),
    p9_2: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9-2.jpg')),
    p9_3: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9-3.jpg')),
    p9_4: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9-4.jpg')),
    p9_5: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9-5.jpg')),
    p9_6: Picture.create(picturable: t[:t9], image: File.open('app/assets/images/trucks/t9-6.jpg')),
    p10: Picture.create(picturable: t[:t10], image: File.open('app/assets/images/trucks/t10.jpg')),
    p10_2: Picture.create(picturable: t[:t10], image: File.open('app/assets/images/trucks/t10-2.jpg')),
    p10_3: Picture.create(picturable: t[:t10], image: File.open('app/assets/images/trucks/t10-3.jpg')),
    p10_4: Picture.create(picturable: t[:t10], image: File.open('app/assets/images/trucks/t10-4.jpg')),
    p11: Picture.create(picturable: t[:t11], image: File.open('app/assets/images/trucks/t11.jpg')),
    p11_2: Picture.create(picturable: t[:t11], image: File.open('app/assets/images/trucks/t11-2.jpg')),
    p12: Picture.create(picturable: t[:t12], image: File.open('app/assets/images/trucks/t12.jpg')),
    p12_2: Picture.create(picturable: t[:t12], image: File.open('app/assets/images/trucks/t12-2.jpg')),
    p13: Picture.create(picturable: t[:t13], image: File.open('app/assets/images/trucks/t13.jpg')),
    p13_2: Picture.create(picturable: t[:t13], image: File.open('app/assets/images/trucks/t13-2.jpg')),
    p14: Picture.create(picturable: t[:t14], image: File.open('app/assets/images/trucks/t14.jpg')),
    p14_2: Picture.create(picturable: t[:t14], image: File.open('app/assets/images/trucks/t14-2.jpg')),
    p15: Picture.create(picturable: t[:t15], image: File.open('app/assets/images/trucks/t15.jpg')),
    p15_2: Picture.create(picturable: t[:t15], image: File.open('app/assets/images/trucks/t15-2.jpg')),
    p16: Picture.create(picturable: t[:t16], image: File.open('app/assets/images/trucks/t16.jpg')),
    p16_2: Picture.create(picturable: t[:t16], image: File.open('app/assets/images/trucks/t16-2.jpg')),
    p16_3: Picture.create(picturable: t[:t16], image: File.open('app/assets/images/trucks/t16-3.jpg')),
    p16_4: Picture.create(picturable: t[:t16], image: File.open('app/assets/images/trucks/t16-4.jpg')),
    p17: Picture.create(picturable: t[:t17], image: File.open('app/assets/images/trucks/t17.jpg')),
    p17_2: Picture.create(picturable: t[:t17], image: File.open('app/assets/images/trucks/t17-2.jpg')),
    p18: Picture.create(picturable: t[:t18], image: File.open('app/assets/images/trucks/t18.jpg')),
    p18_2: Picture.create(picturable: t[:t18], image: File.open('app/assets/images/trucks/t18-2.jpg')),
    p19: Picture.create(picturable: t[:t19], image: File.open('app/assets/images/trucks/t19.jpg')),
    p19_2: Picture.create(picturable: t[:t19], image: File.open('app/assets/images/trucks/t19-2.jpg')),
    p20: Picture.create(picturable: t[:t20], image: File.open('app/assets/images/trucks/t20.jpg')),
    p20_2: Picture.create(picturable: t[:t20], image: File.open('app/assets/images/trucks/t20-2.jpg')),
    p21: Picture.create(picturable: t[:t21], image: File.open('app/assets/images/trucks/t21.jpg')),
    p21_2: Picture.create(picturable: t[:t21], image: File.open('app/assets/images/trucks/t21-2.jpg')),
    p22: Picture.create(picturable: t[:t22], image: File.open('app/assets/images/trucks/t22.jpg')),
    p22_2: Picture.create(picturable: t[:t22], image: File.open('app/assets/images/trucks/t22-2.jpg')),
    p23: Picture.create(picturable: t[:t23], image: File.open('app/assets/images/trucks/t23.jpg')),
    p23_2: Picture.create(picturable: t[:t23], image: File.open('app/assets/images/trucks/t23-2.jpg')),
    p23_3: Picture.create(picturable: t[:t23], image: File.open('app/assets/images/trucks/t23-3.jpg')),
    p23_4: Picture.create(picturable: t[:t23], image: File.open('app/assets/images/trucks/t23-4.jpg')),
}

wheelPics = {
    p1: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1.jpg')),
    p1_2: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1-2.jpg')),
    p1_3: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1-3.jpg')),
    p1_4: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1-4.jpg')),
    p1_5: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1-5.jpg')),
    p1_6: Picture.create(picturable: w[:w1], image: File.open('app/assets/images/wheels/w1-6.jpg')),
    p2: Picture.create(picturable: w[:w2], image: File.open('app/assets/images/wheels/w2.jpg')),
    p2_2: Picture.create(picturable: w[:w2], image: File.open('app/assets/images/wheels/w2-2.jpg')),
    p2_3: Picture.create(picturable: w[:w2], image: File.open('app/assets/images/wheels/w2-3.jpg')),
    p2_4: Picture.create(picturable: w[:w2], image: File.open('app/assets/images/wheels/w2-4.jpg')),
    p3: Picture.create(picturable: w[:w3], image: File.open('app/assets/images/wheels/w3.jpg')),
    p3_2: Picture.create(picturable: w[:w3], image: File.open('app/assets/images/wheels/w3-2.jpg')),
    p3_3: Picture.create(picturable: w[:w3], image: File.open('app/assets/images/wheels/w3-3.jpg')),
    p3_4: Picture.create(picturable: w[:w3], image: File.open('app/assets/images/wheels/w3-4.jpg')),
    p4: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4.jpg')),
    p4_2: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4-2.jpg')),
    p4_3: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4-3.jpg')),
    p4_4: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4-4.jpg')),
    p4_5: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4-5.jpg')),
    p4_6: Picture.create(picturable: w[:w4], image: File.open('app/assets/images/wheels/w4-6.jpg')),
    p5: Picture.create(picturable: w[:w5], image: File.open('app/assets/images/wheels/w5.jpg')),
    p5_2: Picture.create(picturable: w[:w5], image: File.open('app/assets/images/wheels/w5-2.jpg')),
    p6: Picture.create(picturable: w[:w6], image: File.open('app/assets/images/wheels/w6.jpg')),
    p6_2: Picture.create(picturable: w[:w6], image: File.open('app/assets/images/wheels/w6-2.jpg')),
    p7: Picture.create(picturable: w[:w7], image: File.open('app/assets/images/wheels/w7.jpg')),
    p7_2: Picture.create(picturable: w[:w7], image: File.open('app/assets/images/wheels/w7-2.jpg')),
    p8: Picture.create(picturable: w[:w8], image: File.open('app/assets/images/wheels/w8.jpg')),
    p8_2: Picture.create(picturable: w[:w8], image: File.open('app/assets/images/wheels/w8-2.jpg')),
    p9: Picture.create(picturable: w[:w9], image: File.open('app/assets/images/wheels/w9.jpg')),
    p10: Picture.create(picturable: w[:w10], image: File.open('app/assets/images/wheels/w10.jpg')),
    p10_2: Picture.create(picturable: w[:w10], image: File.open('app/assets/images/wheels/w10-2.jpg')),
    p11: Picture.create(picturable: w[:w11], image: File.open('app/assets/images/wheels/w11.jpg')),
    p11_2: Picture.create(picturable: w[:w11], image: File.open('app/assets/images/wheels/w11-2.jpg')),
    p12: Picture.create(picturable: w[:w12], image: File.open('app/assets/images/wheels/w12.jpg')),
    p12_2: Picture.create(picturable: w[:w12], image: File.open('app/assets/images/wheels/w12-2.jpg')),
    p13: Picture.create(picturable: w[:w13], image: File.open('app/assets/images/wheels/w13.jpg')),
    p13_2: Picture.create(picturable: w[:w13], image: File.open('app/assets/images/wheels/w13-2.jpg')),
    p14: Picture.create(picturable: w[:w14], image: File.open('app/assets/images/wheels/w14.jpg')),
    p14_2: Picture.create(picturable: w[:w14], image: File.open('app/assets/images/wheels/w14-2.jpg')),
    p15: Picture.create(picturable: w[:w15], image: File.open('app/assets/images/wheels/w15.jpg')),
    p15_2: Picture.create(picturable: w[:w15], image: File.open('app/assets/images/wheels/w15-2.jpg')),
    p16: Picture.create(picturable: w[:w16], image: File.open('app/assets/images/wheels/w16.jpg')),
    p16_2: Picture.create(picturable: w[:w16], image: File.open('app/assets/images/wheels/w16-2.jpg')),
    p17: Picture.create(picturable: w[:w17], image: File.open('app/assets/images/wheels/w17.jpg')),
    p17_2: Picture.create(picturable: w[:w17], image: File.open('app/assets/images/wheels/w17-2.jpg')),
    p18: Picture.create(picturable: w[:w18], image: File.open('app/assets/images/wheels/w18.jpg')),
    p18_2: Picture.create(picturable: w[:w18], image: File.open('app/assets/images/wheels/w18-2.jpg')),
    p19: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19.jpg')),
    p19_2: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-2.jpg')),
    p19_3: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-3.jpg')),
    p19_4: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-4.jpg')),
    p19_5: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-5.jpg')),
    p19_6: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-6.jpg')),
    p19_7: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-7.jpg')),
    p19_8: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-8.jpg')),
    p19_9: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-9.jpg')),
    p19_10: Picture.create(picturable: w[:w19], image: File.open('app/assets/images/wheels/w19-10.jpg')),
    p20: Picture.create(picturable: w[:w20], image: File.open('app/assets/images/wheels/w20.jpg')),
    p20_2: Picture.create(picturable: w[:w20], image: File.open('app/assets/images/wheels/w20-2.jpg')),
    p21: Picture.create(picturable: w[:w21], image: File.open('app/assets/images/wheels/w21.jpg')),
    p21_2: Picture.create(picturable: w[:w21], image: File.open('app/assets/images/wheels/w21-2.jpg')),
}

bearingPics = {
    p1: Picture.create(picturable: b[:b1], image: File.open('app/assets/images/bearings/b1.jpg')),
    p2: Picture.create(picturable: b[:b2], image: File.open('app/assets/images/bearings/b2.jpg')),
    p2_2: Picture.create(picturable: b[:b2], image: File.open('app/assets/images/bearings/b2-2.jpg')),
    p3: Picture.create(picturable: b[:b3], image: File.open('app/assets/images/bearings/b3.jpg')),
    p3_2: Picture.create(picturable: b[:b3], image: File.open('app/assets/images/bearings/b3-2.jpg')),
    p4: Picture.create(picturable: b[:b4], image: File.open('app/assets/images/bearings/b4.jpg')),
    p5: Picture.create(picturable: b[:b5], image: File.open('app/assets/images/bearings/b5.jpg')),
    p6: Picture.create(picturable: b[:b6], image: File.open('app/assets/images/bearings/b6.jpg')),
    p6_2: Picture.create(picturable: b[:b6], image: File.open('app/assets/images/bearings/b6-2.jpg')),
    p6_3: Picture.create(picturable: b[:b6], image: File.open('app/assets/images/bearings/b6-3.jpg')),
    p6_4: Picture.create(picturable: b[:b6], image: File.open('app/assets/images/bearings/b6-4.jpg')),
    p7: Picture.create(picturable: b[:b7], image: File.open('app/assets/images/bearings/b7.jpg')),
    p7_2: Picture.create(picturable: b[:b7], image: File.open('app/assets/images/bearings/b7-2.jpg')),
    p8: Picture.create(picturable: b[:b8], image: File.open('app/assets/images/bearings/b8.jpg')),
    p9: Picture.create(picturable: b[:b9], image: File.open('app/assets/images/bearings/b9.jpg')),
    p9_2: Picture.create(picturable: b[:b9], image: File.open('app/assets/images/bearings/b9-2.jpg')),
    p10: Picture.create(picturable: b[:b10], image: File.open('app/assets/images/bearings/b10.jpg')),
    p10_2: Picture.create(picturable: b[:b10], image: File.open('app/assets/images/bearings/b10-2.jpg')),
    p11: Picture.create(picturable: b[:b11], image: File.open('app/assets/images/bearings/b11.jpg')),
    p12: Picture.create(picturable: b[:b12], image: File.open('app/assets/images/bearings/b12.jpg')),
    p13: Picture.create(picturable: b[:b13], image: File.open('app/assets/images/bearings/b13.jpg')),
    p14: Picture.create(picturable: b[:b14], image: File.open('app/assets/images/bearings/b14.jpg')),
    p14_2: Picture.create(picturable: b[:b14], image: File.open('app/assets/images/bearings/b14-2.jpg')),
    p15: Picture.create(picturable: b[:b15], image: File.open('app/assets/images/bearings/b15.jpg')),
    p16: Picture.create(picturable: b[:b16], image: File.open('app/assets/images/bearings/b16.jpg')),
    p17: Picture.create(picturable: b[:b17], image: File.open('app/assets/images/bearings/b17.jpg')),
    p18: Picture.create(picturable: b[:b18], image: File.open('app/assets/images/bearings/b18.jpg')),
    p19: Picture.create(picturable: b[:b19], image: File.open('app/assets/images/bearings/b19.jpg')),
    p20: Picture.create(picturable: b[:b20], image: File.open('app/assets/images/bearings/b20.jpg')),
    p21: Picture.create(picturable: b[:b21], image: File.open('app/assets/images/bearings/b21.jpg')),
    p22: Picture.create(picturable: b[:b22], image: File.open('app/assets/images/bearings/b22.jpg')),
    p23: Picture.create(picturable: b[:b23], image: File.open('app/assets/images/bearings/b23.jpg')),
    p24: Picture.create(picturable: b[:b24], image: File.open('app/assets/images/bearings/b24.jpg')),
    p25: Picture.create(picturable: b[:b25], image: File.open('app/assets/images/bearings/b25.jpg')),
    p26: Picture.create(picturable: b[:b26], image: File.open('app/assets/images/bearings/b26.jpg')),
}


profilePic = Picture.create(picturable: guest, image: File.open('app/assets/images/user.png'))
cartPic = Picture.create(picturable_type: "Cart", image: File.open('app/assets/images/cart.png'))
