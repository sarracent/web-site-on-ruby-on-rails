class ContactMailer < ApplicationMailer

	def notify (send)
		@send = send
		mail to: 'damians@aica.cu', subject: send.subject
	end
end
