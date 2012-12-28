class GameMode
  constructor:(@mode) ->
    @map = new Map(40,30)
    @queue = [(name: "initialize")]
    @units = new UnitsManager(this)
  run: () ->
    @units.run()
  get_queue: () ->
    if @queue.length != 0
      return @queue.pop()
    false
  update_unit: (unit) ->
    @queue.push((name: "unit", unit: unit))

  note_death: (target) ->
    @queue.push((name: "death", x: target.x, y: target.y, map: @map.map))

  bullet_add: (target) ->
    location = @map.add_bullet(target)
    @queue.push((name: "bullet", x: location.x, y: location.y))
  process: (result) ->