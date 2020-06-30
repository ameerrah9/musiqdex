class TopRatedSongs::APIManager

    BASE_URL = 'http://ws.audioscrobbler.com/2.0/'

    API_KEY = '06fc18d534b35016095fcbc3962feb50'

    def self.query_musiqdex(track)

        results = RestClient.get("#{BASE_URL}?method=track.search&track=#{track}&api_key=#{API_KEY}&format=json")
        json = JSON.parse(results)

        json["results"]["trackmatches"]["track"].each do |songs_hash|
            TopRatedSongs::Songs.new(songs_hash)
            #binding.pry
        end

    end
    
    def self.single_musiqdex(track, song_object, num)
        results = RestClient.get("#{BASE_URL}?method=track.search&track=#{track}&api_key=#{API_KEY}&format=json")
        json = JSON.parse(results)
        
        final_song = json["results"]["trackmatches"]["track"][num]

        song_object.artist = final_song["artist"]
        song_object.listeners = final_song["listeners"]
        song_object.name = final_song["name"]

        puts "Song Title: #{song_object.name}"
        puts "Artist: #{song_object.artist}"
        puts "Number of Listeners: #{song_object.listeners}"
    end

end
