class Contact < ActiveRecord::Base
  validates :email, presence: true
  after_create :confirm_contact
  after_create :contact_admin


  def confirm_contact
    ContactMailer.confirm_mail(self).deliver
  end

  def contact_admin
    ContactMailer.mail_to_admin(self).deliver
  end

end
