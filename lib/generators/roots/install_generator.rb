
module Roots
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Loads sass framework, replaces layout, removes public/index.html"
      source_root File.expand_path('../../templates', __FILE__)

      def replace_layout
        remove_file "app/views/layouts/application.html.erb"
        copy_file "layouts/layout.html.haml", "app/views/layouts/application.html.haml"
        copy_file "layouts/config.html.haml", "app/views/layouts/_config.html.haml"
      end

      def replace_application_css
        remove_file "app/assets/stylesheets/application.css"
        copy_file "layouts/application.sass", "app/assets/stylesheets/application.sass"
      end

      def install_dependencies
        copy_file "scripts/selectivizr.js", "vendor/assets/javascripts/selectivizr.js"
        copy_file "scripts/pie.htc", "vendor/assets/javascripts/pie.htc"
        remove_file "public/favicon.ico"
        copy_file "favicon.ico", "public/favicon.ico"
        directory "images", "public/roots"
        copy_file "noise.png", "app/assets/images/noise.png"
      end

      def remove_defaults
        remove_file "app/assets/rails.png"
        remove_file "public/index.html"
        say "\nComplete! Make sure to visit these two files to configure things: \n  - app/views/layouts/config.html.haml\n  - app/assets/stylesheets/application.sass\n\n", "\e[32m"
      end

    end
  end
end