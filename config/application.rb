require_relative 'boot'
require          'rails/all'

Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 5.1
    config.active_record.sqlite3.represent_boolean_as_integer = true
  end
end
