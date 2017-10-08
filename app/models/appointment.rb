class Appointment < ApplicationRecord
	belongs_to :time_slot
	validates :time_slot, presence: true
	#validates :book_date, presence: true, future_date_only: true, uniqueness: {scope: :time_slot_id}
	def start_time
        self.book_date
    end

    def name
    	"#{self.time_slot.start_time.strftime('%H:%M %p')} - #{self.time_slot.end_time.strftime('%H:%M %p')}"
    end
end
