class PersonEmail < ActiveRecord::Base
  belongs_to :person
  belongs_to :email
  accepts_nested_attributes_for :person
end
