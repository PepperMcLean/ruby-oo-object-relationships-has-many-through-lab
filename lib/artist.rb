class Artist
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)

    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        x = []
        self.songs.each do |genre|
            
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        x = []
        songs.each do |song|
            if not x.include?(song.genre)
                x << song.genre
            end
        end
        x
    end
end
