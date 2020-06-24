class CommentMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
        mail to: "yoshiprograming@gmail.com", subject: "OOGM!メッセージが届きましたよ！"
    end
end
