# frozen_string_literal: true

class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures, comment: '県' do |t|
      t.string :name, null: false, comment: '県名'

      t.timestamps
    end
  end
end
