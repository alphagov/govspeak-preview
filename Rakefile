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

# Rspec will clobber the default task
Rake::Task[:default].clear if Rake::Task.task_defined?(:default)
task default: %i[rubocop spec]
