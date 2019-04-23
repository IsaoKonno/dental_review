# frozen_string_literal: true

class CreateSpecialCloses < ActiveRecord::Migration[5.2]
  def change
    create_table :special_closes, comment: '特別休診日' do |t|
      t.references :clinic, foreign_key: true
      t.text :description, comment: '特別休診日詳細'

      t.timestamps
    end
  end
end
