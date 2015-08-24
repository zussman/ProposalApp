class Email < ActiveRecord::Base
  has_many :person_emails
  has_many :people, through: :person_emails
  validates :email, presence: true
  accepts_nested_attributes_for :person_emails
end
