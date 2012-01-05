require "nether"
require "rails"

module Nether
  class Engine < Rails::Engine
    initializer 'nether.helper' do |app|
      ActionView::Base.send :include, NetherHelper
    end
    
    initializer 'nether.controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        extend MyModule::ClassMethods
        include MyModule::InstanceMethods
      end
    end
    
  end
end