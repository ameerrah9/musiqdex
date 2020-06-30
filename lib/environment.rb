# require should be used for external files, like gems, 
# while require_relative 
# should be used for referring to files within your directory.

require 'pry'
require 'json'
require 'rest-client'

require_relative "./musiqdex/version"
require_relative "./cli"
require_relative "./api_manager"
require_relative "./top_songs"


# module TopRatedSongs

# end
