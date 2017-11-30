class ApplicationMailer < ActionMailer::Base
  default from:     "メールテスト運営局",
          bcc:      "sample+sent@gmail.com",
          reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
