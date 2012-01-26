module Nether
  class StickifyGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def stickify
      copy_file "stickify.css", "app/assets/stylesheets/stickify.css"
    end
  end
end