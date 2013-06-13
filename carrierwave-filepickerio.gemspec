# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "carrierwave-filepickerio/version"

Gem::Specification.new do |s|
  s.name        = "carrierwave-filepickerio"
  s.version     = CarrierWave::Filepickerio::VERSION
  s.authors     = ["Adam Burmister"]
  s.email       = ["adam.burmister@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{FilePicker.io support for CarrierWave}
  s.description = %q{Upload files to your ruby web application using the FilePicker.io client-side JS libraries, picking files from not only the local file system, but also online services such as Facebook, Dropbox, Gmail, Flickr, and many more.}

  s.rubyforge_project = "carrierwave-filepickerio"

  s.files         = `git ls-files`.split("\n")
  s.files.reject! { |fn| fn.include? "example" } # don't include our example rails project which is just for testing

  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rails"
  s.add_dependency "filepickerio_rails", "~> 0.1"
  s.add_dependency "carrierwave"
end
