class Listing < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
