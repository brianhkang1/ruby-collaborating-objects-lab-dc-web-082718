class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    data = file_name.split(" - ")
    artist_name = data[0]
    song_name = data[1]

    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song_name)
    song
  end

end
