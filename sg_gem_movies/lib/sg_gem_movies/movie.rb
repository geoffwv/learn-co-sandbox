class Movie
  
  attr_accessor :title, :url, :director
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
end