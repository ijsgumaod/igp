class Reservation < ApplicationRecord
  belongs_to :establishment 
  belongs_to :user      # authorized personel only
end
