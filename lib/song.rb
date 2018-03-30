class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name,:artist,:genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @genre_count = {}
    counts = 0
    @genre_count.each do |genre, count|
      genre.each do |index|
        if genre == index
          count += 1
        else
          genre_count = {genre => counts}
        end
      end
    end
        
end
