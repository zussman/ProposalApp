class AddHomeIdToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :home, index: true
  end
end
