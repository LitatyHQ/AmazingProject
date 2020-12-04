require "amazingproject/version"
class Films 
  attr_accessor :name, :description, :director, :release_date, :rt_score
  @@all = []

  def initialize(name, description, director, release_date, rt_score)
    @name = name
    @description = description
    @director = director
    @release_date = release_date
    @rt_score = rt_score
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |film|
      film.name.downcase == name.downcase
    end
  end
end