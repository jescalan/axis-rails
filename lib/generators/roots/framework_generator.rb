
module Roots
  module Generators
    class FrameworkGenerator < Rails::Generators::Base
      desc "Places roots in your asset pipeline so you can edit it"
      source_root File.expand_path('../../templates', __FILE__)

      def generate
        say_notice = false

        if yes? "This will replace your application.css file - is this ok / have you backed it up? [y/n]", "\e[31m"

          if File.exist? "app/assets/stylesheets/application.css"
            remove_file "app/assets/stylesheets/application.css"
            copy_file "layouts/application.sass", "app/assets/stylesheets/application.sass"
            say_notice = true
          end
          
          directory "sass", "app/assets/stylesheets"
        end
        
        say "\nComplete! Make sure to visit application.sass to configure.\n\n", "\e[32m" if say_notice

      end

    end
  end
end