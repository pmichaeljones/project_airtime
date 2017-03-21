class AppMailer < ActionMailer::Base

  def resend_admin_password
  @password = ENV["ADMIN_PASSWORD"]
  mail(
    from: "Project Airtime <projectairtime@gmail.com>",
    to: "projectairtime@gmail.com",
    subject: "Project Airtime Website Admin Password"
    )
  end    

  def copilot(params)
    @name = params[:sender_name]
    @phone = params[:phone]
    @email = params[:sender_email]
    @message = params[:message]
    mail(
      from: "projectairtime@gmail.com",
      reply_to: "#{@name} <#{@email}>",
      to: "projectairtime@gmail.com",
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
      to: "projectairtime@gmail.com",
      subject: "#{@subject}"
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
      to: "projectairtime@gmail.com",
      subject: "#{@subject}"
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
