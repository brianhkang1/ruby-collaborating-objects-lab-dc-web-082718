
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    ans = Dir.entries(path)
    ans.delete_if do |element|
      element[0] == "."
    end
  end

  def import
    files.each do |element|
      Song.new_by_filename(element)
    end
  end


end
