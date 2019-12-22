class Song
  
  attr_accessor :name,  :artist,  :genre
  
  
  
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = 1
    @@artists = artist
    @@genres = genre
  end
  
  @@count = 0
  
  def self.count
    @@count
  end
  
  genres = []
  
  
  def self.genres
    @@genres = @@genres.uniq
  end
  
  @@artists = []
  
  
  def self.artists
    @@artists = @@artists.array
  end
  
  
  def self.genre_count
    @@genres_count = {}
    
    @@genres.each {|genre| @@genre_count[genre] +=
  end
  
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each  {|artist| artist_count[artist] += 1}
    artist_count
  end
end