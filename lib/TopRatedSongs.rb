# Create a class to get the names and details for each song and send them to the CLI class

class TopRatedSongs::Songs

  attr_accessor :name, :artist, :listeners
  
  @@all = []
  def initialize(args)
    args.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?(k)
    end
    @@all << self
  end
  
  def self.all
    @@all   
  end
  
  # def self.print_tracks
  #   self.all.each.with_index(1) { |track, index|        
  #   puts "#{index}. #{track.name}".colorize(:yellow)
  #   }
  # end
  
  # def self.print_track_details(index)
  #   beer = self.find(index)
  #     puts ""
  #     puts "/--------------------------------------------------------/"
  #     puts "| Track Name:".colorize(:yellow) + " #{track.name}"
  #     puts "| Artist:".colorize(:yellow) + " #{track.artist}"
  #     puts "| Playcount:".colorize(:yellow) + " #{track.playcount}"
  #     puts "| Listeners:".colorize(:yellow) + " #{track.listeners}"
  #     puts "/--------------------------------------------------------/"
  #   end
  
  
  end