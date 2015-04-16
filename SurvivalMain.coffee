class SurvivalMain

  constructor: ->
    @GarbageCollector()
    @InitDefcon()
    @InitTarget()
    @InitSpawners()
    @InitCreeps()

  GarbageCollector: ->
    for name, creep of Memory.creeps
      if not Game.creeps[name]?
        delete Memory.creeps[name]

  InitDefcon: ->
    #Determine what to do
    @defcon = DEFCON3

  InitTarget: ->
    Transporter.RealocAll()
    Defender.GetGlobalTarget()

  InitSpawners: ->
    @spawners = (new Spawner spawn, @lvl for spawn of Game.spawns)

  InitCreeps: ->
    @creeps = (Creep.Get creep, @lvl for creep of Game.creeps)

module.exports = SurvivalMain