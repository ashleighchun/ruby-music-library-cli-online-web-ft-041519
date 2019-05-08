class Song 
  extend Concerns::Findable
  @@all = [] 
  attr_accessor :name, :artist, :genre

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    
    if artist
      self.artist = artist
      artist.songs << self
    end
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
    new_song = Song.new(name)
    new_song.save 
    new_song
  end 
  
end