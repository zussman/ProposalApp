class PersonPhoneNumber < ActiveRecord::Base
  belongs_to :phone_number
  belongs_to :person
end
