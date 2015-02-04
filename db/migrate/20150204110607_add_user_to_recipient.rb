class AddUserToRecipient < ActiveRecord::Migration
  def change
    add_reference :recipients, :user, index: true
  end
end
