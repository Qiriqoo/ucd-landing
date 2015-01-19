class ContactMailer < ActionMailer::Base
  default from: "contact@ultimate-cycle-distribution.com"
  @@admins = ['fp.fabricepicard@gmail.com']

  def confirm_mail contact
    @contact = contact
    mail(
      to: contact.email,
      subject: "votre email a éte enregistré"
    )
  end
  def mail_to_admin contact
    admins = @@admins
    mail(
      to: admins.slice!(0),
      subject: 'un nouvel utilisateur a été enregistré'
    )
    
  end

end