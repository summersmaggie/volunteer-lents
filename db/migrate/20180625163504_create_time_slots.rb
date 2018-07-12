class CreateTimeSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :time_slots do |t|
      t.string :name
      t.datetime :date_time
      t.string :contact_info
      t.integer :appointment_id

      t.timestamps
    end
  end
end
