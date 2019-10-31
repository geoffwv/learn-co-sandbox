class Movie
  
  attr_accessor :title, :url, :director, :writers, :stars
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
end