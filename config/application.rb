require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Aica
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.i18n.default_locale = :es
    config.i18n.fallbacks = true

    config.active_job.queue_adapter = :deleyed_job
    config.action_mailer.default_url_options = { host: 'aica.cu' }

    config.consider_all_requests_local = true

	# mailer previews
	config.action_mailer.show_previews = true
	config.action_mailer.preview_path = "#{Rails.root}/lib/mailer_previews"
  end
end
