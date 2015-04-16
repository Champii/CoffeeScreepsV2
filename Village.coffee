class Village

  @PHASE_INIT: 2
  @PHASE_PROTEC: 1
  @PHASE_EXPAN: 0

	constructor: ->

  DeterminePhase: ->
    @phase = @PHASE_INIT

module.exports = Village
