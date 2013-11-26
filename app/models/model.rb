class Model < ActiveRecord::Base
  has_many :entities
  has_many :systems
end
