

class Song 
  
  @@all_genres = []
  @@all_artists = []
  @@all_songs = []
  
  @@artist_song_hash = {}
 
 def initialize(title, artist, genre)
   @name = title 
   @artist = artist 
   @genre = genre 
  
  @@all_artists.push(artist)
  @@all_genres.push(genre)
  @@all_songs.push(title)
  
  if @@artist_song_hash.keys.include?(artist)
   @@artist_song_hash[artist].push(title)
  else 
    @@artist_song_hash.merge!({artist => [title]})
  end 
end 

 def self.count
   @@all_songs.length
 end 

 def self.artists
   @@all_artists.uniq
 end 

  def self.genres
    @@all_genres.uniq
  end 
  
  def self.genre_count
    
  end 
  
  def self.artist_count
  
  end 
  
end 