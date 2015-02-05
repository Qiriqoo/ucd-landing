class Recipient < ActiveRecord::Base
  belongs_to :user
  after_create :transfert_to_admin

  def transfert_to_admin
    ContactMailer.ucd_contact(self).deliver
  end
end