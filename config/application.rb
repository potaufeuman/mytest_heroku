require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mytest
  class Application < Rails::Application
    # 言語ファイルを階層ごとに設定するための記述
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]

    # アプリケーションが対応している言語のホワイトリスト(ja = 日本語, en = 英語)
    config.i18n.available_locales = %i(ja en)

    # 上記の対応言語以外の言語が指定された場合、エラーとするかの設定
    config.i18n.enforce_available_locales = true

    # デフォルトの言語設定
    # config.i18n.default_locale = :en
    config.i18n.default_locale = :ja
    
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true
    
    config.generators do |g|
        # 色々な記述があるので、一番下に追記する
        g.test_framework :rspec,
                         fixtures: true,
                         view_specs: false,
                         helper_specs: false,
                         routing_specs: false,
                         controller_specs: true,
                         request_specs: false
        g.fixture_replacement :factory_bot, dir: "spec/factories"
      end
  end
end

