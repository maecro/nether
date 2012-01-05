module Nether
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def install_pageless
      copy_file "templates/jquery.pageless.min.js", "app/assets/javascripts/jquery.pageless.min.js"
      copy_file "templates/load.gif", "app/assets/images/load.gif"
    end
  end
end