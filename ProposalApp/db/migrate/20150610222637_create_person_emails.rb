class CreatePersonEmails < ActiveRecord::Migration
  def change
    create_table :person_emails do |t|
      t.references :person, index: true, foreign_key: true
      t.references :email, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
