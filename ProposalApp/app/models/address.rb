class Address < ActiveRecord::Base
  belongs_to :cities
  belongs_to :states
  validates_associated :cities
  validates_associated :states
  accepts_nested_attributes_for :homes
end
