Roots-Rails
===========

This gem can be used to bootstrap your rails app with the roots sass framework, layout, and assets.

### Setup

To add roots to your application, just add `gem 'roots'` under the assets group in your Gemfile. Make sure that you also add `gem 'haml'` if you have not already, as the roots layout files are haml (could be ported to erb as well if there's demand). Then run `bundle` and the framework will be available to you using `@import roots`.

It is **strongly recommended** that you use the roots install generator as well, which sets up the layout, images, icons, and older browser fixes.

### Generators

Situation: you just made a new rails application and you want to bootstrap it with roots. We've got a generator for that. Just hit the command below, which will replace the default layout, generate the sass framework in your asset pipeline, and remove `public/index.html`, giving you a little boost forwardin your dev cycle.

    rails g roots:install

If you would like to jump in and edit the source directly, you can generate the framework so that it shows up in your asset pipeline. Just run

    rails g roots:framework

### Feedback

If there's anything else you'd like to see here, anything is broken, or you have any suggestions, we would be more than happy to take care of them for you. Just drop an issue in our wonderful issues section and we'll jump right on that.