Roots-Rails
===========

With this gem, you can use to inject roots' sass framework and dynamic layout files into your rails app. To use it in your app, just add `gem 'roots'` to your Gemfile and `bundle`, then add `*= require 'roots'` to your application.css file - this will immediately give you access the the full sass framework.

### Generators

If you would like to jump in and edit the sass files, you can generate them so that they show up in your asset pipeline. Just run

    rails g roots:sass_framework

If you want to use roots' awesome default layout file (which is more or less the html5 boilerplate on steroids), run the below command. Note that the default layout file **will be replaced** when you run this, so make sure to run it at the beginning of your project or back up your layout file beforehand.

    rails g roots:replace_layout

Situation: you just made a new rails application and you want to bootstrap it with roots. We've got a generator for that. Just hit the command below, which will replace the default layout, generate the sass framework in your asset pipeline, and remove `public/index.html`, giving you a little boost forwardin your dev cycle.

    rails g roots:install

### Feedback

If there's anything else you'd like to see here, anything is broken, or you have any suggestions, we would be more than happy to take care of them for you. Just drop an issue in our wonderful issues section and we'll jump right on that.