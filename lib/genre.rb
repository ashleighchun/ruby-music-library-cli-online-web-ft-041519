class Genre 
  
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
    new_genre = Genre.new(name)    
    new_genre.save 
    new_genre 
  end
    
end 

