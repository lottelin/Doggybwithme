class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :dog, foreign_key: true
      t.references :user, foreign_key: true
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
