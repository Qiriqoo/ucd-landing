class ContactMailer < ActionMailer::Base
  default from: 'Ultimate Cycle Distribution <contact@ultimate-cycle-distribution.com>'
  @@admins = ['picard.fabrice.fp@gmail.com']

  def confirm_mail contact
    @contact = contact
    mail(
      to: contact.email,
      subject: "votre email a été enregistré"
    )
  end
  def mail_to_admin contact
    admins = @@admins
    @contact = contact
    mail(
      to: admins.slice!(0),
      subject: 'un nouvel utilisateur s\'est inscrit sur le site'
    )
    
  end

end