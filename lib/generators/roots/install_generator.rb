
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

      def install_dependencies
        copy_file "scripts/selectivizr.js", "vendor/assets/javascripts/selectivizr.js"
        copy_file "scripts/pie.htc", "vendor/assets/javascripts/pie.htc" # asset-url('pie.htc', javascript)
        remove_file "public/favicon.ico"
        copy_file "favicon.ico", "public/favicon.ico"
        directory "images", "public/roots"
      end

      def install
        # logic here
      end

    end
  end
end