Spawner = require 'Spawner'

class Village

  @PHASE_INIT: 2
  @PHASE_PROTEC: 1
  @PHASE_EXPAN: 0

  constructor: (blob) ->
    console.log 'tamere'
    @id = blob.id
    @spawn = new Spawner blob.spawn
    console.log @spawn
    @defenders = blob.defenders
    @workers = blob.defenders
    @DeterminePhase()

  DeterminePhase: ->
    #todo
    @phase = Village.PHASE_INIT


module.exports = Village
