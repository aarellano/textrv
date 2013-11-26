class Entity < ActiveRecord::Base
  belongs_to :system
  has_many :properties
end
