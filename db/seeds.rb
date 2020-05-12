# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create()
user2 = User.create()
admin = User.create()
event = Event.create(user: admin, start_date: DateTime.now+1.day, duration: 50, title: "Testo", description: "Ceci est un test ne cherche pas à savoir mon frère", price: 50, location: "SM")
Attendance.create(user: user1, event: event)
Attendance.create(user: user2, event: event)
