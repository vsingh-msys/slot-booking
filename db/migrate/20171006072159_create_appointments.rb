class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :book_date
      t.boolean :status
      t.timestamps
    end
  end
end
