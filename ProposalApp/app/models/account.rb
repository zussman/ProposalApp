class Account < ActiveRecord::Base
  belongs_to :phone_numbers
  belongs_to :addresses
  belongs_to :emails
  belongs_to :people
end
