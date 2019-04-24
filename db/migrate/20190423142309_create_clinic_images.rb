# frozen_string_literal: true

class CreateClinicImages < ActiveRecord::Migration[5.2]
  def change
    create_table :clinic_images, comment: '医院紹介写真' do |t|
      t.references :clinic, foreign_key: true
      t.text :image_data, null: false, comment: '医院紹介写真' # required to ude gem 'shrine'
      t.integer :type, null: false, comment: '撮影場所' # enumerize :type, in: {inside: 1, outside: 2}, default: :inside

      t.timestamps
    end
  end
end
