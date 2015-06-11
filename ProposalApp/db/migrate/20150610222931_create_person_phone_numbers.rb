class CreatePersonPhoneNumbers < ActiveRecord::Migration
  def change
    create_table :person_phone_numbers do |t|
      t.belongs_to :phone_number, index: true, foreign_key: true
      t.belongs_to :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
