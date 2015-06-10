class Person < ActiveRecord::Base
  has_many :phone_numbers, through :person_phone_number
end
