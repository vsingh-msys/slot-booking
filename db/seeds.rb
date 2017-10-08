# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

arr = [ ['9:00AM', '9:30AM'],['9:30AM', '10:00AM'],['10:30AM', '11:00AM'],['11:00AM', '11:30AM'],['11:30AM', '12:00PM']]
arr.each do |slot|
	TimeSlot.find_or_create_by(start_time: slot.first, end_time: slot.last)
end