class ChangeStatesStateColumnToName < ActiveRecord::Migration
  def change
    rename_column :states, :state, :name
  end
end
