class Song 
  
   attr_accessor :name, :artist, :genre 
   
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name,artist,genre)
    @@count += 1 
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    
  end
  
  
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres << genre
  end 
  
  def self.artists
    @@artists << artist
  end 
  
  def self.artist_count 
    new_hash = {}
    @@artists.each do |key|
      if new_hash[key]
        new_hash[key] += 1 
      else 
        new_hash[key] = 1 
      end
    end
    new_hash
  end
end