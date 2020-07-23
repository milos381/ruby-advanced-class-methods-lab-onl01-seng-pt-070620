require 'pry'
class Song

  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    #binding.pry
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  def self.find_or_create_by_name(name)

      self.find_by_name(name) || self.create_by_name(name) #pitaj za ovo
  end
  def self.alphabetical
    self.all.sort_by{|song| song.name} #pitaj sto ne radi sort
  end

  def self.new_from_filename

  end
  def self.destroy_all
    self.all.clear
  end
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
