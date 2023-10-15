require "rubygems"
require "geminabox"

Geminabox.data = "/var/geminabox"
# Geminabox.rubygems_proxy = true

use Rack::Session::Pool, expire_after: 1000
use Rack::Protection

run Geminabox::Server
