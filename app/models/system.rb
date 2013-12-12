class System < ActiveRecord::Base
  attr_accessor :validation, :analysis

  belongs_to :model
  belongs_to :entity
  has_many :system_requirements

  accepts_nested_attributes_for :system_requirements

  after_initialize do |system|
    system.validation = {}
    system.analysis = {}
  end

  def validate
    logger.debug "model validate"
    logger.debug %x(python scripts/test_script.py)
    self.validated = true
    self.nouns = ['dog', 'cat']
  end

  def analyze
    # Write to a temporary file all the system requirements. This file is read by the python script
    File.open('tmp/text_corpora.txt', 'w') do |f|
      self.system_requirements.each do |sys_req|
        f.puts sys_req.title
        f.puts sys_req.description
      end
   end

    output = %x(python -c 'import imp; analyzer = imp.load_source("analyze", "scripts/analyze.py"); analyzer.basics("tmp/text_corpora.txt")')
    self.analysis[:text_description] = {}
    output.each_line do |line|
      out_array = line.delete("\n").split('=>')
      self.analysis[:text_description][out_array[0]] = out_array[1]
    end

    output = %x(python -c 'import imp; analyzer = imp.load_source("analyze", "scripts/analyze.py"); analyzer.nouns("tmp/text_corpora.txt")')
    self.analysis[:nouns] = {}
    output.each_line do |line|
      out_array = line.delete("\n").split('=>')
      # The use of eval below is insanely dangerous. We're evaluating whatever we got from the python script.
      # Here we're trusting that we got an array
      self.analysis[:nouns][out_array[0]] = eval(out_array[1])
    end

    self.analysis[:analyzed] = true
  end
end