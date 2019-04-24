# frozen_string_literal: true

class CreatePolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :policies, comment: '医院のこだわり' do |t|
      t.references :clinic, foreign_key: true
      t.string :name, null: false, comment: 'こだわり名'
      t.text :description, null: false, comment: 'こだわり詳細'

      t.timestamps
    end
  end
end
