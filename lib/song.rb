require 'pry'
class Song
attr_accessor :name , :artist , :genre

@@count = 0
@@genres = []
@@artists = []
@@genre_count = {}
@@artist_count = {}
def self.count
  @@count
end
def self.genres
  @@genres.uniq
end
def self.artists
  @@artists.uniq
end
def self.genre_count
  @@genres.each do |i|
    if @@genre_count[i]
      @@genre_count[i] += 1
    else
      @@genre_count[i] = 1
    end
  end
@@genre_count
end

def self.artist_count
@@artists.each do |i|
    if @@artist_count[i]
      @@artist_count[i] += 1
    else
      @@artist_count[i] = 1
    end
end
@@artist_count
end

def initialize(name, artist, genre)
@@count += 1
@@genres << genre
@@artists << artist
@name = name
@artist = artist
@genre = genre
end

end