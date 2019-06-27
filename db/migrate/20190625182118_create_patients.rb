class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :DOB
      t.string :gender
      t.integer :age
      t.string :mobile
      t.string :email
      t.string :address
      t.string :marital_status
      t.string :profile_pic
      t.string :blood_group
      t.string :blood_pressure
      t.text :chronic_conditions

      t.timestamps
    end
  end
end
