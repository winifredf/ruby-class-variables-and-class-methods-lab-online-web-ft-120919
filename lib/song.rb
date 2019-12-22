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
  
  def self.artists
    @@artists.array
  end
  
  
  def self.genres
    @@genres.uniq
  end
  
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end
  
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each  {|artist| artist_count[artist] += 1}
    artist_count
  end
end