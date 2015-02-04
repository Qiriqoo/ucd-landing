class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    @inbound_mails = event_payload.recipient_emails
    @inbound_mails.each do |inbound_mail|
      recipient = Recipient.new
      payload = event_payload['msg']
      recipient.user = inbound_mail
      recipient.from_email = payload['from_email']
      recipient.subject = payload['subject']
      recipient.msg = payload['text']
      recipient.save!
    end
  end
end