class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :DOB
      t.string :ethnicity
      t.string :gender
      t.integer :age
      t.string :mobile
      t.string :email
      t.string :address
      t.string :city
      t.string :province
      t.string :postcode
      t.string :marital_status
      t.string :profile_pic
      t.string :blood_group
      t.string :blood_pressure
      t.string :initial_note
      t.text :chronic_conditions

      t.timestamps
    end
  end
end
