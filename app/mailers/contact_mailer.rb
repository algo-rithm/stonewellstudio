class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_notification.subject
  #
  def contact_notification(contact_form)
    @contact_form = contact_form
    @greeting = "Hi"

    mail to: "balanesipf@gmail.com", subject: @contact_form.subject, from: "stonewellstudio.com"
  end
end
