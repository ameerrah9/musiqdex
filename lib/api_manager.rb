class TopSongs::APIManager

    BASE_URL = 'http://ws.audioscrobbler.com/2.0/'

    API_KEY = '06fc18d534b35016095fcbc3962feb50'

    def self.query_musiqdex(track)
        # the request
        results = RestClient.get("#{BASE_URL}?method=track.search&track=#{track}&api_key=#{API_KEY}&format=json")
        #json is what I get back, response
        converted_json = JSON.parse(results)

        converted_json["results"]["trackmatches"]["track"].each do |songs_hash|
            TopSongs::Songs.new(songs_hash)
        end

    end
    
    def self.single_musiqdex(track, song_object, num)
        results = RestClient.get("#{BASE_URL}?method=track.search&track=#{track}&api_key=#{API_KEY}&format=json")
        converted_json = JSON.parse(results)
        
        final_song = converted_json["results"]["trackmatches"]["track"][num]

        
        song_object.artist = final_song["artist"]
        song_object.listeners = final_song["listeners"]
        song_object.name = final_song["name"]
    end

end
