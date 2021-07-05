
require_relative "song"
require_relative "artist"
class Genre 
    attr_accessor :name 
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    def self.all 
    @@all 
        end 
        def songs 
            Song.all.select do |song|
                song.genre == self
        end
    end
    def artists
        songs.collect do |song| 
        song.artist 
        end #returns an array of artists from genres through songs 
    end 
            

end 