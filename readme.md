Roots Rails
-----------

This gem adds [roots-css](https://github.com/jenius/roots-css) to your rails app, and adds support for the more concise and jade-like [slim](http://slim-lang.com/).

**NOTE:** Because of an open issue in ruby-stylus, the using the asset pipeline in rails stylus code is currently not supported. Looking into fixing this is fairly high on my prioirities list, let me know if you want to get involved.

### Installation

- Add `gem 'roots-rails'` to your gemfile.
- run `bundle`
- run `rails g roots:install`
- profit

Currently, this gem also **depends on node.js**, but this will be phased out in the future. Just makes life easier for the first release. Luckily, node.js is [stupid easy to install](http://nodejs.org/), and is not required on any production servers, just for keeping the roots-css library up to date.