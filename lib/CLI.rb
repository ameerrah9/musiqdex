class TopRatedSongs::CLI

    def start
        puts "Welcome to the Musiqdex!"
        menu
    end

    def menu
        puts "What song would you like to search for?"

        input = gets.strip

        TopRatedSongs::APIManager.query_musiqdex(input)

        TopRatedSongs::Songs.all.each.with_index(1) do |m, i|
            puts "#{i}. #{m.name}"
        end
       
        puts "What song would you like information on?"

        input = gets.strip

        song =  TopRatedSongs::Songs.all[input.to_i - 1]

        TopRatedSongs::APIManager.query_musiqdex(song)



    end

end