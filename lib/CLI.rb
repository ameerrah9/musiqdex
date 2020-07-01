class TopSongs::CLI

    def start
        puts <<-HEREDOC
​
            Welcome to the Musiqdex!
        
        HEREDOC
        sleep(2)
        song_list
    end

    def song_list(another=nil)
    puts <<-HEREDOC
        
    "Please choose #{another}keyword you'd like to search for or type 'exit' to exit the program"

    HEREDOC
        
        @song_string = gets.strip
        if @song_string == 'exit'
            puts <<-HEREDOC
                "Bye!"
            HEREDOC
        else


        TopSongs::APIManager.query_musiqdex(@song_string)
        @count ||= 0
        @count += 1
        TopSongs::Songs.all.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name}"
        end

        puts <<-HEREDOC

            "What song would you like information on?"

        HEREDOC

        @song_number = gets.strip.to_i

        while !@song_number.between?(1, 30)
            puts "Please enter a number from the list"
            @song_number = gets.strip.to_i
        end
        @song = @song_number - 1
        @song_object = TopSongs::Songs.all[@song]
        song_info
        TopSongs::Songs.delete
        song_list("another ") if @count < 2
        end
    end

    def song_info
        TopSongs::APIManager.single_musiqdex(@song_string, @song_object, @song)
    end

end
