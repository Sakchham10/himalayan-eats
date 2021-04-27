class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :last_name
      t.string :first_name
      t.integer :table_num
      t.time :time_until

      t.timestamps
    end
  end
end
