class AsciiAnimator
  constructor: (@element, @frames, @wait, @direction, @reverse) ->
    @index = 0

  run: ->
    @stop()
    @element.innerHTML = @frames[@index].replace(new RegExp(' ', 'g'), '&nbsp;');
    @setNextIndex()
    self = this
    @timer = setTimeout (() ->
      self.run()
    ), @wait

  stop: ->
    clearTimeout(@timer)

  setNextIndex: ->
    if (@direction == 'right')
      if (@index == @frames.length-1)
        if @reverse
          @direction = 'left'
        else
          @index = 0
      else
        @index++
    else if (@direction == 'left')
      if (@index == 0)
        if @reverse
          @direction = 'right'
        else
          @index = @frames.length-1
      else
        @index--

module.exports = AsciiAnimator