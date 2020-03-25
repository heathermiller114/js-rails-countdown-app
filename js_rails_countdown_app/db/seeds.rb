# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create events (name, date)
Event.destroy_all
event_list = [
    ["Alysha's 26th Birthday", "03/10/2021"],
    ["Tim's 30th Birthday", "02/28/2021"],
    ["Christmas", "12/25/2020"],
    ["Graduation", "05/08/2020"],
    ["Thanksgiving", "11/26/2020"]
]

event_list.each do |name, date|
    Event.create(name: name, date: date)
end