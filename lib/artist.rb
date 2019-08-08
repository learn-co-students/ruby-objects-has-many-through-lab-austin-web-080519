require_relative 'song'
#define a class of Artist
class Artist

    attr_accessor :name
#needs a calass variable @@all that begins as an empty
        @@all = []

#when an artist is initialized, it needs a name and asaved into the array
    def initialize(name)
        @name = name
        @@all << self
    end

    #needs a method .all that lists each arist in the class variable
    def self.all
        @@all
    end

    # new song takes in an argumenet of a name and genre & creates a new song
    def new_song(name, genre)
        #creating a new song whose artist is the current instance of artist
        Song.new(name, self, genre)
    end

    # iterates through all songs and finds the song that belogns to the artist .select
    def songs
        #selecting songs with our instance of artist from our array of all songs
        Song.all.select{|song| song.artist = self}
    end

    def genres
        self.songs.collect{|song| song.genre}
    end
end
