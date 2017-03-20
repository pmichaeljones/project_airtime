class DashboardController < ApplicationController

  def dashboard_home
    if session[:active_login] != true
      flash[:alert] = "You need to log in before accessing the Project Airtime Admin dashboard."
      redirect_to admin_path and return
    end

    @sponsors = Sponsor.all
    
    
    render 'dashboard/dashboard'
  end

end
