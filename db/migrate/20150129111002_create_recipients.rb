class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :from_email
      t.string :subject
      t.text :msg

      t.timestamps
    end
  end
end
