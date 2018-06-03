
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nanojs_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "nanojs_rails"
  spec.version       = NanojsRails::VERSION
  spec.authors       = ["Ilya Osotov"]
  spec.email         = ["soten58@yandex.ru"]

  spec.summary       = %q{nanoJS with Rails assets pipeline}
  spec.description   = %q{nanoJS with Rails assets pipeline}
  spec.homepage      = "https://github.com/IlyaOsotov/nanojs_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
