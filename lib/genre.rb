require_relative 'song'

class Genre
#needs a class variable of @@all into an array
    @@all = []
    attr_accessor :name

#should be initialized in array and saved with a name
    def initialize(name)
        @name = name
        @@all << self
    end

#needs a class method .all that lists each genre in the class variable
    def self.all
        @@all
    end


# method - songs that iterates through all songs finds the song that belongs to genre .select
    def songs
        Song.all.select{|song| song.genre == self}
    end

#method - artists that iterates over the colelction of songs - collects the artists 
    def artists
        self.songs.collect{|song| song.artist}
    end





end
