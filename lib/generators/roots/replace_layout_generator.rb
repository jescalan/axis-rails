
module Roots
  module Generators
    class ReplaceLayoutGenerator < Rails::Generators::Base
      desc "replaces the default layout with roots' awesome one"
      source_root File.expand_path('../../templates', __FILE__)

      def replace_layout
        remove_file "app/views/layouts/application.html.erb"
        copy_file "layouts/layout.html.haml", "app/views/layouts/application.html.haml"
        copy_file "layouts/config.html.haml", "app/views/layouts/_config.html.haml"
      end

    end
  end
end