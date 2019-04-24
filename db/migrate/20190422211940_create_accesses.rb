# frozen_string_literal: true

class CreateAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :accesses, comment: 'アクセス' do |t|
      t.references :clinic, foreign_key: true
      t.text :description, null: false, comment: 'アクセス詳細'

      t.timestamps
    end
  end
end
