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
    num_of_genres = Hash.new
    @@genres.each do |genre|
      if num_of_genres[genre]
        num_of_genres[genre] += 1
      else
        num_of_genres[genre] = 1
      end
    end
      return num_of_genres
end
  
  def self.artist_count
    num_of_artist = Hash.new
    @@artists.each do |artist|
      if num_of_artist[artist]
        num_of_artist[artist] += 1
      else
        num_of_artist[artist] = 1
      end
    end
      return num_of_artist
  end
  
end 