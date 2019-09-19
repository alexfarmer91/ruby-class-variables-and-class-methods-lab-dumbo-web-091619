

class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@all_genres = []
  @@all_artists = []
  @@all_songs = []
  @@count = 0
  
  @@artist_song_hash = {}
 
 def initialize(name, artist, genre)
   @name = name 
   @artist = artist 
   @genre = genre 
  
  @@all_artists.push(artist)
  @@all_genres.push(genre)
  @@all_songs.push(name)
  
  if @@artist_song_hash.keys.include?(artist)
   @@artist_song_hash[artist].push(name)
  else 
    @@artist_song_hash.merge!({artist => [name]})
  end 
  @@count += 1 
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
    @@all_genres.uniq.each { |key|
      {key => @@all_genres.count(key)}
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