Axis Rails
----------

This gem adds support for stylus with the [axis css library](https://github.com/jenius/axis) to your rails app, and adds support for the more concise and jade-like [slim](http://slim-lang.com/), emulating the jade/stylus/axis stack in [roots](https://github.com/jenius/roots) as closely as possible.

### Why Should You Care?

Stylus is a super-powerful css preprocessor, and axis is a lightweight and extensive library on top of it, that has you covered everywhere from gradients to vendor prefixes to UI patterns, all cross-browser down through old IE.

If you use and enjoy [roots](http://roots.cx), this gem will create as familiar an environment for writing front-end code as is possible within rails.

### Installation

- Add `gem 'axis-rails'` to your gemfile.
- run `bundle`
- run `rails g axis:install`
- profit

Currently, this gem also **depends on node.js**, but this will be phased out in the future. Just makes life easier for the first release. Luckily, node.js is [stupid easy to install](http://nodejs.org), and is not required on any production servers, just for keeping axis library up to date locally.

### Usage

You can just throw `.styl` files into your `assets/stylesheets` folder and `@import` them into `application.css.styl` to load them into your application. If you are referencing images, use the `asset-url` or `asset-path` mixins just like you would with sass to make it cooperate with the asset pipeline. Everything else is more or less as you'd expect!

### License

Licensed [under MIT](license.md) - enjoy!
