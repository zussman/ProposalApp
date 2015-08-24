class PersonPhoneNumber < ActiveRecord::Base
  attr_accessible :phone_number_attributes
  belongs_to :phone_number
  belongs_to :person
  accepts_nested_attributes_for :phone_number
  accepts_nested_attributes_for :person
end
