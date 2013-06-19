# -*- encoding: utf-8 -*-

$LOAD_PATH.unshift  File.expand_path('../lib', __FILE__)
require 'bit-struct'
Gem::Specification.new('bit-struct', BitStruct::VERSION) do |s|
  s.summary = "Library for packed binary data stored in ruby Strings"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joel VanderWerf"]
  s.description = "Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files.\n"
  s.email = "vjoel@users.sourceforge.net"
  
  s.homepage = "http://rubyforge.org/projects/bit-struct/"
  s.licenses = ["Ruby license"]
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 1.9.2"
  s.rubyforge_project = "bit-struct"

  s.files = Dir['lib/**/*.rb'] + %w(History.txt Rakefile  README.txt TODO)
  s.test_files = Dir["test/*.rb"]
end
