require 'pry'
class Song 

  attr_accessor :name, :artist, :genre 

  @@count = 0
  @@genres = []
  @@artists = []
  @@names = []
  def initialize(name, artist, genre)
    @name = name
    @@names << name

    @artist = artist
    @@artists << artist 

    @genre = genre
    @@genres << genre

    @@count += 1
  end 

#keep track of the number of songs that it creates.
  def self.count
    @@count
  end

#all of the artists of existing songs
  def self.artists 
    @@artists.uniq
  end 

#show us all of the genres of existing songs
  def self.genres 

    @@genres.uniq
  end

#keep track of the number of songs of each genre it creates
#returns a hash in which the keys are the names of each genre. 
#Each genre name key should point to 
#a value that is the number of songs that have that genre.

#find how num songs per genre
  #count number of times genre appears in @@genres 
#create key value pairs 

#always put binding pry where above your question is
  def self.genre_count
    self.genres.each_with_object({}) do |genre, hist_hash|
      hist_hash[genre] = @@genres.count(genre)
    end
  end

#reveal to us the number of songs each artist is responsible for.
  def self.artist_count
    self.artists.each_with_object({}) do |artist, hist_hash|
      hist_hash[artist] = @@artists.count(artist)
    end
  end
end 
