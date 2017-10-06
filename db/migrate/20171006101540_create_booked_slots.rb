class CreateBookedSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :booked_slots do |t|
      t.references :time_slot, foreign_key: true
      t.references :appointment, foreign_key: true
      t.timestamps
    end
  end
end
