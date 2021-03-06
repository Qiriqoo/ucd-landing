class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    inbound_mails = event_payload.recipient_emails
    receiver = User.find_by_inbound_mail(inbound_mails)
    recipient = Recipient.new
    payload = event_payload['msg']
    recipient.user_id = receiver.id
    recipient.from_email = payload['from_email']
    recipient.subject = payload['subject']
    recipient.msg = payload['text']
    recipient.save!
    ContactMailer.ucd_contact(recipient, event_payload.attachments).deliver
  end

end