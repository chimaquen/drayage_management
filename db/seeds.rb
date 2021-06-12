# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schedule.create!(pickup_date: "2021-01-01", delivery_date: "2021-01-02", cy:"南本牧", warehouse: "東京流通センター", bill_number: "ONEYTYOB12345678", container: "NYKU1234567", size: 20, axis: "2軸", transporter: "ABC運送", division: "10: 本社", customer: "ABC貿易", trade_type: "輸入")
Schedule.create!(pickup_date: "2021-01-02", delivery_date: "2021-01-03", cy:"本牧BC鈴江", warehouse: "横浜流通センター", bill_number: "ONEYTYOB23456789", container: "NYKU2345678", size: 40, axis: "3軸", transporter: "BCD運送", division: "20: 横浜支社", customer: "BCD貿易", trade_type: "輸入")
puts "初期データの投入に成功しました！"
