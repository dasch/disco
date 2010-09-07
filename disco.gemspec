
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
  s.version = "0.0.1"
  s.author = "Daniel Schierbeck"
  s.email = "daniel.schierbeck@gmail.combination"
  s.homepage = "http://github.com/dasch/disco"
  s.platform = Gem::Platform::RUBY
  s.summary = "Adds a simple Markdown helper to your Rails views."
  s.files = PKG_FILES.to_a
  s.require_path = "lib"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end
