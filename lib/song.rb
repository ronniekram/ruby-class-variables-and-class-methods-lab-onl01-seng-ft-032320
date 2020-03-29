class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
  end 
  
  def self.count
    @@count
  end 
  
  def self.genre
    unique = []
    unique << @@genres.uniq
    unique
  end 
  
  def self.artist 
  end 
  
end 