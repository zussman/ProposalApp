class RemovePhoneNumberIdfromPhoneType < ActiveRecord::Migration
  def change
    remove_column :phone_types, :phone_number_id
  end
end
