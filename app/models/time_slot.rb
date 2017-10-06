class TimeSlot < ApplicationRecord
	has_many :book_slots
	has_many :appointments, through: :book_slots
end
