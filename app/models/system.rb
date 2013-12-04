class System < ActiveRecord::Base
  belongs_to :model
  belongs_to :entity
  has_many :system_requirements

  accepts_nested_attributes_for :system_requirements
end
