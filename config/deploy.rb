# encoding: utf-8
set :rvm_ruby_string, '1.9.3@dev'
set :rvm_install_type, :stable
set :rvm_install_shell, :zsh
require 'rvm/capistrano'

default_run_options[:pty] = true

set :application, 'dev.kurepin.com'

set :user, 'foxweb'
set :use_sudo, false
set :deploy_to, "/home/foxweb/work/deploy/#{application}"
set :deploy_via, :remote_cache

role :web, 'foxweb.dyndns-home.com'
role :app, 'foxweb.dyndns-home.com'
role :db,  'foxweb.dyndns-home.com', primary: true

set :scm, :git
set :repository,  'git@github.com:foxweb/dev.kurepin.com.git'
set :git_enable_submodules, 1
set :branch, 'master'

ssh_options[:forward_agent] = true

before 'deploy:setup', 'rvm:install_rvm'

namespace :deploy do
  task :bundle_gems do
    run "cd #{deploy_to}/current && bundle install"
  end

  task :finalize_update do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/settings.local.yml #{release_path}/config/settings.local.yml"
    run "ln -nfs #{shared_path}/assets #{release_path}/public/assets"
    run "ln -nfs #{shared_path}/tmp #{release_path}/tmp"
    run "ln -nfs #{shared_path}/log #{release_path}/log"
  end

  task :precompile_assets do
    run "cd #{release_path}; bundle exec rake assets:precompile RAILS_ENV=production"
  end

  task :start do ; end
  task :stop do ; end
  task :restart, roles: :app, except: { no_release: true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
