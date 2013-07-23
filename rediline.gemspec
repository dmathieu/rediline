# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'rediline/version'

Gem::Specification.new do |s|
  s.name         = "rediline"
  s.version      = Rediline::VERSION
  s.authors      = ["Damien MATHIEU"]
  s.email        = "42@dmathieu.com"
  s.homepage     = "https://github.com/dmathieu/rediline"
  s.summary     = "Redis Backed Timeline"
  s.description = "Timeline Library"

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  s.add_dependency "redis", '>= 2'
  s.add_dependency "redis-namespace", '>= 0.10'
  s.add_dependency "json"
  s.add_dependency "i18n"
  s.add_dependency "activemodel"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "mocha"
  s.add_development_dependency "timecop"
end
