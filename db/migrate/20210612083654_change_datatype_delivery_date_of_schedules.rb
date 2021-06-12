class ChangeDatatypeDeliveryDateOfSchedules < ActiveRecord::Migration[6.0]
  def change
    change_column :schedules, :delivery_date, :date
  end
end
