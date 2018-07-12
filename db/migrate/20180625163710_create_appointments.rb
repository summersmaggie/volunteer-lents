class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :address
      t.string :contact_info
      t.string :special_instructions
      t.integer :time_slot_id
    end
  end
end
