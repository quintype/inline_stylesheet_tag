# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inline_stylesheet_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "inline_stylesheet_tag"
  spec.version       = InlineStylesheetTag::VERSION
  spec.authors       = ["Tejas Dinkar"]
  spec.email         = ["tejas@gja.in"]

  spec.summary       = %q{Inline your short CSS files (like fonts)}
  spec.description   = %q{This gem is used to inline short CSS stylesheets such as google fonts. This can drastically improve page load times on slow networks.}
  spec.homepage      = "https://github.com/quintype/inline-stylesheet-tag"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.9'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
