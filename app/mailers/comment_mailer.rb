class CommentMailer < ApplicationMailer
    def comment_mail(comment)
        @comment = comment
        mail to: "yoshiprograming@gmail.com", subject: "OOGM!メッセージが届きましたよ！"
    end
end
