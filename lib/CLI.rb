

# class TopRatedSongs::CLI

    def start
        puts "Welcome to the Musiqdex!"
        menu
    end

    def menu
        puts "What song would you like to search for?"

        input = gets.strip

        TopRatedSongs::APIManager.query_musiqdex(input)



    end
    
#     def find_by_genre

#     end

#     def find_by_year

#     end

#     def find_by_title

#     end

#     def self.menu
#         input = gets.chomp
#     end

def get_songs

    #     end
    
    #     def get_artists
    
    #     end
    
    #     def get_albums
    
    #     end
    
    #     def get_song_year
    
    #     end
    
    #     def get_album_year
    
    #     end
    

#     def menu
#         puts "Choose from the Following:"
#         puts "A. I'd like to create a New Playlist"
#         puts "B. I'd like to display my Current Playlists"
#         puts "C. I'd like to Remove a Playlist"
#         puts "D. I'd like to Find Playlists by Artist"
#         puts "E. I'd like to EXIT"
#         user_input = get_user_input_from_menu
#         if user_input == "A"
#             greeting
#             create_musiqdex
#         elsif user_input == "B"
#             greeting
#             display_musiqdex
#         elsif user_input == "C"
#             greeting
#             remove_musiqdex
#         elsif user_input == "D"
#             greeting
#             find_by_artist
#         elsif user_input == "E"
#             nil
#         end
    
#     end
# end