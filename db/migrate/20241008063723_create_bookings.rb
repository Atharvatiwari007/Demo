class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.integer :membership_duration
      t.string :full_name
      t.string :email
      t.date :start_date
      t.date :end_date
      t.string :contact

      t.timestamps
    end
  end
end
