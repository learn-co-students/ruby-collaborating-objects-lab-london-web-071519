require "pry"

class MP3Importer

    attr_reader :path 

    def initialize(path)
        @path = path 
      #  "spec/fixtures/mp3s"
    end 

    def files
        Dir.entries(@path).select {|song| song.length > 3}
    end

     def import
        files.each do |song_file| 
             Song.new_by_filename(song_file)
        end 
     end  

end 