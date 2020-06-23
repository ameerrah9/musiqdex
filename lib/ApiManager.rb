class TopRatedSongs::APIManager

    BASE_URL = 'http://ws.audioscrobbler.com/2.0/'

    #http://ws.audioscrobbler.com/2.0/?method=track.search&track=Believe&api_key=YOUR_API_KEY&format=json

    API_KEY = '06fc18d534b35016095fcbc3962feb50'

    def self.query_musiqdex(track)

        results = RestClient.get("#{BASE_URL}?method=track.search&track=#{track}&api_key=#{API_KEY}&format=json")
        json = JSON.parse(results)

        json["results"]["trackmatches"]["track"].each do |songs_hash|
            TopRatedSongs::Songs.new(songs_hash)
        end
    end

    def self.single_musiqdex(song)
        results = RestClient.get("#{BASE_URL}?method=track.getInfo}&api_key=Y#{API_KEY}&artist=cher&track=#{song}&format=json")
        json = JSON.parse(results)
        binding.pry
        json["results"]["trackmatches"]["track"].each do |songs_hash|
            TopRatedSongs::Songs.new(songs_hash)
        end
    end

end


# # grab non-user specific information
# # get api key - last fm api

# # Application name	Musiqdex
# # API key	06fc18d534b35016095fcbc3962feb50
# # Shared secret	688218474ead7bfb32b892798d1385fe
# # Registered to	McCullers5

    #http://ws.audioscrobbler.com/2.0/?method=chart.gettoptracks&api_key=06fc18d534b35016095fcbc3962feb50&format=json

# end