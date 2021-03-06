class ContactMailer < ActionMailer::Base
  default from: 'Ultimate Cycle Distribution <contact@ultimate-cycle-distribution.com>'
  @@admins = ['fp.fabricepicard@gmail.com']

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

  def ucd_contact(recipient, attachments = [])
    @recipient = recipient
    attachments.each do |attachment|
      mail.attachments[attachment.name] = { mime_type: attachment.type,
                                            content: attachment.decoded_content}
    end
    mail(
      to: recipient.user.gmail,
      from: recipient.from_email,
      subject: recipient.subject      
    )
  end

end