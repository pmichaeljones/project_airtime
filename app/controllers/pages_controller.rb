class PagesController < ApplicationController

  def front
    @sponsors = Sponsor.all
  end

  def admin
  	render :admin_login_page
  end

  def admin_login
    if params[:sign_in_password] == ENV["ADMIN_PASSWORD"]
      session[:active_login] = true
      redirect_to dashboard_path
    else
      flash[:alert] =  "You entered the wrong password."
      redirect_to :back
    end

  end

  def dashboard
    if session[:active_login] != true
      flash[:alert] = "You need to log in before accessing the Project Airtime Admin dashboard."
      redirect_to admin_path and return
    end

    render 'dashboard/dashboard'
  end

  def logout
    session[:active_login] = false
    flash[:success] = "You have successfully logged out of the Project Airtime Admin dashboard."
    redirect_to admin_path
  end

end
