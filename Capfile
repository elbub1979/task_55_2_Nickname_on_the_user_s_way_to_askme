require 'capistrano/setup'
require 'capistrano/deploy'

set :rbenv_type, :user
set :rbenv_ruby, '3.0.2'

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rbenv'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
