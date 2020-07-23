require 'pry'
class Song 
  
  attr_accessor :name, :artist, :genre 
  
   @@count = 0 
   @@artists = []
   @@genres = []
   @@artist_count = {} 
   @@genre_count = 0 
   @@genre_count = {}
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist 
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
   def self.artists
    @@artists.uniq 
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
     
     @@genre_count = {}
     @@genres.each do|genre|
   	

    if !@@genre_count.include?(genre)
        @@genre_count[genre] = 1
        #hash[key1]
    else
       @@genre_count[genre] += 1
  
    end
  end 
end
     
     
     
     
     

 
  
  
  
  
  
  
  
  
end