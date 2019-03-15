require 'pry'
require_relative "./song"

class MP3Importer
  attr_accessor :path, :files, :import

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path)[2..Dir.entries(path).length]
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end


end
