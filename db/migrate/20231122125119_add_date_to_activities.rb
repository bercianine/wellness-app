class AddDateToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :date, :date
    add_column :activities, :start_time, :time
  end
end
