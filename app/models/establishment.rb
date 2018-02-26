class Establishment < ApplicationRecord
  has_many :rooms
  has_one :user, through: :reservations
end
