set :rvm_ruby_string, '1.9.3@dev'
set :rvm_install_type, :stable
set :rvm_install_shell, :zsh
require "rvm/capistrano"


set :redmine_site, 'http://localhost:3000'
set :redmine_token, '4639e0d4a5f7ae7f7024f3e74c6780bdf1dc95aa'
set :redmine_project, 1
set :redmine_from_status, 1
set :redmine_to_status, 3


default_run_options[:pty] = true

set :application, "dev.kurepin.com"
set :repository,  "git@github.com:foxweb/dev.kurepin.com.git"

set :scm, :git
set :user, 'foxweb'
set :use_sudo, false
set :deploy_to, "/home/foxweb/work/deploy/#{application}"
set :deploy_via, :remote_cache

# role :web, "dev.kurepin.com"
# role :app, "dev.kurepin.com"
# role :db,  "dev.kurepin.com", :primary => true

role :web, "localhost"
role :app, "localhost"
role :db,  "localhost", :primary => true

set :scm_user, "deployer"
set :branch, "master"
ssh_options[:forward_agent] = true

before 'deploy:setup', 'rvm:install_rvm'

after "deploy", "deploy:bundle_gems"
after "deploy:bundle_gems", "deploy:restart"
after "deploy", "redmine:update"

namespace :deploy do
  task :bundle_gems do
    run "cd #{deploy_to}/current && bundle install"
  end
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

