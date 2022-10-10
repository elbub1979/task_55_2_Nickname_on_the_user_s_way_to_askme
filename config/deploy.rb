# frozen_string_literal: true

lock '~> 3.17.0'

set :application, 'askme'
set :repo_url, 'git@github.com:elbub1979/task_55_2_Nickname_on_the_user_s_way_to_askme.git'

set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 5

set :branch, 'main'
