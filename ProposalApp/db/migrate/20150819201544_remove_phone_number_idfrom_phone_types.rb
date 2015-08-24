class RemovePhoneNumberIdfromPhoneTypes < ActiveRecord::Migration
  def change
    remove_reference :phone_types, :phone_number_id
  end
end
