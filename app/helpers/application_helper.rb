module ApplicationHelper
	# Check for current month day only
	def current_month_day date
		start_date = current_date = Date.current
		start_date = DateTime.parse(params['start_date']).try(:to_date) if params['start_date'].present?
		start_date = start_date.beginning_of_month
		end_date = start_date.end_of_month
		return true if date >= current_date && date >= start_date && date <= end_date
		false
	end

	def all_slots_count
		@all_slots_count ||= TimeSlot.count
	end

	def time_slots_options book_date=nil
		return [] if book_date.nil?
		TimeSlot.where.not(id: Appointment.where(book_date: book_date).pluck(:time_slot_id)).collect{|t| [t.slot_name, t.id]}
	end

	def is_available? sorted_events, day
		return true unless sorted_events.fetch(day, []).count == all_slots_count
		false
	end
end
