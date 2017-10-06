module ApplicationHelper
	# Check for current month day only
	def current_month_day date
		current_date = Date.current
		start_date = DateTime.parse(params['start']).try(:to_date) if params['start'].present?
		start_date = current_date.beginning_of_month if start_date.blank?
		end_date = start_date.end_of_month
		return true if date >= start_date && date <= end_date
		false
	end
end
