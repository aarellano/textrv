class System < ActiveRecord::Base
  attr_accessor :validated, :analyzed, :nouns

  belongs_to :model
  belongs_to :entity
  has_many :system_requirements

  accepts_nested_attributes_for :system_requirements

  def validate
    logger.debug "model validate"
    logger.debug %x(python scripts/test_script.py)
    self.validated = true
    self.nouns = ['dog', 'cat']
  end

  def analyze
    self.analyzed = true
  end
end
