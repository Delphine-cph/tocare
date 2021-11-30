class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :adeli_number, presence: true
  validates :arrondissement, presence: true
  has_many :cares
  has_many :patients, through: :cares
  has_many :replacements
  has_many :transmissions, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
