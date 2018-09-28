class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name,self,genre)
    self.songs << song
  end

  def genre(name,artist,genre)
    Song.new(name,self,genre)
  end
    

end
