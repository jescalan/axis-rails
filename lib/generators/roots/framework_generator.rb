
module Roots
  module Generators
    class FrameworkGenerator < Rails::Generators::Base
      desc "Places roots in your asset pipeline so you can edit it"
      source_root File.expand_path('../../templates', __FILE__)

      def generate
        if yes? "This will replace your application.css file - is this ok / have you backed it up? [y/n]", "\e[31m"
          remove_file "app/assets/stylesheets/application.css"
          copy_file "layouts/application.sass", "app/assets/stylesheets/application.sass"
          directory "sass", "app/assets/stylesheets"
        end
      end

    end
  end
end