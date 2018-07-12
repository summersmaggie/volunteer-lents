class AddStartTimeEndTimeToTimeSlot < ActiveRecord::Migration[5.2]
  def change
    add_column :time_slots, :start_time, :datetime
    add_column :time_slots, :end_time, :datetime
  end
end
