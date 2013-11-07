$ = jQuery

$.fn.extend

  tumblrRandomPosts: (options) ->

    # Default settings
    settings =
      blogName: "yahoo.tumblr.com"
      appKey: "NOTHING"
      debug: false

    # Merge default settings with options.
    settings = $.extend settings, options

    # Simple logger.
    log = (msg) ->
      console?.log msg if settings.debug


    return @each ()->
      self = this
      $.ajax "http://api.tumblr.com/v2/blog/#{settings.blogName}/posts?api_key=#{settings.appKey}",
        type: 'GET'
        dataType: 'jsonp'
        data: { get_param: 'value', type: 'text' }
        success: (data, textStatus, jqXHR) ->
          console.log data
          random_number = Math.floor(Math.random() * data.response.total_posts)
          $.ajax "http://api.tumblr.com/v2/blog/#{settings.blogName}/posts?api_key=#{settings.appKey}",
            type: 'GET'
            dataType: 'jsonp'
            data: {get_param: 'value', offset: random_number,limit: '1',type: 'text'}
            success: (data2, textStatus, jqXHR) ->
              content = data2.response.posts[0].body
              $(self).append("<div>" + content + "</div>")
              console.log data2

      log "BlogName is: #{settings.blogName}"
