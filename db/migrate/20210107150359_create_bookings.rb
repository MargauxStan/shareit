class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.date :starts_at
      t.date :ends_at
      t.string :status

      t.timestamps
    end
  end
end
