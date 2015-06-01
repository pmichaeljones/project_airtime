class NotificationsController < ApplicationController

  def copilot
    binding.pry
  end

  def volunteer
    AppMailer.volunteer(params).deliver
    flash[:success] = "Success! Chris just got your email!"
  end

  def sponorship
    AppMailer.sponsor(params).deliver
    flash[:success] = "Success! Chris just got your email!"
  end

  def general
    binding.pry
  end

end

