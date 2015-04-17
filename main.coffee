SurvivalMain = require 'SurvivalMain'

class Main

  constructor: ->
    if Game.spawns.Spawn1.room.mode is MODE_ARENA
      @mode = null
    else if Game.spawns.Spawn1.room.mode in [MODE_SURVIVAL, MODE_SIMULATION]
      @mode = new SurvivalMain

main = new Main()
