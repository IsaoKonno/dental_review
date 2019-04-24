# frozen_string_literal: true

class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings, comment: '駐車場' do |t|
      t.references :clinic, foreign_key: true
      t.boolean :free_flag, null: false, comment: '無料フラグ'
      t.integer :capacity, null: false, comment: '駐車可能台数'

      t.timestamps
    end
  end
end
