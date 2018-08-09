# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/notify
  def notify
    WelcomeMailer.notify Email.new(name: 'Damian', email: 'damians@aica.cu', subject: 'asunto', message: 'prueba')
  end

end
