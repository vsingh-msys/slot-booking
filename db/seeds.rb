# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

time_slots_hash = [{start_time: '9:00AM', end_time: '9:30AM'},
	               {start_time: '9:30AM', end_time:'10:00AM'},
	               {start_time: '10:30AM', end_time: '11:00AM'},
	               {start_time: '11:00AM',end_time: '11:30AM'},
	               {start_time: '11:30AM', end_time: '12:00PM'}]
time_slots_hash.each do |slot|
	TimeSlot.find_or_create_by(slot)
end