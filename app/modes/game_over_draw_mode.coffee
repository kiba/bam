class GameOverDrawMode
  constructor: (@p5) ->
    @texts = new TextOptionsDraw(@p5,100,100,18)

  draw: (object) ->
    @p5.background(0)
    @texts.draw(object.options,object.pointer)

  process: (mode) ->
    switch(mode.get_queue())
      when "draw"
        this.draw(mode.options)