module Nether
  class Engine < Rails::Engine
    initialize "nether.load_app_instance_data" do |app|
      Nether.setup do |config|
        config.app_root = app.root
      end
    end
    
    initialize "nether.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
  end
end