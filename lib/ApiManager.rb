require 'httparty'
require 'open-uri'


class Musiqdex::APIManager

    url = "http://open.spotify.com/track/6rqhFgbbKwnb9MLmUQDhG6"
    response = HTTParty.get(url)
    response.parsed_response


    def create_musiqdex

    end

    def display_musiqdex

    end

    def remove_musiqdex

    end

    def find_by_artist

    end

    def greeting

    end

    def farewell

    end

    def create_from_artist

    end

    def create_from_genre

    end

    def create_from_year

    end

    def create_from_tempo

    end

    def create_from_title

    end

    def menu
        puts "Choose from the Following:"
        puts "A. I'd like to create a New Playlist"
        puts "B. I'd like to display my Current Playlists"
        puts "C. I'd like to Remove a Playlist"
        puts "D. I'd like to Find Playlists by Artist"
        puts "E. I'd like to EXIT"
        user_input = get_user_input_from_menu
        if user_input == "A"
            greeting
            create_musiqdex
        elsif user_input == "B"
            greeting
            display_musiqdex
        elsif user_input == "C"
            greeting
            remove_musiqdex
        elsif user_input == "D"
            greeting
            find_by_artist
        elsif user_input == "E"
            nil
        end
    end

end