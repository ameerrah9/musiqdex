# Create a class to get the names and details for each song and send them to the CLI class

class TopSongs::Songs

  attr_accessor :name, :artist, :listeners
  
  @@all = []

  def initialize(args)
    args.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?(k)
    end
    save
  end
  
  def self.all
    @@all   
  end
  
  def self.delete
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
end