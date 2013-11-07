tumblr-random-posts
===================

A simple jQuery plugin to display random Tumblr posts.

## Getting Started:
**tumblr-random-posts** works as any other jQuery plugin. You need to supply a few options before it can start working.

1. The name of the blog for which you want to show the posts.
2. The API key of your application (you can get this by registering at http://www.tumblr.com/oauth/apps)


Once you have this information, you can setup the plugin as below:

```javascript
<script>

$("#showPosts").tumblrRandomPosts({
    blogName: "yahoo.tumblr.com",
    appKey: "YOUR_API_KEY"
});

</script>

<div id="showPosts"></div>
```

The plugin will display a random post inside the `div` tag on each page reload.
If you want to see some debug information you can also supply `debug: true` when setting it up.

For a complete example see the `Test.html` file.

