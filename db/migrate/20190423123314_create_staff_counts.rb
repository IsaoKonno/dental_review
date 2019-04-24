# frozen_string_literal: true

class CreateStaffCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_counts, comment: 'スタッフ数' do |t|
      t.references :clinic, foreign_key: true
      t.boolean :full_time_flag, null: false, comment: 'フルタイムフラグ'
      t.float :count, comment: 'スタッフ数'

      t.timestamps
    end
  end
end

