class DateColumnAdjustments < ActiveRecord::Migration[7.1]
  def change
    remove_column :activities, :date, :date
    remove_column :activities, :start_time, :time
    add_column :activities, :available_dates, :date, array: true, default: []
  end
end
