class ContactMailer < ApplicationMailer
  default from: 'chloe.bretnacher@gmail.com'

  def contact_email(contact)
    @contact = contact
    @message = contact.message
    mail(to: 'chloe.bretnacher@gmail.com', subject: "Nouveau message de #{@contact.name}") do |format|
      format.text
      format.html
    end
  end
end
