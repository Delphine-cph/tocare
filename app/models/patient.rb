class Patient < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }
  validates :adress, presence: true
  has_many :cares
  has_many :replacements
  has_many :transmissions

  def display_confidential_name
    "#{last_name.first(3).upcase}. #{first_name.first.upcase}."
  end
end
