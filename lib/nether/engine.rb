require "nether"
require "rails"

module Nether
  class Engine < Rails::Engine
    initializer 'nether.helper' do |app|
      ActionView::Base.send :include, NetherHelper
    end
  end
end