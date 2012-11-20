Roots Rails
-----------

This gem can be used to bootstrap your rails app with the roots sass framework, layout, and assets.

### Setup

To add roots to your application, run `rails g roots:install` and I'll set up your app to work great with the roots css framework and templating languages. This command is destructive particularly to your main layout file and application.css file, so it's recommended that you run it at the beginning of your project or back up those two files beforehand.

The roots css  library will be automatically included in any stylus file you use. If you would like to jump in and edit the source directly, you can easily override any of the files in your asset pipeline. Check out the [roots-css repo](http://github.com/jenius/roots-css) to dive into the structure. Documentation for the css library will be available very soon.

Currently, this gem also **depends on node.js** and npm, but this will be phased out in the future. Just makes life easier for the first release.

### Feedback

If there's anything else you'd like to see here, anything is broken, or you have any suggestions, we would be more than happy to take care of them for you. Just drop an issue in our wonderful issues section and we'll jump right on that.