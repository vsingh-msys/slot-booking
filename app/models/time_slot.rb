class TimeSlot < ApplicationRecord
	has_many :appointments

	def slot_name
		"#{self.start_time.strftime('%H:%M %p')} - #{self.end_time.strftime('%H:%M %p')}"
	end
end
