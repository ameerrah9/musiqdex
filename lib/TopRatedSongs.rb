# Create a class to get the names and details for each song and send them to the CLI class

class TopRatedSongs::Songs
    #class variables and methods
    @@all = []
  
    def self.all
      @@all
    end
  
    def self.print_tracks
      self.all.each.with_index(1) { |track, index|
        puts "#{index}. #{track.name}".colorize(:yellow)
      }
    end
  
    def self.print_track_details(index)
      beer = self.find(index)
      puts ""
      puts "/--------------------------------------------------------/"
      puts "| Track Name:".colorize(:yellow) + " #{track.name}"
      puts "| Artist:".colorize(:yellow) + " #{track.artist}"
      puts "| Playcount:".colorize(:yellow) + " #{track.playcount}"
      puts "| Listeners:".colorize(:yellow) + " #{track.listeners}"
      puts "/--------------------------------------------------------/"
    end
  
  
    #attributes
    attr_accessor :name, :artist, :genre, :playcount, :listeners
  
     #instance methods
     def initialize(name, artist, genre, playcount, listeners)
      @name, @artist, @genre, @playcount, @listeners = name, artist, genre, playcount, listeners
       save
     end
  
     def save
       @@all << self
     end
  
  end