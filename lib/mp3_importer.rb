class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir.entries(self.path).select {|f| !File.directory? f}
    end

    def import
        self.files.each {|file| Song.new_by_filename(file)}
    end

end