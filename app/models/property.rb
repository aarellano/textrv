class Property < ActiveRecord::Base
  belongs_to :entity
  validates :entity, presence: true
end
