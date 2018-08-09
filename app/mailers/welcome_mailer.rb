class WelcomeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_mailer.notify.subject
  #
  def notify(email)

  	@email = email

    mail to: "damians@aica.cu", subject: email.subject
  end
end
