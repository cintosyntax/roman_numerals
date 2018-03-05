
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "roman_numerals/version"

Gem::Specification.new do |spec|
  spec.name          = "roman_numerals"
  spec.version       = RomanNumerals::VERSION
  spec.authors       = ["Edwin Mak"]
  spec.email         = ["cintosyntax@gmail.com"]

  spec.summary       = %q{A gem that decorates integers and strings to convert from and to roman numerals}
  spec.description   = %q{A gem that decorates integers and strings to convert from and to roman numeral}
  spec.homepage      = "https://github.com/cintosyntax/roman_numerals"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "0.52.1"
end
