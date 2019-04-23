# frozen_string_literal: true

class CreateSpecialCares < ActiveRecord::Migration[5.2]
  def change
    create_table :special_cares, comment: '特定開院情報' do |t|
      t.references :clinic, foreign_key: true
      t.text :operate_time, null: false, comment: '特別開院時間'

      t.timestamps
    end
  end
end
