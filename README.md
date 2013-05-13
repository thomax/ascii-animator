# ascii-animator

A flimsy lil thing for animating a series of ascii characters on an html page.

## Example

    <div id='one'></div>
    <script type="text/javascript" src="lib/ascii-animator.js"></script>
    <script type="text/javascript">
      frames = ['▁', '▃', '▄', '▅', '▆', '▇'];
      new AsciiAnimator('one', frames, 120, 'right', false).run();
    </script>

See index.html for more inspiration. Or go it alone :-)
