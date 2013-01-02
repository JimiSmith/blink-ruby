# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blink1/version'

Gem::Specification.new do |gem|
  gem.name          = "blink1"
  gem.version       = Blink1::VERSION
  gem.authors       = ["James Smith"]
  gem.email         = ["smithj002@gmail.com"]
  gem.description   = %q{A ruby gem for interacting with the blink(1) usb thingy}
  gem.summary       = %q{A ruby gem for interacting with the blink(1) usb thingy. It uses blink-tool for all the hard work}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
