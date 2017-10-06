class Appointment < ApplicationRecord
	has_many :booked_slots
	has_many :time_slots, through: :book_slots

	def start_time
        self.book_date
    end
end
