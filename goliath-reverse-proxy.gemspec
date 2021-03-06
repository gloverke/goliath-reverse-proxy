require 'rubygems'

Gem::Specification.new do |gem|
  gem.name      = 'goliath-reverse-proxy'
  gem.version   = '0.2.2'
  gem.authors   = ["Daniel Farrell","Kris Glover"]
  gem.email     = 'gloverkcn@gmail.com'
  gem.homepage  = 'https://github.com/danielfarrell/goliath-reverse-proxy'
  gem.summary   = 'Reverse proxy middlware for Goliath'
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- spec/*`.split("\n")

  gem.add_dependency "goliath"
  gem.add_dependency "em-synchrony"
  gem.add_dependency "em-http-request", "~> 1.0.3"

  gem.add_development_dependency "rspec", "~> 2.10"

  gem.extra_rdoc_files = ['README.md']

  gem.description = <<-EOF
    Turns Goliath into a reverse proxy server. Useful when paired with other
    middleware, such as authentication.
  EOF
end
