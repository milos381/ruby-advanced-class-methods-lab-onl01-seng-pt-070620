class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    self.all << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
