# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path("config/application", __dir__)

begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new
rescue LoadError
  # running in an environment without the rubocop gem enabled
end

GovspeakPreview::Application.load_tasks

Rake::Task[:default].clear
task default: %i[rubocop spec]
