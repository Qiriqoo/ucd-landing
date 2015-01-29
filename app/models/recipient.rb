class Recipient < ActiveRecord::Base
  after_create :transfert_to_admin

  def transfert_to_admin
    ContactMailer.ucd_contact(self).deliver
  end
end