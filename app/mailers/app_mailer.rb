class AppMailer < ActionMailer::Base

  def copilot(params)
    @name = params[:sender_name]
    @phone = params[:phone]
    @email = params[:sender_email]
    @message = params[:message]
    mail(
      from: "projectairtime@gmail.com",
      reply_to: "#{@name} <#{@email}>",
      to: "projectairtime@gmail.com, pmichaeljones@gmail.com",
      subject: "Project Airtime Co-Pilot Inquiry"
      )
  end

  def volunteer(params)
    @sender = params[:sender_name]
    @email = params[:sender_email]
    @subject = params[:subject]
    @message = params[:message]
    mail(
      from: "projectairtime@gmail.com",
      reply_to: "#{@sender} <#{@email}>",
      to: "projectairtime@gmail.com, pmichaeljones@gmail.com",
      subject: "Project Airtime Volunteer Request: #{@subject}"
      )
  end

  def sponsor(params)
    @sender = params[:sender_name]
    @email = params[:sender_email]
    @subject = params[:subject]
    @message = params[:message]
    mail(
      from: "projectairtime@gmail.com",
      reply_to: "#{@sender} <#{@email}>",
      to: "projectairtime@gmail.com, pmichaeljones@gmail.com",
      subject: "Project Airtime Sponsorship Request: #{@subject}"
      )
  end

  def confirmation(params)
    @name = params[:sender_name]
    @email = params[:sender_email]
    mail(
      to: "#{@email}",
      from: "Project Airtime <projectairtime@gmail.com>",
      subject: "Project Airtime Confirmation"
      )
  end

  def general_contact(params)

  end

end
