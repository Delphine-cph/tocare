class Replacement < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  belongs_to :user
  belongs_to :patient
  belongs_to :owner, class_name: "User"
end
