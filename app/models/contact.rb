class Contact < MailForm::Base
  STATUS = ["Login issues", "Request access", "Bug report", "Feature request"]

  attribute :subject,      validate: true
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "ContactForm: #{subject}",
      to: ENV['GNAME'],
      from: ENV['GNAME']
    }
  end
end
