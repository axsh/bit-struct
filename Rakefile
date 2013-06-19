# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

$LOAD_PATH.unshift  File.expand_path('../lib', __FILE__)
require 'bit-struct'

require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'
require 'rake/clean'

CLOBBER << %w(pkg)

task :default => 'test'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

spec = Gem::Specification.new do |s|
  s.name = 'bit-struct'
  s.authors = 'Joel VanderWerf'
  s.email = 'vjoel@users.sourceforge.net'
  s.homepage = 'http://rubyforge.org/projects/bit-struct/'
  s.license = 'Ruby license'
  s.version = BitStruct::VERSION
  s.rubyforge_project = 'bit-struct'
  s.summary = "Library for packed binary data stored in ruby Strings"
  s.description = <<END
Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files.
END
  s.required_ruby_version = '>= 1.9.2'

  s.files = Dir['lib/**/*.rb'] + %w(History.txt Rakefile  README.txt TODO)
  s.test_files = Dir["test/*.rb"]
end

Gem::PackageTask.new(spec) do |pkg|
end

desc "Generate or update .gemspec file"
task :gemspec do
  File.open(spec.name + ".gemspec", 'w'){ |f|
    f.write(spec.to_ruby)
  }
end
