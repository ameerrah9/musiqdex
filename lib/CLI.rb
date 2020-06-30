class TopRatedSongs::CLI

    def start
        puts "Welcome to the Musiqdex!"
        song_list
    end

    def song_list(other=nil)
        puts "What #{other}keyword would you like to search for?"
        
        @song_string = gets.strip

        TopRatedSongs::APIManager.query_musiqdex(@song_string)
        @count ||= 0
        @count += 1
        TopRatedSongs::Songs.all.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name}"
        end

        puts "What song would you like information on?"

        song_number = gets.strip.to_i
        @song = song_number - 1
        @song_object = TopRatedSongs::Songs.all[@song]
        song_info
        TopRatedSongs::Songs.delete
        song_list("other ") if @count < 2
    end

    def song_info
        TopRatedSongs::APIManager.single_musiqdex(@song_string, @song_object, @song)
    end
end