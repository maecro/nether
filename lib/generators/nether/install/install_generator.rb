module Nether
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def install_pageless
      copy_file "jquery.pageless.js.erb", "app/assets/javascripts/jquery.pageless.js.erb"
      copy_file "load.gif", "app/assets/images/load.gif"
    end
  end
end