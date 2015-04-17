Village = require 'Village'

class SurvivalMain

  constructor: ->
    @EarlyInit()
    @GarbageCollector()
    @InitVillages()

  EarlyInit: ->
    if not Memory.villages?
      Memory.villages = [
        {
          id: 1
          spawn: Game.spawns.Spawn1
          defenders: []
          workers: []
        }
      ]

  GarbageCollector: ->
    for name, creep of Memory.creeps
      if not Game.creeps[name]?
        delete Memory.creeps[name]

  InitVillages: ->
    @villages = (new Village(village) for village of Memory.villages)

module.exports = SurvivalMain
