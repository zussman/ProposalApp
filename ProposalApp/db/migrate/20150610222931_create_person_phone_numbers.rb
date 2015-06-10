class CreatePersonPhoneNumbers < ActiveRecord::Migration
  def change
    create_table :person_phone_numbers do |t|
      t.references :phone_number, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
