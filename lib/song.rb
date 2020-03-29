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
    @@artists << artist
  end 
  
  def self.count
    @@count
  end 
  
  def self.genre
    unique_genre = @@genres.uniq
    unique_genre
  end 
  
  def self.artist 
    unique_artist = @@artists.uniq
    unique_artist
  end
  
  def self.genre_count 
  end 
  
  def self.artist_count
  end
  
end 