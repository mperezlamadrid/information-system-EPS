class DashboardController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@title = "Dashboard"
  end
end
