class Entity < ActiveRecord::Base
  belongs_to :model
  has_many :properties
end
