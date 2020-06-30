class TopSongs::CLI

    def start
        puts "\n\n"
        puts "Welcome to the Musiqdex!"
        puts "\n\n"
        sleep(2)
        song_list
        main_loop
    end

    def song_list(another=nil)
        puts "\n\n"
        puts "Please choose #{another}keyword you'd like to search for or type 'exit' to exit the program"
        puts "\n\n"
        
            @song_string = gets.strip

        TopSongs::APIManager.query_musiqdex(@song_string)
        @count ||= 0
        @count += 1
        TopSongs::Songs.all.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name}"
        end

        puts "\n\n"
        puts "What song would you like information on?"
        puts "\n\n"

        @song_number = gets.strip.to_i
        @song = @song_number - 1
        @song_object = TopSongs::Songs.all[@song]
        song_info
        TopSongs::Songs.delete
        song_list("another ") if @count < 2
    end

    def song_info
        TopSongs::APIManager.single_musiqdex(@song_string, @song_object, @song)
    end

    def main_loop
        loop do
            start
            case @song_string
            when "exit"
                break
            else 
                puts "Song"
            end

            case @song_number
            when "exit"
                break
            when "invalid"
                next
            else
                puts @song_number
                #song_info
            end
        end
    end

    # def keyword
    #     @song_string = gets.strip
    #     @song_number = gets.strip.to_i
    #     if @song_string == 'exit'

    #     end

    #     if @song_number.between?(1, TopSongs::Songs.all.length)
    #         return @song_number
    #     else 
    #         puts "Input not valid"
    #         return "invalid"
    #     end
    # end

end