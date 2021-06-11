class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :pickup_date
      t.datetime :delivery_date
      t.string :allowed_time
      t.string :cy
      t.string :warehouse
      t.string :bill_number
      t.string :container
      t.integer :size
      t.string :axis
      t.string :transporter
      t.string :division
      t.string :customer
      t.string :reference_number
      t.string :trade_type

      t.timestamps
    end
  end
end
