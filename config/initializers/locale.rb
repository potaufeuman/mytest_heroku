# I 1 8 n ライブラリに訳文の探索場所を指示する
I18n.load_path += Dir[ Rails.root.join('lib', 'locale', '*.{rb,yml}')]
# アプリケーションで利用可能なロケールをホワイトリスト化する
I18n.available_locales = [:en , :ja]
# ロケールを: e n 以外に変更する
I18n.default_locale = :ja