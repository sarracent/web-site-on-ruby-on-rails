# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

	def notify
		ContactMailer.notify Send.new(name: 'Damian', email: 'damians@aica.cu', subject: 'prueba', email: 'esto es una prueba)
	end

end
