class RemoveUtilityIdFromHomes < ActiveRecord::Migration
  def change
    remove_column :homes, :utility_id
  end
end
