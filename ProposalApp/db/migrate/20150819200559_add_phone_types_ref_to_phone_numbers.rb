class AddPhoneTypesRefToPhoneNumbers < ActiveRecord::Migration
  def change
    add_reference :phone_numbers, :phone_types, index: true, foreign_key: true
  end
end
