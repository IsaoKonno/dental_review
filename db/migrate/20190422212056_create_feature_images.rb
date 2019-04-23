# frozen_string_literal: true

class CreateFeatureImages < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_images, comment: '特徴紹介画像' do |t|
      t.references :feature, foreign_key: true
      t.text :image_data, null: false, comment: '特徴紹介画像' # required to ude gem 'shrine'

      t.timestamps
    end
  end
end
