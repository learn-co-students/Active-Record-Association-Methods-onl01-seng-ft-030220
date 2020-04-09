class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = self.songs[0]
    song.genre
  end

  def song_count
    self.songs.count
    #return the number of songs associated with the artist
  end

  def genre_count
    self.genres.count
  end
end
