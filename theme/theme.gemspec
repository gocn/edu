# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "theme"
  spec.version       = "0.1.0"
  spec.authors       = ["rc.", "Asta Xie"]


  spec.summary       = "Dedicated theme for GoCN Education."
  spec.homepage      = "https://edu.gocn.io"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
