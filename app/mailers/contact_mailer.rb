class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: "yoshiprograming@gmail.com", subject: "メッセージが届いていますよ!"
      end
end
