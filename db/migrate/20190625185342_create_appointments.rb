class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.date :date
      t.time :from_time
      t.time :to_time
      t.string :condition
      t.text :note
      t.string :status
      t.timestamps
    end
  end
end
