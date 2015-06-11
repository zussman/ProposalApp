class CreatePersonEmails < ActiveRecord::Migration
  def change
    create_table :person_emails do |t|
      t.belongs_to :person, index: true, foreign_key: true
      t.belongs_to :email, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
