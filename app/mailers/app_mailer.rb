class AppMailer < ActionMailer::Base

  def copilot(params)
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @message = params[:message]
    mail(
      from: "#{@name} <#{@email}>",
      to: "projectairtime@gmail.com",
      subject: "Co-Pilot Inquiry"
      )
  end

  def volunteer(params)
    @sender = params[:sender_name]
    @email = params[:sender_email]
    @subject = params[:subject]
    @message = params[:message]
    mail(
      from: "#{@sender} <#{@email}>",
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
      from: "#{@sender} <#{@email}>",
      to: "projectairtime@gmail.com",
      subject: "#{@subject}"
      )
  end

  def general_contact(params)

  end

end
