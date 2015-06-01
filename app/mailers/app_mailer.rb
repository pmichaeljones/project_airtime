class AppMailer < ActionMailer::Base

  def copilot_contact(params)

  end

  def volunteer(params)
    @sender = params[:sender]
    @sender_email = params[:sender_email]
    @subject = params[:subject]
    @message = params[:message]
    mail(
      from: "#{@sender} <#{@sender_email}>",
      to: "projectairtime@gmail.com",
      subject: "#{@subject}"
      )
  end

  def sponsor(params)


  end

  def general_contact(params)

  end

end
