# frozen_string_literal: true

class CreateAppealIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :appeal_icons, comment: 'アピールアイコン' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, null: false, comment: '名前'
      t.integer :type, null: false, comment: '種類' # enumerize :type, in: {immediate: 1, weekend: 2, late: 3}, default: :immediate

      t.timestamps
    end
  end
end
