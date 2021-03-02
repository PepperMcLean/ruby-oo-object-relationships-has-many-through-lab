class Genre
    @@all = []
    attr_accessor :name
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
        x = []
        songs.each do |song|
            if not x.include?(song.artist)
                x << song.artist
            end
        end
        x
    end
end
