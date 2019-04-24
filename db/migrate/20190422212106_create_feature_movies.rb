# frozen_string_literal: true

class CreateFeatureMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_movies, comment: '特徴紹介動画' do |t|
      t.references :feature, foreign_key: true
      t.text :movie_url, null: false, comment: '特徴紹介動画' # required to ude gem 'shrine'

      t.timestamps
    end
  end
end
