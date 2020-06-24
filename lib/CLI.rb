class TopRatedSongs::CLI

    def start
        puts "Welcome to the Musiqdex!"
        menu
    end

    def menu
        puts "What song would you like to search for?"

        song_string = gets.strip

        TopRatedSongs::APIManager.query_musiqdex(song_string)

        TopRatedSongs::Songs.all.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name}"
        end
       
        puts "What song would you like information on?"

        song_number = gets.strip.to_i
        

        song = song_number - 1

        song_object = TopRatedSongs::Songs.all[song]

        TopRatedSongs::APIManager.single_musiqdex(song_string, song_object, song)

    end

end