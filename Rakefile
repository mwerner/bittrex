require 'bundler/gem_tasks'
require 'figaro'

Figaro.application.path = File.expand_path('../config/application.yml', __FILE__)
Figaro.load

namespace :bittrex do
  task :console do
    exec "irb -r bittrex -I ./lib"
  end
end
