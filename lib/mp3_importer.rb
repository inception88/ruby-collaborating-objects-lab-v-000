class MP3Importer
  attr_accessor :filename, :path
  
  def initialize(path)
    @path = path
  end
  
  def files
   entries = Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import
    filenames =  self.files
    
    Song.new_by_filename(filename)
  end
end