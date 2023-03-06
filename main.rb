# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './players'
require './question'

# test initialize from .players
will = Players.new("William")
tiff = Players.new("Tiffany")
puts will
puts tiff