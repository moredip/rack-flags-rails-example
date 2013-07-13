# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

use RackFlags::RackMiddleware, yaml_path: File.expand_path('../config/feature_flags.yaml',__FILE__)

map '/feature_flags' do
  run RackFlags::AdminApp.new
end

map '/' do 
  run Rails.application
end
