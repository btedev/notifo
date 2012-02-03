require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "notifo"
    gem.summary = "A library for using the Notifo iPhone notifications service."
    gem.description = "A library for using Notifo. Notifo is a way for users to receive mobile notifications for anything, more at http://notifo.com. This gem uses John Nunemaker's awesome HTTParty. This is a fork of https://github.com/jot/notifo."
    gem.email = "barrye@gmail.com"
    gem.homepage = "https://github.com/btedev/notifo"
    gem.authors = ["Jonathan Markwell","Barry Ezell"]
    # gem dependencies should be defined in Gemfile
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "notifo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
