class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :mobile
      t.string :email
      t.string :address
      t.string :password_digest
      t.string :location
      t.text :description
      t.string :gender
      t.string :department
      t.string :DOB
      t.string :profile_pic

      t.timestamps
    end
  end
end
