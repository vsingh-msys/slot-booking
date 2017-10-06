class HomeController < ApplicationController
  def index
  	@appointments = Appointment.all
  end
end
