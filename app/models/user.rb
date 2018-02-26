class User < ApplicationRecord
  authenticates_with_sorcery!

  enum role: [:manager, :frontdesk]
  belongs_to :establishment
  #has_many :establishment, through: :reservations

  after_initialize :set_default_role, :if => :new_record?

  #validates :password, length: { minimum: 4 }
  validates :username, uniqueness: true

  def is_online
    self.update_attributes(online: true)
  end

  def is_offline
    self.update_attributes(online: false)
  end

  def set_default_role
    self.role ||= :front_desk
  end

  def get_role
    if self.role == 'manager'
      return 'Manager'
    else
      return 'Front Desk'
    end
  end

  def get_estab_name
    self.establishment.estab_name
  end
end
