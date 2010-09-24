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

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "disco"
    gem.summary = "Adds a simple Markdown helper to your Rails views."
    gem.description = "Adds a simple Markdown helper to your Rails views."
    gem.email = "daniel.schierbeck@gmail.com"
    gem.homepage = "http://github.com/dasch/disco"
    gem.authors = ["Daniel Schierbeck"]
    gem.add_dependency('rdiscount', '~> 1.6')
    gem.add_dependency('activesupport', '~> 3.0')
    gem.add_dependency('actionpack', '~> 3.0')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
