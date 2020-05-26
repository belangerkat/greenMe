# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Challenge.destroy_all
Difficulty.destroy_all
Duration.destroy_all

diff1 = Difficulty.create(rank: "Easy", points: 15)
diff2 = Difficulty.create(rank: "Intermediate", points: 30)
diff3 = Difficulty.create(rank: "Hard", points: 60)

dur1 = Duration.create(length: "One Day", points: 10)
dur2 = Duration.create(length: "One Week", points: 20)
dur3 = Duration.create(length: "One Month", points: 40)
dur4 = Duration.create(length: "One Year", points: 80)
dur5 = Duration.create(length: "One Time Fix", points: 30)

Challenge.create(definition: "Turn lights off when you leave a room", difficulty: diff1, duration: dur3)
Challenge.create(definition: "Turn lights off when you leave a room", difficulty: diff2, duration: dur4)
Challenge.create(definition: "Take a shower in less than 10 minutes", difficulty: diff1, duration: dur1)
Challenge.create(definition: "Take a shower in less than 10 minutes", difficulty: diff1, duration: dur2)
Challenge.create(definition: "Take a shower in less than 10 minutes", difficulty: diff2, duration: dur3)
Challenge.create(definition: "Take a shower in less than 10 minutes", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Grow your own herb(s)", difficulty: diff2, duration: dur3)
Challenge.create(definition: "Grow your own herb(s)", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Grow your own fruit(s)", difficulty: diff2, duration: dur3)
Challenge.create(definition: "Grow your own fruit(s)", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Grow your own veggie(s)", difficulty: diff2, duration: dur3)
Challenge.create(definition: "Grow your own veggie(s)", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Turn off your wifi box at night", difficulty: diff1, duration: dur2)
Challenge.create(definition: "Turn off your wifi box at night", difficulty: diff1, duration: dur3)
Challenge.create(definition: "Turn off your wifi box at night", difficulty: diff1, duration: dur4)
Challenge.create(definition: "Get a water-saving showerhead", difficulty: diff2, duration: dur5)
Challenge.create(definition: "Commute to any places within 10 miles on a bicycle", difficulty: diff2, duration: dur2)
Challenge.create(definition: "Commute to any places within 10 miles on a bicycle", difficulty: diff3, duration: dur3)
Challenge.create(definition: "Commute to any places within 10 miles on a bicycle", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Take the stairs over the elevator", difficulty: diff1, duration: dur2)
Challenge.create(definition: "Take the stairs over the elevator", difficulty: diff2, duration: dur3)
Challenge.create(definition: "Take the stairs over the elevator", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Grocery shop using reusable bags", difficulty: diff1, duration: dur3)
Challenge.create(definition: "Grocery shop using reusable bags", difficulty: diff1, duration: dur4)
Challenge.create(definition: "Buy food and produce locally", difficulty: diff2, duration: dur2)
Challenge.create(definition: "Buy food and produce locally", difficulty: diff3, duration: dur3)
Challenge.create(definition: "Buy food and produce locally", difficulty: diff3, duration: dur4)
Challenge.create(definition: "Use a reusable water bottle and don't buy plastic water bottles", difficulty: diff1, duration: dur4)

