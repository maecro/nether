module Nether
  class InstallGenerator < Rails::Generators::Base
    def install_pageless
      copy "templates/jquery.pageless.min.js", "app/assets/javascripts/jquery.pageless.min.js"
      copy "templates/load.gif", "app/assets/images/load.gif"
    end
  end
end