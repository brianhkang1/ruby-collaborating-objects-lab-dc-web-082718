class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_object)
    @songs << song_object
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
     artist = @@all.find {|artist| artist.name == name}
     if artist
       return artist
     else
       artist = Artist.new(name)
       @@all << artist
       artist
     end
  end

  def print_songs
    @songs.each do |element|
      puts element.name
    end
  end

end
