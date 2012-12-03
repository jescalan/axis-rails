module Roots
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Installs the roots-rails system"
      source_root File.expand_path('../../templates', __FILE__)

      def replace_layout
        remove_file "app/views/layouts/application.html.erb"
        copy_file "layouts/layout.html.slim", "app/views/layouts/application.html.slim"
      end

      def replace_application_css
        remove_file "app/assets/stylesheets/application.css"
        copy_file "layouts/application.css.styl", "app/assets/stylesheets/application.css.styl"
        copy_file "layouts/_settings.styl", "app/assets/stylesheets/_settings.styl"
      end

      def install_dependencies
        empty_directory 'public/js'
        empty_directory 'public/img'
        copy_file "pie.htc", "public/js/pie.htc"
        remove_file "public/favicon.ico"
        copy_file "favicon.ico", "public/favicon.ico"
        copy_file "noise.png", "public/img/noise.png"
      end

      def add_gems
        append_to_file "Gemfile", "\ngem 'slim'"
        append_to_file "Gemfile", "\ngem 'stylus', group: :assets"
        run 'bundle'
      end

      # note: it's possible to stream from the npm registry with ruby and eliminate
      # this dependency on node (https://github.com/railsjedi/ruby-stylus-source/blob/master/Rakefile#L23)
      def install_roots_css_library
        empty_directory 'node_modules'
        run 'npm install roots-css'
      end

      def add_stylus_initializer
        create_file 'config/initializers/roots.rb'
        append_file 'config/initializers/roots.rb', "Stylus.use 'roots-css'"
      end

      def remove_defaults_and_complete
        remove_file "app/assets/rails.png"
        say "\nComplete! Make sure to visit these two files to configure things: \n  - app/views/layouts/config.html.slim\n  - app/assets/stylesheets/application.css.styl\n\n", "\e[32m"
      end

    end
  end
end