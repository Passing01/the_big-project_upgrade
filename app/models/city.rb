class City < ApplicationRecord
  validates :zip_code, presence: true, length: { minimum: 5, maximum: 10 }  # Validation exemple
end
