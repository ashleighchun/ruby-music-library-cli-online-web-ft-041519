class Artist
  
  @@all = []
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all 
    @@all = []
  end 
  
  def save 
    @@all << self
  end 
  
  def self.create(name) 
    new_artist = Artist.new(name)
    new_artist.save 
    new_artist
  end
  
end 