# frozen_string_literal: true

class CreateBenefits < ActiveRecord::Migration[5.2]
  def change
    create_table :benefits, comment: '特別な対応' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, comment: '対応名'
      t.integer :type, null: false, comment: '対応リスト' # enum type: { kids_room: 0, kids_space: 1 ... }

      t.timestamps
    end
  end
end
