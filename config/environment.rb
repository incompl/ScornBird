# Load the rails application
require File.expand_path('../application', __FILE__)

gem "twitter", "1.6.0", :require_as => "twitter-1.6.0"

# Initialize the rails application
ScornBird::Application.initialize!
