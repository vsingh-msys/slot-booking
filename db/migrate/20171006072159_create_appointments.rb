class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :book_date
      t.references :time_slot, foreign_key: true
      t.text :note
      t.timestamps
    end
  end
end
