class CreateApplications < ActiveRecord::Migration
  def change
    create_table( :applications ,:options=>("identity(10000,1)")) do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :spiritual_name
      t.integer :age
      t.date :date_of_birth
      t.string :sex
      t.string :marital_status
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :email
      t.string :dayphone
      t.string :nightphone
      t.string :language
      t.string :illness
      t.string :prescribed_medications
      t.string :emergency_contact
      t.string :emergency_relationship
      t.string :emergency_email
      t.string :emergency_phone
      t.string :emergency_address
      t.string :how_long_practice
      t.string :how_know
      t.boolean :ever_been
      t.text :experience

      t.timestamps
    end
  end
end
