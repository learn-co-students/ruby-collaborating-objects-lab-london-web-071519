require 'pry'
class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_artist_by_filename(file)
        array_from_file = file.split(/\ - |\ - |\.mp3/)
        new_artist = Artist.new(array_from_file[0])
        new_artist
    end

    def self.new_by_filename(file)
        artist, song, genre = file.split(/\ - |\ - |\.mp3/)
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end