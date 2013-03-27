require "nether"
require "rails"

module Nether
  class Engine < Rails::Engine
    initializer 'nether.helper' do |app|
      ActionView::Base.send :include, NetherHelper
    end

    initializer 'nether.action_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        include NetherController
      end
    end

  end
end
