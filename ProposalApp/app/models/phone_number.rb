class PhoneNumber < ActiveRecord::Base
  belongs_to :phone_type
  has_many :person_phone_numbers
  has_many :people, through: :person_phone_numbers
  validates :phone_number, presence: true
  validates_associated :phone_type
  accepts_nested_attributes_for :person_phone_numbers
end
