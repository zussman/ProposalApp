class AddPersonPhoneNumbersRefToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :person_phone_number, index: true, foreign_key: true
  end
end
