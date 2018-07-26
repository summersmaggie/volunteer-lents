class AddAdminRemoveExtraThingsInTimeSlotTable < ActiveRecord::Migration[5.2]
  def change
    add_column :time_slots, :admin, :boolean
    remove_column :time_slots, :appointment_id
    remove_column :time_slots, :date_time
    remove_column :time_slots, :end_time
  end
end
