class ChangeDatatypePickupDateOfSchedules < ActiveRecord::Migration[6.0]
  def change
    change_column :schedules, :pickup_date, :date
  end
end
