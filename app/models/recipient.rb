class Recipient < ActiveRecord::Base
  after_create :transfert_to_admin

  def self.save_inbond_email!(event_playload)
    playload = event_playload['msg']
  Recipient.create!(from_email: playload['from_email'], subject: playload['subject'], msg: playload['html'])
  end

  def transfert_to_admin recipient
    ContactMailer.ucd_contact(self).deliver
  end
end