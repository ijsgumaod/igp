class Room < ApplicationRecord
  belongs_to :establishment

  enum vacancy_staus: [:occuppied, :reserved, :vacant]

  def set_default_status
    self.update_attribute(room_status: :vacant)
  end

  def is_reserved
    self.update_attributes(room_status: :reserved)
  end

  def is_occuppied
    self.update_attributes(room_status: :occuppied)
  end

  def is_vacant
    self.update_attributes(room_status: :vacant)
  end
end
