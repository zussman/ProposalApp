class Home < ActiveRecord::Base
  belongs_to :utility
  has_and_belongs_to_many :people
  belongs_to :address
  validates_associated :utility
end
