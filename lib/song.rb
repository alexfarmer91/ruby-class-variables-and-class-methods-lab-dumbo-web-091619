

class Song 
  
    attr_accessor :name, :artist, :genre
    
    @@genres = []
    @@artists = []
    @@songs = []
    @@count = 0
    
    @@artist_song_hash = {}
   
   def initialize(name, artist, genre)
     @name = name 
     @artist = artist 
     @genre = genre 
    
    @@artists.push(artist)
    @@genres.push(genre)
    @@songs.push(name)
    
    if @@artist_song_hash.keys.include?(artist)
     @@artist_song_hash[artist].push(name)
    else 
      @@artist_song_hash.merge!({artist => [name]})
    end 
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
      @@genres.uniq.each { |key|
        {key => @@genres.count(key)}
      }
    end 
    
    def self.artist_count
      @@artist_song_hash.map { |artist_name, songs_by_artist|
         {artist_name => songs_by_artist.length}
      }
    end 
    
    def self.count 
      @@count
    end 
    
  end 