class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.date :date
      t.time :time
      t.references :user, foreign_key: true
      t.references :advisor, foreign_key: true

      t.timestamps
    end
  end
end
