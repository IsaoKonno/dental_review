# frozen_string_literal: true

class CreateSecondOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :second_opinions, comment: 'セカンドオピニオン' do |t|
      t.references :clinic, foreign_key: true
      t.text :description, null: false, comment: 'セカンドオピニオン詳細'
      t.integer :price, comment: 'セカンドオピニオン価格'

      t.timestamps
    end
  end
end
