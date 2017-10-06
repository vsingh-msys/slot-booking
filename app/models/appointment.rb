class Appointment < ApplicationRecord
	def start_time
        self.book_date
    end
end
