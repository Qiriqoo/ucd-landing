class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :inbound_mail
      t.string :gmail

      t.timestamps
    end
  end
end
