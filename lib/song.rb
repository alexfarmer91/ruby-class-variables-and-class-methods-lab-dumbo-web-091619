

class Song 
  
    attr_accessor :name, :artist, :genre
    
    @@genres = []
    @@artists = []
    @@songs = []
    @@count = 0
   
   def initialize(name, artist, genre)
     @name = name 
     @artist = artist 
     @genre = genre 
    
    @@artists.push(artist)
    @@genres.push(genre)
    @@songs.push(name)

    @@count += 1 
  end 
  
   def self.count
     @@songs.length
   end 
  
   def self.artists
     @@artists.uniq
   end 
  
    def self.genres
      @@genres.uniq
    end 
    
    def self.genre_count
      genre_hash = {}
      @@genres.uniq.each { |key|
        genre_hash.merge!({key => @@genres.count(key)})
      }
      genre_hash
    end 
    
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total_songs, i| total_songs[i] += 1 ;total_songs
      
    }
  end
    
    def self.count 
      @@count
    end 
    
  end 