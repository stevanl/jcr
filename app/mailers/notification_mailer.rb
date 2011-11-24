class NotificationMailer < ActionMailer::Base
  default from: "Stevan Litobac <stevan@independentfx.com>"
  def brochure_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com', :subject => "CR'12: New Brochure Order Form")
  end
  def registration_email(person)
    @person = person
    mail(:to => ['mark@jam-events.com', 'desi@jam-events.com'], :bcc => 'stevan@mycurrencytransfer.com', :subject => "CR'12: New Registration Submitted")
  end
end
