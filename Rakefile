desc 'Run specs'
task :spec do
  require 'lib/baconmocha'
  sh 'bacon -q spec/spec.rb'
end
task :default => :spec

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "baconmocha"
    s.summary = "Gluing Bacon and Mocha since... 2009"
    s.email = "pedrobelo@gmail.com"
    s.homepage = "http://github.com/pedro/baconmocha"
    s.description = "Also, a serious runner for the Lack of Creativity Ruby Libraries
    Award, together with file-tail and todo"
    s.authors = ["Pedro Belo"]
    s.add_dependency 'bacon'
    s.add_dependency 'mocha'
    s.rubyforge_project = 'baconmocha'
  end
  Jeweler::RubyforgeTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end