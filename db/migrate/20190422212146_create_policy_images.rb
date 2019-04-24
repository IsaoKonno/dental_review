# frozen_string_literal: true

class CreatePolicyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :policy_images, comment: 'こだわり補足画像' do |t|
      t.references :policy, foreign_key: true
      t.text :image_data, null: false, comment: 'こだわり補足画像' # required to ude gem 'shrine'
      t.timestamps
    end
  end
end
