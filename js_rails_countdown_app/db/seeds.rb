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
    ["Alysha's 26th Birthday", '2021-03-10'],
    ["Tim's 30th Birthday", '2021-02-28'],
    ["Christmas", '2020-12-25'],
    ["Graduation", '2020-05-10'],
    ["Thanksgiving", '2020-11-26']
]

event_list.each do |name, date|
    Event.create(name: name, date: date)
end