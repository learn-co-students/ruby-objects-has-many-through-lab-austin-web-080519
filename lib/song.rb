require_relative 'artist'
require_relative 'genre'

#define a class of Song
class Song
    attr_accessor :name, :artist, :genre

# needs a class variable of @@all to an empty array
    @@all = []

#call upon a new song (.new) using initialization and passing through name, artist, genre as arguments
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

# needs a calls method .all that lests each song in the class variable
    def self.all
        @@all
    end

end