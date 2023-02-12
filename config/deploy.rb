# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

set :application, "bank-pdf-generator"
set :repo_url, "https://github.com/hackclub/bank-pdf-generator.git"

set :branch, "#{ENV['BRANCH'] || "main"}"

set :deploy_to, "/home/deploy/bank-pdf-generator"

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor", "storage"
