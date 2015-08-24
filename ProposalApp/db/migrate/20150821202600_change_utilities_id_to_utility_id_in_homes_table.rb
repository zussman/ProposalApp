class ChangeUtilitiesIdToUtilityIdInHomesTable < ActiveRecord::Migration
  def change
    rename_column :homes, :utilities_id, :utility_id
  end
end
