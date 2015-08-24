class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :phone_numbers, index: true, foreign_key: true
      t.references :addresses, index: true, foreign_key: true
      t.references :emails, index: true, foreign_key: true
      t.references :people, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
