class HomeController < ApplicationController
  def index
  	start_date = Date.current
	start_date = DateTime.parse(params['start_date']).try(:to_date) if params['start_date'].present?
  	@appointments = Appointment.includes(:time_slot).where(book_date: start_date.beginning_of_month..start_date.end_of_month)
  	# @avaible_slots = Appointment.group(:book_date).pluck("book_date, CASE WHEN count(*) = (select count(*) from time_slots) THEN false ELSE true END").to_h
  end
end
