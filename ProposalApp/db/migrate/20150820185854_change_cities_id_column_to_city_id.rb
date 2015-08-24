class ChangeCitiesIdColumnToCityId < ActiveRecord::Migration
  def change
    rename_column :addresses, :cities_id, :city_id
  end
end
