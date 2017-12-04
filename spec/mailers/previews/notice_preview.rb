# Preview all emails at http://localhost:3000/rails/mailers/notice
class NoticePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notice/send_when_reply
  def send_when_reply
    NoticeMailer.send_when_reply
  end

end
