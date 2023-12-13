class Booking < ApplicationRecord
  belongs_to :listing
  has_many :reservations, dependent: :destroy
end
