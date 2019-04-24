# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.5'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'enumerize'
gem 'jquery-rails'
gem 'bootstrap'
gem 'toastr-rails'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'geocoder'
gem 'gmaps4rails'
gem 'sqlite3', '~> 1.3.6'
# ユーザー認証
gem 'devise'
# 開発データ投入
gem 'seed-fu'
# 画像アップロード
gem "shrine", "~> 2.11"
gem "aws-sdk-s3", "~> 1.2"
gem 'image_processing'
gem 'sucker_punch'

# スクレイピング
gem 'nokogiri'
gem 'mechanize'

# slack通知
gem 'slack-notifier'

# settings
gem 'config'

# view端末対応
gem 'browser'

group :development, :test do
  # 開発便利系
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'binding_of_caller'
  gem 'awesome_print'
  # 出力結果を表として出力するgem
  gem 'hirb'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  # lint
  gem 'rubocop', '~> 0.65.0', require: false
  # メール確認
  gem 'letter_opener_web', '~> 1.0'
  # dockerでのdebug用に追加する
  gem 'ruby-debug-ide'
  gem 'debase'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
