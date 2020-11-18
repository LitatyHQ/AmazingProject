require "amazingproject/version"

class AmazingProject
  attr_accessor :title, :director, :producer, :release_date, :locations
  @@all =[]

  def initialize(attributes)
    attributes.each do |key, value| 
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end

  def self.all
    @@all
  end

end
