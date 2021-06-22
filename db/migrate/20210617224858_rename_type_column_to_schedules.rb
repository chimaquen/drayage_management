class RenameTypeColumnToSchedules < ActiveRecord::Migration[6.0]
  def change
    rename_column :schedules, :type, :container_type
  end
end
