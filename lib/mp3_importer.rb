require "pry"
class MP3Importer

  attr_accessor :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|file| File.extname(file) == ".mp3"}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end