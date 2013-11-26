class System < ActiveRecord::Base
  belongs_to :model
  belongs_to :entity
end
