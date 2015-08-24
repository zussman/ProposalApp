class Person < ActiveRecord::Base
  has_many :person_phone_numbers
  has_many :phone_numbers, through: :person_phone_numbers
  has_many :person_emails
  has_many :emails, through: :person_emails
  has_and_belongs_to_many :homes
  accepts_nested_attributes_for :person_phone_numbers
  accepts_nested_attributes_for :person_emails
  accepts_nested_attributes_for :homes
end
