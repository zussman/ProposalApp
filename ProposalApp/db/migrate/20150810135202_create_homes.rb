class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.references :utilities, index: true, foreign_key: true
      t.references :people, index: true, foreign_key: true
      t.references :addresses, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
