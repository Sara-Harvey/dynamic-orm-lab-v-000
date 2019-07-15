require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def self.table_name
    self.to_s.downcase.pluralize
  end
  
  def initialize(objects={})
    objects.each do |k, v|
      self.send("#{k}=", v)
    end
  end

end