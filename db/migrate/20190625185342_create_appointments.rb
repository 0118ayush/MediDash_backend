class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.datetime :date
      t.datetime :from_time
      t.datetime :to_time
      t.string :condition
      t.text :note

      t.timestamps
    end
  end
end
