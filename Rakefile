# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

require 'rubygems'
require 'rubyforge'
require 'psych'

require 'syck'
require 'yaml'
YAML::ENGINE.yamler = "syck" if RUBY_VERSION >= "1.9.2"

begin
  require 'bones'
rescue LoadError
  raise RuntimeError, '### please install the "bones" gem ###'
end

ensure_in_path 'lib'
require 'bit-struct/bit-struct'

task :default => 'spec:run'

#task :default => 'test:run'
#task 'gem:release' => 'test:run'

Bones {
  name 'bit-struct'
  authors 'Joel VanderWerf'
  email 'vjoel@users.sourceforge.net'
  url 'http://rubyforge.org/projects/bit-struct/'
  version BitStruct::VERSION
  rubyforge.name 'bit-struct'
  summary "Library for packed binary data stored in ruby Strings"
  description <<END
Library for packed binary data stored in ruby Strings. Useful for accessing fields in network packets and binary files.
END
  changes File.read(history_file)[/^\w.*?(?=^\w)/m]

  spec.opts << '--color'
  test.files Dir["test/*.rb"]
}

task :release => ["gem:release", "doc:release"]

# EOF
