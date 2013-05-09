class AsciiAnimator
  constructor: (id, @frames, @wait, @direction, @reverse) ->
    @element = document.getElementById(id)
    @index = 0

  run: ->
    @element.innerHTML = @frames[@index].replace(new RegExp(' ', 'g'), '&nbsp;');
    @setNextIndex()
    self = this
    setTimeout (() ->
      self.run()
    ), @wait

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

window.AsciiAnimator = AsciiAnimator