require_relative 'song'
require_relative 'genre'

class Artist
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
    Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def genres
        songs.collect {|song| song.genre}
    end


end