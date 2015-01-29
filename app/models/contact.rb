class Contact < ActiveRecord::Base
  validates :email, presence: true
  after_create :confirm_contact
  after_create :warn_admin


  def confirm_contact
    ContactMailer.confirm_mail(self).deliver
  end

  def warn_admin
    ContactMailer.mail_to_admin(self).deliver
  end

end
