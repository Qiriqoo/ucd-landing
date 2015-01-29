class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    recipient = Recipient.new
    payload = event_playload['msg']

    recipient.from_email = payload['from_email']
    recipient.subject = payload['subject']
    recipient.msg = payload['html']
    recipient.save!
  end
end