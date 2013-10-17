Axis Rails
----------

This gem adds support for stylus with the [axis css library](https://github.com/jenius/axis) to your rails app, and adds support for the more concise and jade-like [slim](http://slim-lang.com/), emulating the jade/stylus/axis stack in [roots](https://github.com/jenius/roots) as closely as possible.

### Installation

- Add `gem 'axis-rails'` to your gemfile.
- run `bundle`
- run `rails g axis:install`
- profit

Currently, this gem also **depends on node.js**, but this will be phased out in the future. Just makes life easier for the first release. Luckily, node.js is [stupid easy to install](http://nodejs.org), and is not required on any production servers, just for keeping axis library up to date locally.
