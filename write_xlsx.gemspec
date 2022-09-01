# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'write_xlsx/version'

Gem::Specification.new do |gem|
  gem.name          = "write_xlsx"
  gem.version       = WriteXLSX_VERSION
  gem.authors       = ["Hideo NAKAMURA"]
  gem.email         = ["nakamura.hideo@gmail.com"]
  gem.description   = "write_xlsx is a gem to create a new file in the Excel 2007+ XLSX format."
  gem.summary       = "write_xlsx is a gem to create a new file in the Excel 2007+ XLSX format."
  gem.homepage      = "https://github.com/cxn03651/write_xlsx#readme"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'rubyzip', '>= 1.0.0'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'byebug'
  gem.add_development_dependency 'rake'
  gem.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md",
    "Changes"
  ]
end
