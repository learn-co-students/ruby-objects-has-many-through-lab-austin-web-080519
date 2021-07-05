require_relative "genre"
require_relative "song"

class Artist
    attr_reader :name
    attr_accessor

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.collect {|song| song.genre}
    end
end