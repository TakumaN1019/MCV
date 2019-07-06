class ApplicationMailer < ActionMailer::Base
  default from: "TakumaN <mcv@takuman.me>" #SESの場合
  layout 'mailer'
end
