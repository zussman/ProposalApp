class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.references :cities, index: true, foreign_key: true
      t.references :states, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
