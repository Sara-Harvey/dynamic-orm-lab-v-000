require_relative "../config/environment.rb"
require 'active_support/inflector'

  def initialize(objects={})
    objects.each do |k, v|
      self.send("#{k}=", v)
    end
  end
  
  
  
  
end