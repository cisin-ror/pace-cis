require 'rails'

if ::Rails.version < "3.1"
  module PaceCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)

        def copy_jquery_nested
          copy_file "javascripts/pace.js", "public/javascripts/pace.js"
        end
      end
    end
  end
else
  module PaceCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)
        def add_assets
          if detect_js_format.nil?
            copy_file "javascripts/pace.js", "app/assets/javascripts/pace.js"
          else
            insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require pace\n", :after => "jquery_ujs\n"
          end
          if detect_css_format.nil?
            copy_file "stylesheets/jquery.notifications.css", "app/assets/stylesheets/jquery.notifications.css"
          else
            insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "#{detect_css_format[1]} require pace-theme-corner-indicator\n", :after => "require_self\n"
          end
        end


        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
        def detect_css_format
          return ['.css.scss', '*='] if File.exist?('app/assets/stylesheets/application.css.scss')
          return ['.css', '*='] if File.exist?('app/assets/stylesheets/application.css')
        end
      end
    end
  end
end
