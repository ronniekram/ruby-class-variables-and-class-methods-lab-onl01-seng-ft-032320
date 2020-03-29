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
  
  def self.genres
    unique_genre = @@genres.uniq
    unique_genre
  end 
  
  def self.artists 
    unique_artist = @@artists.uniq
    unique_artist
  end
  
  def self.genre_count
    @@genres.to_histogram 
  end
  
  def self.artist_count
    @@artists.to_histogram
  end
  
end 