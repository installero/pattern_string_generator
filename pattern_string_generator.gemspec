$:.push File.expand_path('../lib', __FILE__)
require 'pattern_string_generator/version'

Gem::Specification.new do |s|
  s.name = 'pattern_string_generator'
  s.date = '2017-04-01'
  s.summary = 'Generates random string from a given pattern'
  s.description = <<-EOF
    Generates random string from a given pattern:

    '(Hello|Hi), World!' -> 'Hi, World!'
  EOF
  s.authors = ['Eugene Zolotarev', 'Vadim Venediktov']
  s.email = 'eugzol@gmail.com'
  s.homepage = 'http://rubygems.org/gems/pattern_string_generator'
  s.license = 'MIT'

  s.files = [
    'lib/pattern_string_generator/version.rb',
    'lib/pattern_randomizer.rb',
    'lib/pattern_string_generator.rb'
  ]

  s.version = PatternStringGenerator::VERSION
end
