class Entity < ActiveRecord::Base
  belongs_to :model
  has_many :properties
  has_many :systems

  def properties_array
    array = []
    self.properties.each do |prop|
      array.push prop.name
    end
    return array
  end

end
