class UserMailer < ApplicationMailer
    default from: 'noreply@test.com'

    def send_email(alert)
      @contact = Contact.find_by_id alert.contact_id
      if alert.sendtowho 
        if @contact.birthday
          mail(to: alert.sendtowho, subject: 'Dont forget the birthday')
        end
      end
    end
end
