class AddTypeToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :type, :string
    add_column :schedules, :customer_reference, :string
  end
end
