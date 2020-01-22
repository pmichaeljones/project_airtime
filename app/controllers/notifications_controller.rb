class NotificationsController < ApplicationController

  def copilot
    if params[:pilot_name].present? || params[:number_fun] != "4"
      flash[:error] = "There was an error. Please email Chris directly: projectairtime@gmail.com"
    else
      AppMailer.copilot(params).deliver
      AppMailer.confirmation(params).deliver
      flash[:success] = "Success! Can't wait for you to come flying with us. Chris will contact you soon!"
    end
    redirect_to root_path
  end

  def volunteer
    if params[:number_fun] == "4"
      AppMailer.volunteer(params).deliver
      AppMailer.confirmation(params).deliver
      flash[:success] = "Success! Thanks for contacting us about volunteering. We'll be in touch!"
    else
      flash[:error] = "Your SPAM answer failed. Please try again."
    end
    redirect_to volunteer_path
  end

  def sponsorship
    if params[:number_fun] == "4"
      AppMailer.sponsor(params).deliver
      AppMailer.confirmation(params).deliver
      flash[:success] = "Success! Thanks for contacting us about sponsorship. We'll be in touch!"
    else
      flash[:error] = "Your SPAM answer failed. Please try again."
    end
    redirect_to sponsorship_path
  end

  def resend_admin_password
    AppMailer.resend_admin_password.deliver
    flash[:success] = "Success! Check your email (projectairtime@gmail.com) for the password. It might take a minute to arrive."
    redirect_to :back
  end

  def general
    binding.pry
  end

end

