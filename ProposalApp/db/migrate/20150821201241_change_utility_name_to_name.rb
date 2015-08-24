class ChangeUtilityNameToName < ActiveRecord::Migration
  def change
    rename_column :utilities, :utility_name, :name
  end
end
