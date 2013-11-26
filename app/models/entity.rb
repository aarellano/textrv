class Entity < ActiveRecord::Base
  belongs_to :system
  has_many :entities, inverse_of: :system
  validates :system, presence: true
end
