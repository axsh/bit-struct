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

spec = Gem::Specification.load(File.expand_path('../bit-struct.gemspec', __FILE__))
Gem::PackageTask.new(spec) do |pkg|
end
