require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the disco plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the disco plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Disco'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

PKG_FILES = FileList[
  '[a-zA-Z]*',
  'generators/**/*',
  'lib/**/*',
  'rails/**/*',
  'tasks/**/*',
  'test/**/*'
]

spec = Gem::Specification.new do |s|
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

desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end
