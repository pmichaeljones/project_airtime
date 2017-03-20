class NotificationsController < ApplicationController

  def copilot
    AppMailer.copilot(params).deliver
    AppMailer.confirmation(params).deliver
    flash[:success] = "Success! Can't wait for you to come flying with us. Chris will contact you soon!"
    redirect_to root_path
  end

  def volunteer
    AppMailer.volunteer(params).deliver
    AppMailer.confirmation(params).deliver
    flash[:success] = "Success! Thanks for contacting us about volunteering. We'll be in touch!"
    redirect_to volunteer_path
  end

  def sponsorship
    AppMailer.sponsor(params).deliver
    AppMailer.confirmation(params).deliver
    flash[:success] = "Success! Thanks for contacting us about sponsorship. We'll be in touch!"
    redirect_to sponsorship_path
  end

  def resend_admin_password
    AppMailer.resend_admin_password.deliver
    flash[:success] = "Check your email (projectairtime@gmail.com) for the password."
    redirect_to :back
  end

  def general
    binding.pry
  end

end

