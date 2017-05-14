require 'rubygems'
require 'geminabox'
require 'rack/auth/ldap'

use Rack::Auth::Ldap, file: 'config.yml'

Geminabox.data = '/opt/geminabox-data'
run Geminabox::Server