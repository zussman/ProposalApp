class PhoneNumber < ActiveRecord::Base
  belongs_to :phone_type
  belongs_to :person_phone_number
end
