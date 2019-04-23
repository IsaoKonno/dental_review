# frozen_string_literal: true

class CreateStaffProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_profiles, comment: 'スタッフ' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, null: false, comment: 'スタッフ名'
      t.integer :type, null: false, comment: 'スタッフ職種' # enumerize :type, in: {director: 1, nurse: 2, assistant: 3}, default: :assistant
      t.text :profile, comment: 'プロフィール文'
      t.boolean :full_time_flag, null: false, comment: 'フルタイムフラグ'

      t.timestamps
    end
  end
end
