class Patient < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }
  validates :adress, presence: true
  has_many :cares
  has_many :replacements

  def display_name
    "#{last_name.upcase} #{first_name.capitalize}"
  end
end
