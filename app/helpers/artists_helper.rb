module ArtistsHelper
  def display_artist(song)
    song.artist.present? ? link_to(song.artist.name, artist_path(song.artist)) : link_to('Add Artist', edit_song_path(song))
  end
end
