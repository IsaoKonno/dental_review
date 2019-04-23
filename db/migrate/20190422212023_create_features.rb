# frozen_string_literal: true

class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features, comment: '医院の特徴' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, null: false, comment: '特徴名'
      t.text :description, null: false, comment: '特徴詳細'

      t.timestamps
    end
  end
end
