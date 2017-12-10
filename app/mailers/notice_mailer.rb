class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.send_when_reply.subject
  #
  def send_when_reply(user,post,reply)
    @user = user
    @post = post
    @reply = reply
    mail to: user.email,
          subject: "返信が来ました。"
  end
end
