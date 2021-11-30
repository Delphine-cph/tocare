class Patient < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }
  validates :adress, presence: true
  has_many :cares, dependent: :destroy
  has_many :replacements, dependent: :destroy
  acts_as_taggable_on :atcds
  acts_as_taggable_on :treatments
  acts_as_taggable_on :soins

  def display_confidential_name
    "#{last_name.first(3).upcase}. #{first_name.first.upcase}."
  end
end
