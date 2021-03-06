goliath-reverse-proxy
=====================

Goliath reverse proxy middleware. Forwards all requests to another server.

Dependencies
============
All the work is done by em-http-request, em-syncrony, and goliath.


Install
=======

  gem install goliath-reverse-proxy

or add to your Gemfile

  gem 'goliath-reverse-proxy'


Example
=======

```ruby
require 'goliath'
require 'goliath/rack/reverse_proxy'

class Proxy < Goliath::API
  # Include other middleware here before the proxy
  # Params is required to pass along data
  use Goliath::Rack::Params
  use Goliath::Rack::ReverseProxy, base_url: 'http://127.0.0.1:8000'

  def response(env)
    [200, {}, []]
  end
end
```


Optionally you can add an exception list

```ruby
use Goliath::Rack::ReverseProxy, base_url: 'http://localhost:3000', except: ['/events/']
```

Any URI starting with '/events/' will be handled by the goliath server and everything else will be reverse proxied as normal.
