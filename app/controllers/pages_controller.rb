class PagesController < ApplicationController

  def front
  end

  def admin
  	render :admin_login_page
  end

  def admin_login
    if params[:sign_in_password] == ENV["ADMIN_PASSWORD"]
      #send to admin dashboard
    else
      flash[:alert] =  "You entered the wrong password."
      redirect_to :back
    end

  end


end
