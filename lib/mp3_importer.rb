require 'pry'
class MP3Importer
    attr_reader :path 

    def initialize(path)
        #file is taking in filepath "/spec/fixtures/mp3s"
        @path = path
    end
    
    def files
        Dir.entries(@path).select {|song| song.length > 3}
    end
    
    def import
        files.each {|song| Song.new_by_filename(song)}
    end
end
# binding.pry
# p 0