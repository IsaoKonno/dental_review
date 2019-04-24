# frozen_string_literal: true

class CreateAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :accesses, comment: 'アクセス' do |t|
      t.references :clinic, foreign_key: true
      t.string :station, null: false, comment: '駅'
      t.string :from_station, null: false, comment: '駅からのアクセス'
      t.boolean :closest_flag, null: false, comment: '最寄りフラグ'
      t.boolean :primary_flag, null: false, comment: 'TOP表示優先度フラグ'
      t.integer :base_access_id, comment: '基になるアクセスID'

      t.timestamps
    end
  end
end
