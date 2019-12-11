class ApplicationMailer < ActionMailer::Base
  default to: "info@gmail.com" ,from: 'from@example.com'
  layout 'mailer'
end
