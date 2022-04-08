class SentryCustomHelper < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))
  def copy_initializer
    copy_file 'sentrycustomhelper.rb', 'config/initializers/sentry_custom_helper.rb'
  end
end