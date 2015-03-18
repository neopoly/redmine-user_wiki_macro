# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "user_wiki_macro/version"
require "user_wiki_macro/infos"

Gem::Specification.new do |spec|
  spec.name          = "redmine-user_wiki_macro"
  spec.version       = UserWikiMacro::VERSION
  spec.authors       = UserWikiMacro::Infos::AUTHORS.keys
  spec.email         = UserWikiMacro::Infos::AUTHORS.values
  spec.summary       = UserWikiMacro::Infos::DESCRIPTION
  spec.description   = UserWikiMacro::Infos::DESCRIPTION
  spec.homepage      = UserWikiMacro::Infos::URL
  spec.license       = UserWikiMacro::Infos::LICENSE

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop"
end
