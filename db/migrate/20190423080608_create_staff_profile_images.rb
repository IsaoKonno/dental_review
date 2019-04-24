# frozen_string_literal: true

class CreateStaffProfileImages < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_images, comment: 'スタッフ紹介画像' do |t|
      t.references :staff_profiles, foreign_key: true
      t.text :image_data, null: false, comment: 'スタッフ紹介画像' # required to use gem 'shrine'

      t.timestamps
    end
  end
end
