module Nether
  class InstallGenerator < Rails::Generators::Base
    def install_pageless
      get "https://raw.github.com/jney/jquery.pageless/master/lib/jquery.pageless.min.js", "app/assets/javascripts/jquery.pageless.min.js"
    end
  end
end