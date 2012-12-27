class GameDrawMode
  constructor: (@p5) ->
  initial_draw: (mode) ->
    @p5.background(0)
    mapDraw(mode.map.map,@p5)
    for u in mode.units.units
      unitDraw(u,@p5)
  update_units: (mode) ->
    for u in mode.units.units
      unitDraw(u,@p5)
  process: (mode) ->
    switch(mode.get_queue())
      when "update"
        this.initial_draw(mode)
      when "update_unit"
        this.update_units(mode)