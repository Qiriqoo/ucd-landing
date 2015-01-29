class InboxController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def handle_inbound(event_payload)
    Recipient.save_inbound_email!(event_payload)
  end
end