class TopRatedSongs::APIManager

    BASE_URL = 'http://ws.audioscrobbler.com/2.0/'

    API_KEY = '06fc18d534b35016095fcbc3962feb50'

    def self.query_musiqdex
        results = RestClient.get("http://ws.audioscrobbler.com/2.0/?method=chart.gettoptracks&api_key=06fc18d534b35016095fcbc3962feb50&format=json")
        #binding.pry
    end

    def self.start
        puts "Hello"
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