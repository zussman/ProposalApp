class AddPhoneNumberIdToPhoneTypes < ActiveRecord::Migration
  def change
    add_reference :phone_types, :phone_number, index: true
    add_foreign_key :phone_types, :phone_numbers
  end
end
