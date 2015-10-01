class Item < ActiveRecord::Base

  validates :title, presence: true

  scope :completed, -> { where(:completed => true) }
  scope :active, -> { where(:completed => false) }

end
