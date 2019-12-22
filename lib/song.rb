class Song
  
  attr_accessor :name,  :artist,  :genre
  @@account = 0
  @@artist = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists = artist
    @@genres = genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artist.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  
  def self.genre_count
    genre_count = {}
    
  end
  
  @@artists = []
  
  
  def self.artists
    @@artists = @@artists.array
  end
  
  
  def self.genre_count
    @@genre_count = {}
    

    return  @@genre_count
  end
  
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each  {|artist| artist_count[artist] += 1}
    artist_count
  end
end