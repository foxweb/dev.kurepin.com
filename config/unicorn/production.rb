app_root    = File.expand_path(File.dirname(__FILE__)).gsub('/config/unicorn', '')

pid_file    = "#{app_root}/tmp/pids/unicorn.pid"
socket_file = "#{app_root}/tmp/sockets/unicorn.sock"

timeout 30
worker_processes 4

pid pid_file
listen 9024

preload_app true

before_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end
end

after_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end

