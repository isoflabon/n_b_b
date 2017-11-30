class ApplicationMailer < ActionMailer::Base
  default from:     "atosu通知",
          bcc:      "sample+sent@gmail.com",
          reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
