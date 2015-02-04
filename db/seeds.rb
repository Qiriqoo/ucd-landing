# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([{inbound_mail: 'contact@ultimate-cycle-distribution.com', gmail: 'fp.fabricepicard@gmail.com'},
              {inbound_mail: 'fpicard@ultimate-cycle-distribution.com', gmail: 'sdiallo888@gmail.com'},
              {inbound_mail: 'sdiallo@ultimate-cycle-distribution.com', gmail: 'soul.ey1988@hotmail.com'}])