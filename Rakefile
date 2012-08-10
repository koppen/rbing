require 'rubygems' unless ENV['NO_RUBYGEMS']
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

GEM = "rbing"
GEM_VERSION = "1.1.0"
AUTHOR = "Mike Demers"
EMAIL = "mike@9astronauts.com"
HOMEPAGE = "http://9astronauts.com/code/ruby/rbing"
SUMMARY = "A gem that provides an interface to Microsoft's Bing search API"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc", "LICENSE", 'TODO']
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.rdoc_options = ["--main", "README.rdoc"]
  
  s.add_dependency("httparty", [">= 0.4.0"])
  
  s.require_path = 'lib'
  s.autorequire = GEM
  s.files = %w(LICENSE README.rdoc Rakefile TODO) + Dir.glob("{bin,lib,spec}/**/*")
  
  s.executables = ["rbing"]
end

task :default => :spec

