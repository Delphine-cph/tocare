class Care < ApplicationRecord
  validates :day, presence: true 
  belongs_to :patient
  belongs_to :user
end
