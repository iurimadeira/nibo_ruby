Gem::Specification.new do |s|
  s.name        = 'nibo'
  s.version     = '0.0.1'
  s.date        = '2016-08-30'
  s.summary     = 'Ruby Nibo API'
  s.description = "Ruby API for Nibo platform"
  s.authors     = ["Iuri Madeira", "Pedro Pazello"]
  s.email       = 'iurimadeira@gmail.com'
  s.files       = ["lib/nibo.rb"]
  s.homepage    = 'http://rubygems.org/gems/nibo_ruby'
  s.license     = 'MIT'

  s.test_files = s.files.grep(%r{^(spec|features)/})

  s.add_dependency "rest-client"

  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry-byebug"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"

end
