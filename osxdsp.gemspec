# coding: utf-8
require File.expand_path('lib/osxdsp')

Gem::Specification.new do |spec|
  spec.name          = "osxdsp"
  spec.version       = OSXDsp::VERSION
  spec.authors       = ["Yusuke Endoh"]
  spec.email         = ["mame@ruby-lang.org"]

  spec.summary       = %q{`/dev/dsp` emulator for os x}
  spec.description   = %q{`/dev/dsp` emulator for os x}
  spec.homepage      = "https://github.com/mame/osxdsp/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
