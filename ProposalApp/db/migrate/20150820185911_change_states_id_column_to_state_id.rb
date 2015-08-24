class ChangeStatesIdColumnToStateId < ActiveRecord::Migration
  def change
    rename_column :addresses, :states_id, :state_id
  end
end
