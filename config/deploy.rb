require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, "poll_spark"
set :repository,  "git://github.com/arsena21/poll_spark.git"

set :scm, :git
set :rvm_type, :system

ssh_options[:forward_agent] = true
default_run_options[:pty] = true


role :web, "178.79.172.111"               # Your HTTP server, Apache/etc
role :app, "178.79.172.111"               # This may be the same as your `Web` server
role :db,  "178.79.172.111", :primary => true # This is where Rails migrations will run

set :deploy_to, '/home/poll_spark'

set :rails_env, 'production'
set :branch, 'master'
set :use_sudo, false

set :user, 'poll_spark'
set :port, 22

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"
after 'deploy', 'deploy:migrate'

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
