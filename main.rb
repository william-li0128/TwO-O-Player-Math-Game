# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './question'

# test initialize from .game
game = Game.new("Tiffany", "William")
# puts game

# test Start from .game
game.start