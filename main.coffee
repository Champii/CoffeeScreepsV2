SurvivalMain = require 'SurvivalMain'

class Main

	constructor: ->
    if MODE_ARENA
      @mode = null
    else
      @mode = new SurvivalMain

main = new Main()
