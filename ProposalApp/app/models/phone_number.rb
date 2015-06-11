class PhoneNumber < ActiveRecord::Base
  has_one :phone_type
  has_many :person_phone_numbers
  has_many :people, through: :person_phone_numbers

  accepts_nested_attributes_for :phone_type
end
