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
    @@genres.each do  |genre|
      if  genre_count[genre]
        genre_count += 1
      else
        genre_count = 1
      end
  end
  genre_count
  
 
  def self.artist_count
    artist_count = {}
    artists.each  do  |artist|
      if  artist_count[artist]
        artist_count[artist] += 1
      else  artist_count[artist] = 1
    end
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