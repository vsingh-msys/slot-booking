arr = [ ['9:00AM', '9:30AM'],['9:30AM', '10:00AM'],['10:30AM', '11:00AM'],['11:00AM', '11:30AM'],['11:30AM', '12:00PM']]
arr.each do |slot|
	TimeSlot.find_or_create_by(start_time: slot.first, end_time: slot.last)
end