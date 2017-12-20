class ApplicationMailer < ActionMailer::Base
  default from:     "atosu通知",
          reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
