
require 'rake'

PKG_FILES = FileList[
  '[a-zA-Z]*',
  'generators/**/*',
  'lib/**/*',
  'rails/**/*',
  'tasks/**/*',
  'test/**/*'
]

SPEC = Gem::Specification.new do |s|
  s.name = "disco"
  s.version = "0.0.2"
  s.author = "Daniel Schierbeck"
  s.email = "daniel.schierbeck@gmail.combination"
  s.homepage = "http://github.com/dasch/disco"
  s.platform = Gem::Platform::RUBY
  s.summary = "Adds a simple Markdown helper to your Rails views."
  s.files = PKG_FILES.to_a
  s.add_dependency('rdiscount', '~> 1.6')
  s.add_dependency('activesupport', '~> 3.0')
  s.add_dependency('actionpack', '~> 3.0')
  s.require_path = "lib"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end
