class TextOptions
  constructor: () ->
    @options = []
    @pointer = 0
    @length = 0
  add_text: (text) ->
    for t in text
      @options.push t
    @length = @options.length
  increase: () ->
    if @pointer < (@length - 1)
      @pointer += 1
    else
      @pointer = 0
  decrease: () ->
    if @pointer == 0
      @pointer = (@length - 1)
    else
      @pointer -= 1
  clean: () ->
    @options = []
  selected: () ->
    @options[@pointer]