# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "pi_zero_w_manager"

set :repository, '.'
set :scm, :copy
set :deploy_to, '/home/pi/www/pi_zero_w_manager'
set :exclude_dir, %w(log tmp)
set :passenger_in_gemfile, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
