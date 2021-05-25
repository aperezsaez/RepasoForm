class Member < ApplicationRecord
  belongs_to :group
  validates :name, presence: true

  def to_s
    name
  end
  
end
