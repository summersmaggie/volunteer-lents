class CreateAppointmentTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_times do |t|
      t.datetime :date_time
      t.string :name
      t.string :contact_info

      t.timestamps
    end
  end
end
