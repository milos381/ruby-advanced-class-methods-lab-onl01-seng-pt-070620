require 'pry'
class Song

  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    binding.pry
    song = self.new
    @@all << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
