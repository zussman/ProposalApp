class RemovePhoneTypesIdFromPhoneNumbers < ActiveRecord::Migration
  def change
    remove_column :phone_numbers, :phone_types_id
  end
end
