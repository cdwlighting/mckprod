Modernizr.load
    load: '//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'
    complete: =>
      if not window.jQuery
        Modernizr.load '/assets/jquery.min.js'
