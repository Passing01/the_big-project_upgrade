class User < ApplicationRecord
  belongs_to :city
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :description, presence: true
  validates :email, presence: true, uniqueness: true
  validate :age
end
