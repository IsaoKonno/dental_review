# frozen_string_literal: true

class CreateBrandNames < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_names, comment: 'ブランド名（サービス名）' do |t|
      t.references :payment_option, foreign_key: true
      t.string :name, null: false, comment: 'ブランド名（サービス名）'

      t.timestamps
    end
  end
end
