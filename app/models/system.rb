class System < ActiveRecord::Base
  has_many :entities, inverse_of: :system
end
