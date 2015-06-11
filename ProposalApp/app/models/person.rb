class Person < ActiveRecord::Base
  has_many :person_phone_numbers
  has_many :phone_numbers, through: :person_phone_numbers
end
