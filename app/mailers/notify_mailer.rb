#encoding: utf-8

class NotifyMailer < ActionMailer::Base
  default from: "QPC Partners <no-reply@qpcpartners.com>"

  def notify_email(contact)
  	@contact = contact
  	mail(to: "Gregory Wilson <gwilson@qpcpartners.com>", subject: "New message received via 'qpcpartners.com'.")
  end

  def notify_email_cn(contact)
  	@contact = contact
  	mail(to: "Jimmy Song <jsong@qpcpartners.com>", subject: "QPC Partners <qpcpartners.com> 传发的信息.")
  end
end
