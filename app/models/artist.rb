class Artist < ActiveRecord::Base
  has_many :songs
  
  
  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
  
  def display_artist(song)
    if song.artist
      link_to song.artist.name, song.artist
    else
      link_to 'Add Artist', edit_song_path(song)
    end
  end
  
end
